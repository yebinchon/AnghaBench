; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_ratio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_ratio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs2000_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RATIO_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs2000_priv*, i32, i32, i32)* @cs2000_ratio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_ratio_set(%struct.cs2000_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs2000_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cs2000_priv* %0, %struct.cs2000_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @CH_SIZE_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @cs2000_rate_to_ratio(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %41, %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @RATIO_REG_SIZE, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.cs2000_priv*, %struct.cs2000_priv** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @Ratio_Add(i32 %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @Ratio_Val(i32 %32, i32 %33)
  %35 = call i32 @cs2000_write(%struct.cs2000_priv* %28, i32 %31, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %38, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @CH_SIZE_ERR(i32) #1

declare dso_local i32 @cs2000_rate_to_ratio(i32, i32) #1

declare dso_local i32 @cs2000_write(%struct.cs2000_priv*, i32, i32) #1

declare dso_local i32 @Ratio_Add(i32, i32) #1

declare dso_local i32 @Ratio_Val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
