; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_request.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_timer = type { i32, i32 }

@rt_timer_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@TMR0CTL_MODE_PERIODIC = common dso_local global i32 0, align 4
@TMR0CTL_PRESCALE_VAL = common dso_local global i32 0, align 4
@TIMER_REG_TMR0CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_timer*)* @rt_timer_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_timer_request(%struct.rt_timer* %0) #0 {
  %2 = alloca %struct.rt_timer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt_timer* %0, %struct.rt_timer** %2, align 8
  %5 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %6 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @rt_timer_irq, align 4
  %9 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %10 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_name(i32 %11)
  %13 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %14 = call i32 @request_irq(i32 %7, i32 %8, i32 0, i32 %12, %struct.rt_timer* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %19 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @TMR0CTL_MODE_PERIODIC, align 4
  %24 = load i32, i32* @TMR0CTL_PRESCALE_VAL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %27 = load i32, i32* @TIMER_REG_TMR0CTL, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rt_timer_w32(%struct.rt_timer* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rt_timer*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rt_timer_w32(%struct.rt_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
