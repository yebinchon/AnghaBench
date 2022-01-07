; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_board.c_switch_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/image/lzma-loader/src/extr_board.c_switch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWITCH_REG_PORT_CONF0 = common dso_local global i32 0, align 4
@SWITCH_PORTS_HW = common dso_local global i32 0, align 4
@PORT_CONF0_DP_SHIFT = common dso_local global i32 0, align 4
@SWITCH_REG_CPUP_CONF = common dso_local global i32 0, align 4
@CPUP_CONF_DCPUP = common dso_local global i32 0, align 4
@SWITCH_REG_GPIO_CONF0 = common dso_local global i32 0, align 4
@SWITCH_REG_GPIO_CONF2 = common dso_local global i32 0, align 4
@SWITCH_REG_PORT0_LED = common dso_local global i32 0, align 4
@SWITCH_REG_PORT1_LED = common dso_local global i32 0, align 4
@SWITCH_REG_PORT2_LED = common dso_local global i32 0, align 4
@SWITCH_REG_PORT3_LED = common dso_local global i32 0, align 4
@SWITCH_REG_PORT4_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @switch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_init() #0 {
  %1 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %2 = load i32, i32* @SWITCH_PORTS_HW, align 4
  %3 = load i32, i32* @PORT_CONF0_DP_SHIFT, align 4
  %4 = shl i32 %2, %3
  %5 = call i32 @SWITCH_WRITE(i32 %1, i32 %4)
  %6 = load i32, i32* @SWITCH_REG_CPUP_CONF, align 4
  %7 = load i32, i32* @CPUP_CONF_DCPUP, align 4
  %8 = call i32 @SWITCH_WRITE(i32 %6, i32 %7)
  %9 = load i32, i32* @SWITCH_REG_GPIO_CONF0, align 4
  %10 = call i32 @SWITCH_WRITE(i32 %9, i32 0)
  %11 = load i32, i32* @SWITCH_REG_GPIO_CONF2, align 4
  %12 = call i32 @SWITCH_WRITE(i32 %11, i32 0)
  %13 = load i32, i32* @SWITCH_REG_PORT0_LED, align 4
  %14 = call i32 @SWITCH_WRITE(i32 %13, i32 0)
  %15 = load i32, i32* @SWITCH_REG_PORT1_LED, align 4
  %16 = call i32 @SWITCH_WRITE(i32 %15, i32 0)
  %17 = load i32, i32* @SWITCH_REG_PORT2_LED, align 4
  %18 = call i32 @SWITCH_WRITE(i32 %17, i32 0)
  %19 = load i32, i32* @SWITCH_REG_PORT3_LED, align 4
  %20 = call i32 @SWITCH_WRITE(i32 %19, i32 0)
  %21 = load i32, i32* @SWITCH_REG_PORT4_LED, align 4
  %22 = call i32 @SWITCH_WRITE(i32 %21, i32 0)
  ret void
}

declare dso_local i32 @SWITCH_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
