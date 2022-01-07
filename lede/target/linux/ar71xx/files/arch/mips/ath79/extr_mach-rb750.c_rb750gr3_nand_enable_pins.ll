; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-rb750.c_rb750gr3_nand_enable_pins.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_mach-rb750.c_rb750gr3_nand_enable_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR724X_GPIO_FUNC_JTAG_DISABLE = common dso_local global i32 0, align 4
@AR724X_GPIO_FUNC_SPI_EN = common dso_local global i32 0, align 4
@AR724X_GPIO_FUNC_SPI_CS_EN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rb750gr3_nand_enable_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb750gr3_nand_enable_pins() #0 {
  %1 = load i32, i32* @AR724X_GPIO_FUNC_JTAG_DISABLE, align 4
  %2 = load i32, i32* @AR724X_GPIO_FUNC_SPI_EN, align 4
  %3 = load i32, i32* @AR724X_GPIO_FUNC_SPI_CS_EN2, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @ath79_gpio_function_setup(i32 %1, i32 %4)
  ret void
}

declare dso_local i32 @ath79_gpio_function_setup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
