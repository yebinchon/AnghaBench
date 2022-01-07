; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_mark_remote_island_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_mark_remote_island_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.remote_island = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.island_bitmap = type { i32 }
%struct.object = type { i64, i32, i32 }
%struct.tag = type { %struct.object* }

@island_counter = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@NEEDS_BITMAP = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i64 0, align 8
@island_counter_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.remote_island*, i32)* @mark_remote_island_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_remote_island_1(%struct.repository* %0, %struct.remote_island* %1, i32 %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.remote_island*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.island_bitmap*, align 8
  %9 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.remote_island* %1, %struct.remote_island** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %80, %3
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.remote_island*, %struct.remote_island** %5, align 8
  %13 = getelementptr inbounds %struct.remote_island, %struct.remote_island* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %10
  %18 = load %struct.repository*, %struct.repository** %4, align 8
  %19 = load %struct.remote_island*, %struct.remote_island** %5, align 8
  %20 = getelementptr inbounds %struct.remote_island, %struct.remote_island* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call %struct.object* @parse_object(%struct.repository* %18, i32* %24)
  store %struct.object* %25, %struct.object** %9, align 8
  %26 = load %struct.object*, %struct.object** %9, align 8
  %27 = icmp ne %struct.object* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %80

29:                                               ; preds = %17
  %30 = load %struct.object*, %struct.object** %9, align 8
  %31 = call %struct.island_bitmap* @create_or_get_island_marks(%struct.object* %30)
  store %struct.island_bitmap* %31, %struct.island_bitmap** %8, align 8
  %32 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %33 = load i32, i32* @island_counter, align 4
  %34 = call i32 @island_bitmap_set(%struct.island_bitmap* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.object*, %struct.object** %9, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBJ_COMMIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @NEEDS_BITMAP, align 4
  %45 = load %struct.object*, %struct.object** %9, align 8
  %46 = getelementptr inbounds %struct.object, %struct.object* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %37, %29
  br label %50

50:                                               ; preds = %78, %49
  %51 = load %struct.object*, %struct.object** %9, align 8
  %52 = icmp ne %struct.object* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.object*, %struct.object** %9, align 8
  %55 = getelementptr inbounds %struct.object, %struct.object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OBJ_TAG, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %61, label %79

61:                                               ; preds = %59
  %62 = load %struct.object*, %struct.object** %9, align 8
  %63 = bitcast %struct.object* %62 to %struct.tag*
  %64 = getelementptr inbounds %struct.tag, %struct.tag* %63, i32 0, i32 0
  %65 = load %struct.object*, %struct.object** %64, align 8
  store %struct.object* %65, %struct.object** %9, align 8
  %66 = load %struct.object*, %struct.object** %9, align 8
  %67 = icmp ne %struct.object* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.repository*, %struct.repository** %4, align 8
  %70 = load %struct.object*, %struct.object** %9, align 8
  %71 = getelementptr inbounds %struct.object, %struct.object* %70, i32 0, i32 1
  %72 = call %struct.object* @parse_object(%struct.repository* %69, i32* %71)
  %73 = load %struct.object*, %struct.object** %9, align 8
  %74 = call %struct.island_bitmap* @create_or_get_island_marks(%struct.object* %73)
  store %struct.island_bitmap* %74, %struct.island_bitmap** %8, align 8
  %75 = load %struct.island_bitmap*, %struct.island_bitmap** %8, align 8
  %76 = load i32, i32* @island_counter, align 4
  %77 = call i32 @island_bitmap_set(%struct.island_bitmap* %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %61
  br label %50

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %10

83:                                               ; preds = %10
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @island_counter, align 4
  store i32 %87, i32* @island_counter_core, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* @island_counter, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @island_counter, align 4
  ret void
}

declare dso_local %struct.object* @parse_object(%struct.repository*, i32*) #1

declare dso_local %struct.island_bitmap* @create_or_get_island_marks(%struct.object*) #1

declare dso_local i32 @island_bitmap_set(%struct.island_bitmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
