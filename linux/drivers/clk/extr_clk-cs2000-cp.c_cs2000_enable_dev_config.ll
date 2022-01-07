; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_enable_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_enable_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }

@DEVICE_CFG1 = common dso_local global i32 0, align 4
@ENDEV1 = common dso_local global i32 0, align 4
@GLOBAL_CFG = common dso_local global i32 0, align 4
@ENDEV2 = common dso_local global i32 0, align 4
@FUNC_CFG1 = common dso_local global i32 0, align 4
@CLKSKIPEN = common dso_local global i32 0, align 4
@FUNC_CFG2 = common dso_local global i32 0, align 4
@LFRATIO_MASK = common dso_local global i32 0, align 4
@LFRATIO_12_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*, i32)* @cs2000_enable_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_enable_dev_config(%struct.cs2000_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs2000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %8 = load i32, i32* @DEVICE_CFG1, align 4
  %9 = load i32, i32* @ENDEV1, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENDEV1, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = call i32 @cs2000_bset(%struct.cs2000_priv* %7, i32 %8, i32 %9, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %15
  %23 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %24 = load i32, i32* @GLOBAL_CFG, align 4
  %25 = load i32, i32* @ENDEV2, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENDEV2, align 4
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @cs2000_bset(%struct.cs2000_priv* %23, i32 %24, i32 %25, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %65

38:                                               ; preds = %31
  %39 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %40 = load i32, i32* @FUNC_CFG1, align 4
  %41 = load i32, i32* @CLKSKIPEN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @CLKSKIPEN, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = call i32 @cs2000_bset(%struct.cs2000_priv* %39, i32 %40, i32 %41, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %47
  %55 = load %struct.cs2000_priv*, %struct.cs2000_priv** %4, align 8
  %56 = load i32, i32* @FUNC_CFG2, align 4
  %57 = load i32, i32* @LFRATIO_MASK, align 4
  %58 = load i32, i32* @LFRATIO_12_20, align 4
  %59 = call i32 @cs2000_bset(%struct.cs2000_priv* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %62, %52, %36, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cs2000_bset(%struct.cs2000_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
