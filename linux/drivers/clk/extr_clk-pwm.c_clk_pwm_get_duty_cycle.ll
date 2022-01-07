; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-pwm.c_clk_pwm_get_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-pwm.c_clk_pwm_get_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_duty = type { i32, i32 }
%struct.clk_pwm = type { i32 }
%struct.pwm_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_duty*)* @clk_pwm_get_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pwm_get_duty_cycle(%struct.clk_hw* %0, %struct.clk_duty* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_duty*, align 8
  %5 = alloca %struct.clk_pwm*, align 8
  %6 = alloca %struct.pwm_state, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_duty* %1, %struct.clk_duty** %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_pwm* @to_clk_pwm(%struct.clk_hw* %7)
  store %struct.clk_pwm* %8, %struct.clk_pwm** %5, align 8
  %9 = load %struct.clk_pwm*, %struct.clk_pwm** %5, align 8
  %10 = getelementptr inbounds %struct.clk_pwm, %struct.clk_pwm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pwm_get_state(i32 %11, %struct.pwm_state* %6)
  %13 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %16 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %20 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local %struct.clk_pwm* @to_clk_pwm(%struct.clk_hw*) #1

declare dso_local i32 @pwm_get_state(i32, %struct.pwm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
