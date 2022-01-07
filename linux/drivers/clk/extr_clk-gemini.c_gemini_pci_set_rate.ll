; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gemini.c_gemini_pci_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-gemini.c_gemini_pci_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gemini_pci = type { i32 }

@GEMINI_GLOBAL_MISC_CONTROL = common dso_local global i32 0, align 4
@PCI_CLK_66MHZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @gemini_pci_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_pci_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_gemini_pci*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %10 = call %struct.clk_gemini_pci* @to_pciclk(%struct.clk_hw* %9)
  store %struct.clk_gemini_pci* %10, %struct.clk_gemini_pci** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 33000000
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %15 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GEMINI_GLOBAL_MISC_CONTROL, align 4
  %18 = load i32, i32* @PCI_CLK_66MHZ, align 4
  %19 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 66000000
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.clk_gemini_pci*, %struct.clk_gemini_pci** %8, align 8
  %25 = getelementptr inbounds %struct.clk_gemini_pci, %struct.clk_gemini_pci* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GEMINI_GLOBAL_MISC_CONTROL, align 4
  %28 = load i32, i32* @PCI_CLK_66MHZ, align 4
  %29 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %23, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.clk_gemini_pci* @to_pciclk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
