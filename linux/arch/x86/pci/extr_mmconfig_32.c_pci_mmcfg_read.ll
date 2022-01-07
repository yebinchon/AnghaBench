; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_mmconfig_32.c_pci_mmcfg_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_mmconfig_32.c_pci_mmcfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@mmcfg_virt_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_mmcfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mmcfg_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 4095
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %18, %6
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32*, i32** %13, align 8
  store i32 -1, i32* %26, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %69

29:                                               ; preds = %21
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @get_base_addr(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 (...) @rcu_read_unlock()
  br label %25

39:                                               ; preds = %29
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %40)
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pci_exp_set_dev_base(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %65 [
    i32 1, label %47
    i32 2, label %53
    i32 4, label %59
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* @mmcfg_virt_addr, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @mmio_config_readb(i32 %50)
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  br label %65

53:                                               ; preds = %39
  %54 = load i32, i32* @mmcfg_virt_addr, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @mmio_config_readw(i32 %56)
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  br label %65

59:                                               ; preds = %39
  %60 = load i32, i32* @mmcfg_virt_addr, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @mmio_config_readl(i32 %62)
  %64 = load i32*, i32** %13, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %39, %59, %53, %47
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %66)
  %68 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %25
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @get_base_addr(i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_exp_set_dev_base(i32, i32, i32) #1

declare dso_local i32 @mmio_config_readb(i32) #1

declare dso_local i32 @mmio_config_readw(i32) #1

declare dso_local i32 @mmio_config_readl(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
