; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_acpi_init.c_acpi_registers_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_acpi_init.c_acpi_registers_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_PM_EVT_BLK = common dso_local global i32 0, align 4
@ACPI_PM_CNT_BLK = common dso_local global i32 0, align 4
@ACPI_GPE0_BLK = common dso_local global i32 0, align 4
@ACPI_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_registers_setup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ACPI_PM_EVT_BLK, align 4
  %3 = and i32 %2, 255
  %4 = call i32 @pm_iowrite(i32 32, i32 %3)
  %5 = load i32, i32* @ACPI_PM_EVT_BLK, align 4
  %6 = ashr i32 %5, 8
  %7 = call i32 @pm_iowrite(i32 33, i32 %6)
  %8 = load i32, i32* @ACPI_PM_CNT_BLK, align 4
  %9 = and i32 %8, 255
  %10 = call i32 @pm_iowrite(i32 34, i32 %9)
  %11 = load i32, i32* @ACPI_PM_CNT_BLK, align 4
  %12 = ashr i32 %11, 8
  %13 = call i32 @pm_iowrite(i32 35, i32 %12)
  %14 = load i32, i32* @ACPI_GPE0_BLK, align 4
  %15 = and i32 %14, 255
  %16 = call i32 @pm_iowrite(i32 40, i32 %15)
  %17 = load i32, i32* @ACPI_GPE0_BLK, align 4
  %18 = ashr i32 %17, 8
  %19 = call i32 @pm_iowrite(i32 41, i32 %18)
  %20 = load i32, i32* @ACPI_END, align 4
  %21 = and i32 %20, 255
  %22 = call i32 @pm_iowrite(i32 46, i32 %21)
  %23 = load i32, i32* @ACPI_END, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @pm_iowrite(i32 47, i32 %24)
  %26 = call i32 @pm_iowrite(i32 14, i32 8)
  %27 = load i32, i32* @ACPI_PM_CNT_BLK, align 4
  %28 = call i32 @outw(i32 1, i32 %27)
  %29 = call i32 @pm_ioread(i32 16)
  %30 = or i32 %29, 1
  %31 = call i32 @pm_iowrite(i32 16, i32 %30)
  %32 = load i32, i32* @ACPI_GPE0_BLK, align 4
  %33 = add nsw i32 %32, 4
  %34 = call i32 @inl(i32 %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = or i32 %35, 16384
  %37 = or i32 %36, 4194304
  %38 = load i32, i32* @ACPI_GPE0_BLK, align 4
  %39 = add nsw i32 %38, 4
  %40 = call i32 @outl(i32 %37, i32 %39)
  %41 = call i32 @pm_ioread(i32 141)
  %42 = and i32 %41, -3
  %43 = call i32 @pm_iowrite(i32 141, i32 %42)
  %44 = call i32 @pm_ioread(i32 148)
  %45 = or i32 %44, 8
  %46 = call i32 @pm_iowrite(i32 148, i32 %45)
  %47 = call i32 @pm_ioread(i32 51)
  %48 = and i32 %47, -49
  %49 = call i32 @pm_iowrite(i32 51, i32 %48)
  %50 = call i32 @pm_ioread(i32 61)
  %51 = and i32 %50, -13
  %52 = call i32 @pm_iowrite(i32 61, i32 %51)
  %53 = call i32 @pm_ioread(i32 55)
  %54 = and i32 %53, -65
  %55 = call i32 @pm_iowrite(i32 55, i32 %54)
  %56 = call i32 @pm_ioread(i32 124)
  %57 = or i32 %56, 64
  %58 = call i32 @pm_iowrite(i32 124, i32 %57)
  %59 = call i32 @pm2_ioread(i32 246)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = or i32 %60, 136
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @pm2_iowrite(i32 246, i32 %62)
  %64 = call i32 @pm2_ioread(i32 248)
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = or i32 %65, 34
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @pm2_iowrite(i32 248, i32 %67)
  ret void
}

declare dso_local i32 @pm_iowrite(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @pm_ioread(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @pm2_ioread(i32) #1

declare dso_local i32 @pm2_iowrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
