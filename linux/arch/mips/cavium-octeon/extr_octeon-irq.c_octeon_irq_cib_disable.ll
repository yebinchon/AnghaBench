; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_cib_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.octeon_irq_cib_chip_data = type { i64, %struct.octeon_irq_cib_host_data* }
%struct.octeon_irq_cib_host_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @octeon_irq_cib_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_cib_disable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_irq_cib_chip_data*, align 8
  %6 = alloca %struct.octeon_irq_cib_host_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.octeon_irq_cib_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.octeon_irq_cib_chip_data* %8, %struct.octeon_irq_cib_chip_data** %5, align 8
  %9 = load %struct.octeon_irq_cib_chip_data*, %struct.octeon_irq_cib_chip_data** %5, align 8
  %10 = getelementptr inbounds %struct.octeon_irq_cib_chip_data, %struct.octeon_irq_cib_chip_data* %9, i32 0, i32 1
  %11 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %10, align 8
  store %struct.octeon_irq_cib_host_data* %11, %struct.octeon_irq_cib_host_data** %6, align 8
  %12 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %6, align 8
  %13 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @raw_spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %6, align 8
  %17 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @cvmx_read_csr(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.octeon_irq_cib_chip_data*, %struct.octeon_irq_cib_chip_data** %5, align 8
  %21 = getelementptr inbounds %struct.octeon_irq_cib_chip_data, %struct.octeon_irq_cib_chip_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  %24 = xor i64 %23, -1
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, %24
  store i64 %26, i64* %4, align 8
  %27 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %6, align 8
  %28 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @cvmx_write_csr(i32 %29, i64 %30)
  %32 = load %struct.octeon_irq_cib_host_data*, %struct.octeon_irq_cib_host_data** %6, align 8
  %33 = getelementptr inbounds %struct.octeon_irq_cib_host_data, %struct.octeon_irq_cib_host_data* %32, i32 0, i32 0
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @raw_spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local %struct.octeon_irq_cib_chip_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

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
