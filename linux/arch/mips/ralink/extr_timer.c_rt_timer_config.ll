; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_timer = type { i64, i64 }

@TIMER_REG_TMR0LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_timer*, i64)* @rt_timer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_timer_config(%struct.rt_timer* %0, i64 %1) #0 {
  %3 = alloca %struct.rt_timer*, align 8
  %4 = alloca i64, align 8
  store %struct.rt_timer* %0, %struct.rt_timer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %6 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %12 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %15 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %19 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %10
  %21 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %22 = load i32, i32* @TIMER_REG_TMR0LOAD, align 4
  %23 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %24 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rt_timer*, %struct.rt_timer** %3, align 8
  %27 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = udiv i64 %25, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @rt_timer_w32(%struct.rt_timer* %21, i32 %22, i32 %30)
  ret i32 0
}

declare dso_local i32 @rt_timer_w32(%struct.rt_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
