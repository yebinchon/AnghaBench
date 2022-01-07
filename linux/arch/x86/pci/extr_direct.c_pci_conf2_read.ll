; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf2_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_conf2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf2_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
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
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %21, %6
  %28 = load i32*, i32** %13, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @PCI_SLOT(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @PCI_FUNC(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %40, i32* %7, align 4
  br label %73

41:                                               ; preds = %31
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %42)
  %44 = load i32, i32* %16, align 4
  %45 = shl i32 %44, 1
  %46 = or i32 240, %45
  %47 = call i32 @outb(i32 %46, i32 3320)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @outb(i32 %48, i32 3322)
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %69 [
    i32 1, label %51
    i32 2, label %57
    i32 4, label %63
  ]

51:                                               ; preds = %41
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @PCI_CONF2_ADDRESS(i32 %52, i32 %53)
  %55 = call i32 @inb(i32 %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %69

57:                                               ; preds = %41
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @PCI_CONF2_ADDRESS(i32 %58, i32 %59)
  %61 = call i32 @inw(i32 %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %69

63:                                               ; preds = %41
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @PCI_CONF2_ADDRESS(i32 %64, i32 %65)
  %67 = call i32 @inl(i32 %66)
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %41, %63, %57, %51
  %70 = call i32 @outb(i32 0, i32 3320)
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %39, %27
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @PCI_CONF2_ADDRESS(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
