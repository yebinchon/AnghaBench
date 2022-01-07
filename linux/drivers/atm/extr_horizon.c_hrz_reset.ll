; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_hrz_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTROL_0_REG = common dso_local global i32 0, align 4
@RESET_HORIZON = common dso_local global i32 0, align 4
@RESET_ATM = common dso_local global i32 0, align 4
@RESET_RX = common dso_local global i32 0, align 4
@RESET_TX = common dso_local global i32 0, align 4
@RESET_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @hrz_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrz_reset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CONTROL_0_REG, align 4
  %6 = call i32 @rd_regl(i32* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @RESET_HORIZON, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CONTROL_0_REG, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @wr_regl(i32* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %19, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @RESET_HORIZON, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @CONTROL_0_REG, align 4
  %22 = call i32 @rd_regl(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %14

23:                                               ; preds = %14
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @CONTROL_0_REG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RESET_ATM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RESET_RX, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RESET_TX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RESET_HOST, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @wr_regl(i32* %24, i32 %25, i32 %34)
  %36 = call i32 @udelay(i32 1000)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @CONTROL_0_REG, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @wr_regl(i32* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @rd_regl(i32*, i32) #1

declare dso_local i32 @wr_regl(i32*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
