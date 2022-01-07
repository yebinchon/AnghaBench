; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wb_recent_wait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wb_recent_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bdi_writeback }
%struct.bdi_writeback = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq_wb*)* @wb_recent_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_recent_wait(%struct.rq_wb* %0) #0 {
  %2 = alloca %struct.rq_wb*, align 8
  %3 = alloca %struct.bdi_writeback*, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %2, align 8
  %4 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %5 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.bdi_writeback* %10, %struct.bdi_writeback** %3, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %13 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @time_before(i32 %11, i64 %16)
  ret i32 %17
}

declare dso_local i32 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
