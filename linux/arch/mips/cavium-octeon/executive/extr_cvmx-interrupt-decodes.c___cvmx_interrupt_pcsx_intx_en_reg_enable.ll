; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_pcsx_intx_en_reg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-interrupt-decodes.c___cvmx_interrupt_pcsx_intx_en_reg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcsx_intx_en_reg = type { i64, [24 x i8] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_CN56XX = common dso_local global i32 0, align 4
@OCTEON_CN52XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_interrupt_pcsx_intx_en_reg_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_pcsx_intx_en_reg, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CVMX_PCSX_INTX_REG(i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CVMX_PCSX_INTX_REG(i32 %9, i32 %10)
  %12 = call i64 @cvmx_read_csr(i32 %11)
  %13 = call i32 @cvmx_write_csr(i32 %8, i64 %12)
  %14 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to i64*
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @OCTEON_CN56XX, align 4
  %16 = call i64 @OCTEON_IS_MODEL(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 1, i32* %28, align 8
  %29 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i32 1, i32* %30, align 4
  %31 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i32 1, i32* %32, align 8
  %33 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* @OCTEON_CN52XX, align 4
  %37 = call i64 @OCTEON_IS_MODEL(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store i32 1, i32* %49, align 8
  %50 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i32 1, i32* %51, align 4
  %52 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  store i32 1, i32* %53, align 8
  %54 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %35
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @CVMX_PCSX_INTX_EN_REG(i32 %57, i32 %58)
  %60 = bitcast %union.cvmx_pcsx_intx_en_reg* %5 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cvmx_write_csr(i32 %59, i64 %61)
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_PCSX_INTX_REG(i32, i32) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_PCSX_INTX_EN_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
