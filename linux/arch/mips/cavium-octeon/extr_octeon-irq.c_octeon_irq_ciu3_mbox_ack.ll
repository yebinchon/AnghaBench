; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.octeon_ciu3_info = type { i64 }
%union.cvmx_ciu3_iscx_w1c = type { i64 }
%struct.TYPE_2__ = type { i32 }

@OCTEON_IRQ_MBOX0 = common dso_local global i32 0, align 4
@octeon_ciu3_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @octeon_irq_ciu3_mbox_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu3_mbox_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.octeon_ciu3_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %union.cvmx_ciu3_iscx_w1c, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @OCTEON_IRQ_MBOX0, align 4
  %12 = sub i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = call i32 (...) @cvmx_get_local_core_num()
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @octeon_irq_ciu3_mbox_intsn_for_core(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = bitcast %union.cvmx_ciu3_iscx_w1c* %6 to i64*
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.cvmx_ciu3_iscx_w1c* %6 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @octeon_ciu3_info, align 4
  %20 = call %struct.octeon_ciu3_info* @__this_cpu_read(i32 %19)
  store %struct.octeon_ciu3_info* %20, %struct.octeon_ciu3_info** %3, align 8
  %21 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %3, align 8
  %22 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @CIU3_ISC_W1C(i32 %24)
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = bitcast %union.cvmx_ciu3_iscx_w1c* %6 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @cvmx_write_csr(i64 %27, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @cvmx_read_csr(i64 %31)
  ret void
}

declare dso_local i32 @octeon_irq_ciu3_mbox_intsn_for_core(i32, i32) #1

declare dso_local i32 @cvmx_get_local_core_num(...) #1

declare dso_local %struct.octeon_ciu3_info* @__this_cpu_read(i32) #1

declare dso_local i64 @CIU3_ISC_W1C(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
