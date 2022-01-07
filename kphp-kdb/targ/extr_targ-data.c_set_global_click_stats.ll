; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_global_click_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_set_global_click_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lev_targ_global_click_stats = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@MAX_AD_VIEWS = common dso_local global i32 0, align 4
@AdStats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_targ_global_click_stats*)* @set_global_click_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_global_click_stats(%struct.lev_targ_global_click_stats* %0) #0 {
  %2 = alloca %struct.lev_targ_global_click_stats*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.lev_targ_global_click_stats* %0, %struct.lev_targ_global_click_stats** %2, align 8
  %7 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %8 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAX_AD_VIEWS, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %100, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MAX_AD_VIEWS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %103

19:                                               ; preds = %15
  %20 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %21 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %19
  %30 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %31 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %29
  %40 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %41 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %49 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %47, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %39
  %58 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %59 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 1000000000000000
  br label %67

67:                                               ; preds = %57, %39, %29, %19
  %68 = phi i1 [ true, %39 ], [ true, %29 ], [ true, %19 ], [ %66, %57 ]
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %76 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %5, align 8
  %85 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %86 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp sle i64 %95, 1000000000000000
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %99

99:                                               ; preds = %74, %67
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %15

103:                                              ; preds = %15
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %106 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %104, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %103
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %115 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %113, %119
  br label %121

121:                                              ; preds = %112, %103
  %122 = phi i1 [ false, %103 ], [ %120, %112 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @AdStats, i32 0, i32 0), align 4
  %126 = load %struct.lev_targ_global_click_stats*, %struct.lev_targ_global_click_stats** %2, align 8
  %127 = getelementptr inbounds %struct.lev_targ_global_click_stats, %struct.lev_targ_global_click_stats* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* @MAX_AD_VIEWS, align 4
  %130 = mul nsw i32 16, %129
  %131 = call i32 @memcpy(i32 %125, %struct.TYPE_3__* %128, i32 %130)
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
