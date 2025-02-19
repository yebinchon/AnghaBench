; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9n12_clk_usb_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-usb.c_at91sam9n12_clk_usb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.at91sam9x5_clk_usb = type { i32 }

@AT91_PMC_USB = common dso_local global i32 0, align 4
@AT91_PMC_USBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @at91sam9n12_clk_usb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91sam9n12_clk_usb_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.at91sam9x5_clk_usb*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.at91sam9x5_clk_usb* @to_at91sam9x5_clk_usb(%struct.clk_hw* %4)
  store %struct.at91sam9x5_clk_usb* %5, %struct.at91sam9x5_clk_usb** %3, align 8
  %6 = load %struct.at91sam9x5_clk_usb*, %struct.at91sam9x5_clk_usb** %3, align 8
  %7 = getelementptr inbounds %struct.at91sam9x5_clk_usb, %struct.at91sam9x5_clk_usb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AT91_PMC_USB, align 4
  %10 = load i32, i32* @AT91_PMC_USBS, align 4
  %11 = call i32 @regmap_update_bits(i32 %8, i32 %9, i32 %10, i32 0)
  ret void
}

declare dso_local %struct.at91sam9x5_clk_usb* @to_at91sam9x5_clk_usb(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
