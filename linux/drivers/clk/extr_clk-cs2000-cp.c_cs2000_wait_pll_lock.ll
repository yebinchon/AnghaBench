; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_wait_pll_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_wait_pll_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }
%struct.device = type { i32 }

@DEVICE_CTRL = common dso_local global i32 0, align 4
@PLL_UNLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pll lock failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*)* @cs2000_wait_pll_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_wait_pll_lock(%struct.cs2000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs2000_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %3, align 8
  %7 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %8 = call %struct.device* @priv_to_dev(%struct.cs2000_priv* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 256
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.cs2000_priv*, %struct.cs2000_priv** %3, align 8
  %14 = load i32, i32* @DEVICE_CTRL, align 4
  %15 = call i32 @cs2000_read(%struct.cs2000_priv* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PLL_UNLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

26:                                               ; preds = %20
  %27 = call i32 @udelay(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %25, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.device* @priv_to_dev(%struct.cs2000_priv*) #1

declare dso_local i32 @cs2000_read(%struct.cs2000_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
