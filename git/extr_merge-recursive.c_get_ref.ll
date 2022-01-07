; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_get_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_get_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.tree = type { i32 }

@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (%struct.repository*, %struct.object_id*, i8*)* @get_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @get_ref(%struct.repository* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.repository*, %struct.repository** %5, align 8
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i32 @parse_object(%struct.repository* %10, %struct.object_id* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call %struct.object* @deref_tag(%struct.repository* %9, i32 %12, i8* %13, i32 %15)
  store %struct.object* %16, %struct.object** %8, align 8
  %17 = load %struct.object*, %struct.object** %8, align 8
  %18 = icmp ne %struct.object* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.object*, %struct.object** %8, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBJ_TREE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.repository*, %struct.repository** %5, align 8
  %28 = load %struct.object*, %struct.object** %8, align 8
  %29 = bitcast %struct.object* %28 to %struct.tree*
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.commit* @make_virtual_commit(%struct.repository* %27, %struct.tree* %29, i8* %30)
  store %struct.commit* %31, %struct.commit** %4, align 8
  br label %48

32:                                               ; preds = %20
  %33 = load %struct.object*, %struct.object** %8, align 8
  %34 = getelementptr inbounds %struct.object, %struct.object* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OBJ_COMMIT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %48

39:                                               ; preds = %32
  %40 = load %struct.object*, %struct.object** %8, align 8
  %41 = bitcast %struct.object* %40 to %struct.commit*
  %42 = call i64 @parse_commit(%struct.commit* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %48

45:                                               ; preds = %39
  %46 = load %struct.object*, %struct.object** %8, align 8
  %47 = bitcast %struct.object* %46 to %struct.commit*
  store %struct.commit* %47, %struct.commit** %4, align 8
  br label %48

48:                                               ; preds = %45, %44, %38, %26, %19
  %49 = load %struct.commit*, %struct.commit** %4, align 8
  ret %struct.commit* %49
}

declare dso_local %struct.object* @deref_tag(%struct.repository*, i32, i8*, i32) #1

declare dso_local i32 @parse_object(%struct.repository*, %struct.object_id*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.commit* @make_virtual_commit(%struct.repository*, %struct.tree*, i8*) #1

declare dso_local i64 @parse_commit(%struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
