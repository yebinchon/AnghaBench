; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_peel_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_peel_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object = type { i64, i32 }

@OBJ_NONE = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4
@PEEL_INVALID = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@PEEL_NON_TAG = common dso_local global i32 0, align 4
@PEEL_PEELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peel_object(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = call %struct.object* @lookup_unknown_object(%struct.object_id* %8)
  store %struct.object* %9, %struct.object** %6, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = getelementptr inbounds %struct.object, %struct.object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OBJ_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @the_repository, align 4
  %17 = load %struct.object_id*, %struct.object_id** %4, align 8
  %18 = call i32 @oid_object_info(i32 %16, %struct.object_id* %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @the_repository, align 4
  %23 = load %struct.object*, %struct.object** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @object_as_type(i32 %22, %struct.object* %23, i32 %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @PEEL_INVALID, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.object*, %struct.object** %6, align 8
  %32 = getelementptr inbounds %struct.object, %struct.object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJ_TAG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @PEEL_NON_TAG, align 4
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %30
  %39 = load %struct.object*, %struct.object** %6, align 8
  %40 = call %struct.object* @deref_tag_noverify(%struct.object* %39)
  store %struct.object* %40, %struct.object** %6, align 8
  %41 = load %struct.object*, %struct.object** %6, align 8
  %42 = icmp ne %struct.object* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @PEEL_INVALID, align 4
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %38
  %46 = load %struct.object_id*, %struct.object_id** %5, align 8
  %47 = load %struct.object*, %struct.object** %6, align 8
  %48 = getelementptr inbounds %struct.object, %struct.object* %47, i32 0, i32 1
  %49 = call i32 @oidcpy(%struct.object_id* %46, i32* %48)
  %50 = load i32, i32* @PEEL_PEELED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %43, %36, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.object* @lookup_unknown_object(%struct.object_id*) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @object_as_type(i32, %struct.object*, i32, i32) #1

declare dso_local %struct.object* @deref_tag_noverify(%struct.object*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
