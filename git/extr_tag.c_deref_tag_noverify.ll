; ModuleID = '/home/carl/AnghaBench/git/extr_tag.c_deref_tag_noverify.c'
source_filename = "/home/carl/AnghaBench/git/extr_tag.c_deref_tag_noverify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64, i32 }
%struct.tag = type { %struct.object* }

@OBJ_TAG = common dso_local global i64 0, align 8
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @deref_tag_noverify(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  br label %3

3:                                                ; preds = %39, %1
  %4 = load %struct.object*, %struct.object** %2, align 8
  %5 = icmp ne %struct.object* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load %struct.object*, %struct.object** %2, align 8
  %8 = getelementptr inbounds %struct.object, %struct.object* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OBJ_TAG, align 8
  %11 = icmp eq i64 %9, %10
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i1 [ false, %3 ], [ %11, %6 ]
  br i1 %13, label %14, label %40

14:                                               ; preds = %12
  %15 = load i32, i32* @the_repository, align 4
  %16 = load %struct.object*, %struct.object** %2, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 1
  %18 = call %struct.object* @parse_object(i32 %15, i32* %17)
  store %struct.object* %18, %struct.object** %2, align 8
  %19 = load %struct.object*, %struct.object** %2, align 8
  %20 = icmp ne %struct.object* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.object*, %struct.object** %2, align 8
  %23 = getelementptr inbounds %struct.object, %struct.object* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OBJ_TAG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.object*, %struct.object** %2, align 8
  %29 = bitcast %struct.object* %28 to %struct.tag*
  %30 = getelementptr inbounds %struct.tag, %struct.tag* %29, i32 0, i32 0
  %31 = load %struct.object*, %struct.object** %30, align 8
  %32 = icmp ne %struct.object* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.object*, %struct.object** %2, align 8
  %35 = bitcast %struct.object* %34 to %struct.tag*
  %36 = getelementptr inbounds %struct.tag, %struct.tag* %35, i32 0, i32 0
  %37 = load %struct.object*, %struct.object** %36, align 8
  store %struct.object* %37, %struct.object** %2, align 8
  br label %39

38:                                               ; preds = %27, %21, %14
  store %struct.object* null, %struct.object** %2, align 8
  br label %39

39:                                               ; preds = %38, %33
  br label %3

40:                                               ; preds = %12
  %41 = load %struct.object*, %struct.object** %2, align 8
  ret %struct.object* %41
}

declare dso_local %struct.object* @parse_object(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
