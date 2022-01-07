; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf2_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i64)* @pci_conf2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf2_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %10, align 4
  %23 = icmp ugt i32 %22, 255
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21, %6
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @PCI_SLOT(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @PCI_FUNC(i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %39, i32* %7, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %41)
  %43 = load i32, i32* %16, align 4
  %44 = shl i32 %43, 1
  %45 = or i32 240, %44
  %46 = call i32 @outb(i32 %45, i32 3320)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @outb(i32 %47, i32 3322)
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %70 [
    i32 1, label %50
    i32 2, label %57
    i32 4, label %64
  ]

50:                                               ; preds = %40
  %51 = load i64, i64* %13, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @PCI_CONF2_ADDRESS(i32 %53, i32 %54)
  %56 = call i32 @outb(i32 %52, i32 %55)
  br label %70

57:                                               ; preds = %40
  %58 = load i64, i64* %13, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @PCI_CONF2_ADDRESS(i32 %60, i32 %61)
  %63 = call i32 @outw(i32 %59, i32 %62)
  br label %70

64:                                               ; preds = %40
  %65 = load i64, i64* %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @PCI_CONF2_ADDRESS(i32 %66, i32 %67)
  %69 = call i32 @outl(i64 %65, i32 %68)
  br label %70

70:                                               ; preds = %40, %64, %57, %50
  %71 = call i32 @outb(i32 0, i32 3320)
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %38, %27
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @PCI_CONF2_ADDRESS(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
