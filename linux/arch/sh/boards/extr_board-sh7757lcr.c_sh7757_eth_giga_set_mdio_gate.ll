; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-sh7757lcr.c_sh7757_eth_giga_set_mdio_gate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/extr_board-sh7757lcr.c_sh7757_eth_giga_set_mdio_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PTT4 = common dso_local global i32 0, align 4
@GBECONT = common dso_local global i32 0, align 4
@GBECONT_RMII0 = common dso_local global i32 0, align 4
@GBECONT_RMII1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh7757_eth_giga_set_mdio_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7757_eth_giga_set_mdio_gate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = and i64 %4, 4095
  %6 = icmp ult i64 %5, 2048
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @GPIO_PTT4, align 4
  %9 = call i32 @gpio_set_value(i32 %8, i32 1)
  %10 = load i32, i32* @GBECONT, align 4
  %11 = call i32 @readl(i32 %10)
  %12 = load i32, i32* @GBECONT_RMII0, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* @GBECONT, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @GPIO_PTT4, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  %20 = load i32, i32* @GBECONT, align 4
  %21 = call i32 @readl(i32 %20)
  %22 = load i32, i32* @GBECONT_RMII1, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load i32, i32* @GBECONT, align 4
  %26 = call i32 @writel(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
