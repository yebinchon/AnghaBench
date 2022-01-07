; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_scale_down.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_scale_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"scale down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*, i32)* @scale_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_down(%struct.rq_wb* %0, i32 %1) #0 {
  %3 = alloca %struct.rq_wb*, align 8
  %4 = alloca i32, align 4
  store %struct.rq_wb* %0, %struct.rq_wb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %6 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @rq_depth_scale_down(i32* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %13 = call i32 @calc_wb_limits(%struct.rq_wb* %12)
  %14 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %15 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %17 = call i32 @rwb_trace_step(%struct.rq_wb* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @rq_depth_scale_down(i32*, i32) #1

declare dso_local i32 @calc_wb_limits(%struct.rq_wb*) #1

declare dso_local i32 @rwb_trace_step(%struct.rq_wb*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
