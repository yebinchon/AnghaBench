; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_trace_step.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_trace_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32, i32, i32, %struct.rq_depth, %struct.TYPE_4__ }
%struct.rq_depth = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.backing_dev_info* }
%struct.backing_dev_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*, i8*)* @rwb_trace_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwb_trace_step(%struct.rq_wb* %0, i8* %1) #0 {
  %3 = alloca %struct.rq_wb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.backing_dev_info*, align 8
  %6 = alloca %struct.rq_depth*, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %8 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.backing_dev_info*, %struct.backing_dev_info** %11, align 8
  store %struct.backing_dev_info* %12, %struct.backing_dev_info** %5, align 8
  %13 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %14 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %13, i32 0, i32 3
  store %struct.rq_depth* %14, %struct.rq_depth** %6, align 8
  %15 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.rq_depth*, %struct.rq_depth** %6, align 8
  %18 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %21 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %24 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %27 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rq_depth*, %struct.rq_depth** %6, align 8
  %30 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trace_wbt_step(%struct.backing_dev_info* %15, i8* %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @trace_wbt_step(%struct.backing_dev_info*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
