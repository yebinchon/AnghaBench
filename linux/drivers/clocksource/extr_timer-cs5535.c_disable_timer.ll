; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cs5535.c_disable_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cs5535.c_disable_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_timer = type { i32 }

@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_CNTEN = common dso_local global i64 0, align 8
@MFGPT_SETUP_CMP1 = common dso_local global i32 0, align 4
@MFGPT_SETUP_CMP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs5535_mfgpt_timer*)* @disable_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_timer(%struct.cs5535_mfgpt_timer* %0) #0 {
  %2 = alloca %struct.cs5535_mfgpt_timer*, align 8
  store %struct.cs5535_mfgpt_timer* %0, %struct.cs5535_mfgpt_timer** %2, align 8
  %3 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %2, align 8
  %4 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %5 = load i64, i64* @MFGPT_SETUP_CNTEN, align 8
  %6 = xor i64 %5, -1
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @MFGPT_SETUP_CMP1, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MFGPT_SETUP_CMP2, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cs5535_mfgpt_write(%struct.cs5535_mfgpt_timer* %3, i32 %4, i32 %11)
  ret void
}

declare dso_local i32 @cs5535_mfgpt_write(%struct.cs5535_mfgpt_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
