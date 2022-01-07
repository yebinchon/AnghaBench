; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_auto_thp_switch.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_base.c_base_auto_thp_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32 }

@opt_metadata_thp = common dso_local global i64 0, align 8
@metadata_thp_auto = common dso_local global i64 0, align 8
@BASE_AUTO_THP_THRESHOLD = common dso_local global i64 0, align 8
@BASE_AUTO_THP_THRESHOLD_A0 = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@HUGEPAGE_MASK = common dso_local global i32 0, align 4
@LG_HUGEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @base_auto_thp_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_auto_thp_switch(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load i64, i64* @opt_metadata_thp, align 8
  %8 = load i64, i64* @metadata_thp_auto, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = call i32 @malloc_mutex_assert_owner(i32* %12, i32* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = call i64 @base_ind_get(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i64 @base_get_num_blocks(%struct.TYPE_7__* %26, i32 1)
  %28 = load i64, i64* @BASE_AUTO_THP_THRESHOLD, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i64 @base_get_num_blocks(%struct.TYPE_7__* %32, i32 1)
  %34 = load i64, i64* @BASE_AUTO_THP_THRESHOLD_A0, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %108

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i64, i64* @config_stats, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %6, align 8
  br label %58

58:                                               ; preds = %104, %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %108

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HUGEPAGE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pages_huge(%struct.TYPE_8__* %70, i32 %73)
  %75 = load i64, i64* @config_stats, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %61
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = call i64 @extent_bsize_get(i32* %83)
  %85 = sub nsw i64 %81, %84
  %86 = call i32 @HUGEPAGE_CEILING(i64 %85)
  %87 = load i32, i32* @LG_HUGEPAGE, align 4
  %88 = ashr i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %77, %61
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %6, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = icmp eq %struct.TYPE_8__* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = call i64 @base_ind_get(%struct.TYPE_7__* %101)
  %103 = icmp eq i64 %102, 0
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i1 [ true, %94 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %58

108:                                              ; preds = %20, %40, %58
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i64 @base_ind_get(%struct.TYPE_7__*) #1

declare dso_local i64 @base_get_num_blocks(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pages_huge(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @HUGEPAGE_CEILING(i64) #1

declare dso_local i64 @extent_bsize_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
