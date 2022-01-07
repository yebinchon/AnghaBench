; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_fsl_mpic_unmask_err.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_err.c_fsl_mpic_unmask_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.mpic = type { i32*, i32 }

@MPIC_ERR_INT_EIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @fsl_mpic_unmask_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mpic_unmask_err(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpic*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.mpic* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.mpic* %7, %struct.mpic** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @virq_to_hw(i32 %10)
  %12 = load %struct.mpic*, %struct.mpic** %4, align 8
  %13 = getelementptr inbounds %struct.mpic, %struct.mpic* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %11, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mpic*, %struct.mpic** %4, align 8
  %19 = getelementptr inbounds %struct.mpic, %struct.mpic* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MPIC_ERR_INT_EIMR, align 4
  %22 = call i32 @mpic_fsl_err_read(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub i32 31, %23
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.mpic*, %struct.mpic** %4, align 8
  %30 = getelementptr inbounds %struct.mpic, %struct.mpic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @mpic_fsl_err_write(i32 %31, i32 %32)
  ret void
}

declare dso_local %struct.mpic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @mpic_fsl_err_read(i32, i32) #1

declare dso_local i32 @mpic_fsl_err_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
