; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_intel_mid_pwr_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_pwr.c_intel_mid_pwr_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mid_pwr = type { i64 }

@midpwr = common dso_local global %struct.mid_pwr* null, align 8
@PM_CMD_SYS_STATE_S5 = common dso_local global i32 0, align 4
@CMD_SET_CFG = common dso_local global i32 0, align 4
@PM_CMD_CM_TRIGGER = common dso_local global i32 0, align 4
@PM_CMD_CFG_TRIGGER_NC = common dso_local global i32 0, align 4
@TRIGGER_NC_MSG_2 = common dso_local global i32 0, align 4
@PM_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_mid_pwr_power_off() #0 {
  %1 = alloca %struct.mid_pwr*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.mid_pwr*, %struct.mid_pwr** @midpwr, align 8
  store %struct.mid_pwr* %3, %struct.mid_pwr** %1, align 8
  %4 = load i32, i32* @PM_CMD_SYS_STATE_S5, align 4
  %5 = load i32, i32* @CMD_SET_CFG, align 4
  %6 = call i32 @PM_CMD_CMD(i32 %5)
  %7 = or i32 %4, %6
  %8 = load i32, i32* @PM_CMD_CM_TRIGGER, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PM_CMD_CFG_TRIGGER_NC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TRIGGER_NC_MSG_2, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.mid_pwr*, %struct.mid_pwr** %1, align 8
  %16 = getelementptr inbounds %struct.mid_pwr, %struct.mid_pwr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PM_CMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.mid_pwr*, %struct.mid_pwr** %1, align 8
  %22 = call i32 @mid_pwr_wait(%struct.mid_pwr* %21)
  ret void
}

declare dso_local i32 @PM_CMD_CMD(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mid_pwr_wait(%struct.mid_pwr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
