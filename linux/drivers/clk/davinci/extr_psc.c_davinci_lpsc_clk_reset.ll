; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_hw = type { i32 }
%struct.davinci_lpsc_clk = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MDCTL_LRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i32)* @davinci_lpsc_clk_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_lpsc_clk_reset(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.davinci_lpsc_clk*, align 8
  %8 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %9)
  store %struct.clk_hw* %10, %struct.clk_hw** %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %12 = call %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.clk_hw* %11)
  store %struct.davinci_lpsc_clk* %12, %struct.davinci_lpsc_clk** %7, align 8
  %13 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %7, align 8
  %14 = call i64 @IS_ERR_OR_NULL(%struct.davinci_lpsc_clk* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MDCTL_LRESET, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %7, align 8
  %28 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %7, align 8
  %31 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MDCTL(i32 %32)
  %34 = load i32, i32* @MDCTL_LRESET, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regmap_write_bits(i32 %29, i32 %33, i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %25, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #1

declare dso_local %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.clk_hw*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.davinci_lpsc_clk*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @MDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
