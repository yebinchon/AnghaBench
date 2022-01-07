; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_scale_up.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_scale_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"scale up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*)* @scale_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_up(%struct.rq_wb* %0) #0 {
  %2 = alloca %struct.rq_wb*, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %2, align 8
  %3 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %4 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %3, i32 0, i32 1
  %5 = call i32 @rq_depth_scale_up(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  %9 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %10 = call i32 @calc_wb_limits(%struct.rq_wb* %9)
  %11 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %12 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %14 = call i32 @rwb_wake_all(%struct.rq_wb* %13)
  %15 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %16 = call i32 @rwb_trace_step(%struct.rq_wb* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @rq_depth_scale_up(i32*) #1

declare dso_local i32 @calc_wb_limits(%struct.rq_wb*) #1

declare dso_local i32 @rwb_wake_all(%struct.rq_wb*) #1

declare dso_local i32 @rwb_trace_step(%struct.rq_wb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
