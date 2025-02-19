; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_link.c_acpi_irq_get_penalty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_link.c_acpi_irq_get_penalty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sci_irq = common dso_local global i32 0, align 4
@sci_penalty = common dso_local global i64 0, align 8
@ACPI_MAX_ISA_IRQS = common dso_local global i32 0, align 4
@acpi_isa_irq_penalty = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_irq_get_penalty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_irq_get_penalty(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @sci_irq, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @sci_penalty, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ACPI_MAX_ISA_IRQS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** @acpi_isa_irq_penalty, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @acpi_irq_pci_sharing_penalty(i32 %28)
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @acpi_irq_pci_sharing_penalty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
