; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_octeon_irq_msi_disable_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_msi-octeon.c_octeon_irq_msi_disable_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@OCTEON_IRQ_MSI_BIT0 = common dso_local global i32 0, align 4
@octeon_irq_msi_lock = common dso_local global i32 0, align 4
@mis_ena_reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @octeon_irq_msi_disable_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_msi_disable_pcie(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 6
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* @octeon_irq_msi_lock, i64 %17)
  %19 = load i32*, i32** @mis_ena_reg, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @cvmx_read_csr(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = xor i64 %27, -1
  %29 = load i64, i64* %3, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load i32*, i32** @mis_ena_reg, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @cvmx_write_csr(i32 %35, i64 %36)
  %38 = load i32*, i32** @mis_ena_reg, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @cvmx_read_csr(i32 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* @octeon_irq_msi_lock, i64 %44)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
