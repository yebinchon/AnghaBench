; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf1_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_direct.c_pci_conf1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @pci_conf1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_conf1_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = icmp ugt i32 %18, 255
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ugt i32 %21, 255
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 4095
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20, %17, %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %56

29:                                               ; preds = %23
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* @pci_config_lock, i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @PCI_CONF1_ADDRESS(i32 %32, i32 %33, i32 %34)
  %36 = call i32 @outl(i32 %35, i32 3320)
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %53 [
    i32 1, label %38
    i32 2, label %44
    i32 4, label %50
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 3
  %42 = add nsw i32 3324, %41
  %43 = call i32 @outb(i32 %39, i32 %42)
  br label %53

44:                                               ; preds = %29
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 2
  %48 = add nsw i32 3324, %47
  %49 = call i32 @outw(i32 %45, i32 %48)
  br label %53

50:                                               ; preds = %29
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @outl(i32 %51, i32 3324)
  br label %53

53:                                               ; preds = %29, %50, %44, %38
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* @pci_config_lock, i64 %54)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %26
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @PCI_CONF1_ADDRESS(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
