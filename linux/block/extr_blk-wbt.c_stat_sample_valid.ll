; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_stat_sample_valid.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_stat_sample_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_rq_stat = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@RWB_MIN_WRITE_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_rq_stat*)* @stat_sample_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_sample_valid(%struct.blk_rq_stat* %0) #0 {
  %2 = alloca %struct.blk_rq_stat*, align 8
  store %struct.blk_rq_stat* %0, %struct.blk_rq_stat** %2, align 8
  %3 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %2, align 8
  %4 = load i64, i64* @READ, align 8
  %5 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %3, i64 %4
  %6 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.blk_rq_stat*, %struct.blk_rq_stat** %2, align 8
  %11 = load i64, i64* @WRITE, align 8
  %12 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %10, i64 %11
  %13 = getelementptr inbounds %struct.blk_rq_stat, %struct.blk_rq_stat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RWB_MIN_WRITE_SAMPLES, align 4
  %16 = icmp sge i32 %14, %15
  br label %17

17:                                               ; preds = %9, %1
  %18 = phi i1 [ false, %1 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
