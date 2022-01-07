; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_ahci-init-xlp2.c_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_MEM_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_phy_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PHY_MEM_ACCESS, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 24
  %12 = or i32 0, %11
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @nlm_write_sata_reg(i32 %8, i32 %9, i32 %14)
  %16 = call i32 @udelay(i32 850)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PHY_MEM_ACCESS, align 4
  %19 = call i32 @nlm_read_sata_reg(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  ret i32 %22
}

declare dso_local i32 @nlm_write_sata_reg(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nlm_read_sata_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
