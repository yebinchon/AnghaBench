; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_modify.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel/extr_iosf_mbi.c_iosf_mbi_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT_MBI_UNIT_GFX = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@MBI_MASK_LO = common dso_local global i32 0, align 4
@MBI_MASK_HI = common dso_local global i32 0, align 4
@iosf_mbi_lock = common dso_local global i32 0, align 4
@MBI_RD_MASK = common dso_local global i32 0, align 4
@MBI_WR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iosf_mbi_modify(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BT_MBI_UNIT_GFX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %67

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MBI_MASK_LO, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @iosf_mbi_form_mcr(i64 %25, i64 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MBI_MASK_HI, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @spin_lock_irqsave(i32* @iosf_mbi_lock, i64 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MBI_RD_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @iosf_mbi_pci_read_mdr(i32 %36, i32 %39, i32* %14)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @iosf_mbi_lock, i64 %44)
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %6, align 4
  br label %67

47:                                               ; preds = %24
  %48 = load i32, i32* %11, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %14, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MBI_WR_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @iosf_mbi_pci_write_mdr(i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @iosf_mbi_lock, i64 %64)
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %47, %43, %20
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iosf_mbi_form_mcr(i64, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iosf_mbi_pci_read_mdr(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iosf_mbi_pci_write_mdr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
