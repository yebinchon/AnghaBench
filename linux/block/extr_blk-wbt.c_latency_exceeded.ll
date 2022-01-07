; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_latency_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_latency_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i64, i64, %struct.rq_depth, %struct.TYPE_4__ }
%struct.rq_depth = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }
%struct.blk_rq_stat = type { i64, i64 }

@READ = common dso_local global i64 0, align 8
@LAT_EXCEEDED = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@LAT_UNKNOWN_WRITES = common dso_local global i32 0, align 4
@LAT_UNKNOWN = common dso_local global i32 0, align 4
@LAT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq_wb*, %struct.blk_rq_stat*)* @latency_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latency_exceeded(%struct.rq_wb* %0, %struct.blk_rq_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca %struct.blk_rq_stat*, align 8
  %6 = alloca %struct.backing_dev_info*, align 8
  %7 = alloca %struct.rq_depth*, align 8
  %8 = alloca i64, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store %struct.blk_rq_stat* %1, %struct.blk_rq_stat** %5, align 8
  %9 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %10 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %13, align 8
  store %struct.backing_dev_info* %14, %struct.backing_dev_info** %6, align 8
  %15 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %16 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %15, i32 0, i32 2
  store %struct.rq_depth* %16, %struct.rq_depth** %7, align 8
  %17 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %18 = call i64 @rwb_sync_issue_lat(%struct.rq_wb* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %21 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %27 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %32 = load i64, i64* @READ, align 8
  %33 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %31, i64 %32
  %34 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30, %2
  %38 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @trace_wbt_lat(%struct.backing_dev_info* %38, i64 %39)
  %41 = load i32, i32* @LAT_EXCEEDED, align 4
  store i32 %41, i32* %3, align 4
  br label %98

42:                                               ; preds = %30, %24
  %43 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %44 = call i32 @stat_sample_valid(%struct.blk_rq_stat* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %42
  %47 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %48 = load i64, i64* @WRITE, align 8
  %49 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %47, i64 %48
  %50 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %55 = call i64 @wb_recent_wait(%struct.rq_wb* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %59 = call i64 @wbt_inflight(%struct.rq_wb* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53, %46
  %62 = load i32, i32* @LAT_UNKNOWN_WRITES, align 4
  store i32 %62, i32* %3, align 4
  br label %98

63:                                               ; preds = %57
  %64 = load i32, i32* @LAT_UNKNOWN, align 4
  store i32 %64, i32* %3, align 4
  br label %98

65:                                               ; preds = %42
  %66 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %67 = load i64, i64* @READ, align 8
  %68 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %66, i64 %67
  %69 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %72 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %65
  %76 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %77 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %78 = load i64, i64* @READ, align 8
  %79 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %77, i64 %78
  %80 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @trace_wbt_lat(%struct.backing_dev_info* %76, i64 %81)
  %83 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %84 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %85 = call i32 @trace_wbt_stat(%struct.backing_dev_info* %83, %struct.blk_rq_stat* %84)
  %86 = load i32, i32* @LAT_EXCEEDED, align 4
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %65
  %88 = load %struct.rq_depth*, %struct.rq_depth** %7, align 8
  %89 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.backing_dev_info*, %struct.backing_dev_info** %6, align 8
  %94 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %5, align 8
  %95 = call i32 @trace_wbt_stat(%struct.backing_dev_info* %93, %struct.blk_rq_stat* %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* @LAT_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %75, %63, %61, %37
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @rwb_sync_issue_lat(%struct.rq_wb*) #1

declare dso_local i32 @trace_wbt_lat(%struct.backing_dev_info*, i64) #1

declare dso_local i32 @stat_sample_valid(%struct.blk_rq_stat*) #1

declare dso_local i64 @wb_recent_wait(%struct.rq_wb*) #1

declare dso_local i64 @wbt_inflight(%struct.rq_wb*) #1

declare dso_local i32 @trace_wbt_stat(%struct.backing_dev_info*, %struct.blk_rq_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
