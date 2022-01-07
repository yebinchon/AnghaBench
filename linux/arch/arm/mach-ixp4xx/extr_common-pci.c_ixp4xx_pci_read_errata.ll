; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_common-pci.c_ixp4xx_pci_read_errata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ixp4xx/extr_common-pci.c_ixp4xx_pci_read_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ixp4xx_pci_lock = common dso_local global i32 0, align 4
@PCI_NP_AD = common dso_local global i8** null, align 8
@PCI_NP_CBE = common dso_local global i8** null, align 8
@PCI_NP_RDATA = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixp4xx_pci_read_errata(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* @ixp4xx_pci_lock, i64 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i8**, i8*** @PCI_NP_AD, align 8
  store i8* %12, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = load i8**, i8*** @PCI_NP_CBE, align 8
  store i8* %18, i8** %19, align 8
  %20 = load i8**, i8*** @PCI_NP_RDATA, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %6, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i8**, i8*** @PCI_NP_RDATA, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %14

29:                                               ; preds = %14
  %30 = call i64 (...) @check_master_abort()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* @ixp4xx_pci_lock, i64 %34)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_master_abort(...) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
