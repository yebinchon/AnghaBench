; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu3_mbox_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.octeon_ciu3_info = type { i64 }
%union.cvmx_ciu3_iscx_ctl = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@OCTEON_IRQ_MBOX0 = common dso_local global i32 0, align 4
@octeon_ciu3_info = common dso_local global i32 0, align 4
@octeon_irq_ciu3_idt_ip3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32, i32)* @octeon_irq_ciu3_mbox_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu3_mbox_set_enable(%struct.irq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_ciu3_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.cvmx_ciu3_iscx_ctl, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OCTEON_IRQ_MBOX0, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @octeon_irq_ciu3_mbox_intsn_for_cpu(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @octeon_ciu3_info, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.octeon_ciu3_info* @per_cpu(i32 %22, i32 %23)
  store %struct.octeon_ciu3_info* %24, %struct.octeon_ciu3_info** %7, align 8
  %25 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %7, align 8
  %26 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @CIU3_ISC_W1C(i32 %28)
  %30 = add nsw i64 %27, %29
  store i64 %30, i64* %10, align 8
  %31 = load %struct.octeon_ciu3_info*, %struct.octeon_ciu3_info** %7, align 8
  %32 = getelementptr inbounds %struct.octeon_ciu3_info, %struct.octeon_ciu3_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @CIU3_ISC_CTL(i32 %34)
  %36 = add nsw i64 %33, %35
  store i64 %36, i64* %9, align 8
  %37 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to i64*
  store i64 0, i64* %37, align 8
  %38 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @cvmx_write_csr(i64 %40, i64 %42)
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @cvmx_write_csr(i64 %44, i64 0)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %3
  %49 = load i32, i32* @octeon_irq_ciu3_idt_ip3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.octeon_ciu3_info* @per_cpu(i32 %49, i32 %50)
  %52 = ptrtoint %struct.octeon_ciu3_info* %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to i64*
  store i64 0, i64* %53, align 8
  %54 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i64, i64* %9, align 8
  %60 = bitcast %union.cvmx_ciu3_iscx_ctl* %11 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cvmx_write_csr(i64 %59, i64 %61)
  br label %63

63:                                               ; preds = %48, %3
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @cvmx_read_csr(i64 %64)
  ret void
}

declare dso_local i32 @octeon_irq_ciu3_mbox_intsn_for_cpu(i32, i32) #1

declare dso_local %struct.octeon_ciu3_info* @per_cpu(i32, i32) #1

declare dso_local i64 @CIU3_ISC_W1C(i32) #1

declare dso_local i64 @CIU3_ISC_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
