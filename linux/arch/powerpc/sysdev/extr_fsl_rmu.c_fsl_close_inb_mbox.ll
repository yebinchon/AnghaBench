; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_close_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_rmu.c_fsl_close_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { i32 }
%struct.fsl_rmu = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RIO_MAX_MSG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_close_inb_mbox(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_priv*, align 8
  %6 = alloca %struct.fsl_rmu*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %8 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %7, i32 0, i32 0
  %9 = load %struct.rio_priv*, %struct.rio_priv** %8, align 8
  store %struct.rio_priv* %9, %struct.rio_priv** %5, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %11 = call %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport* %10)
  store %struct.fsl_rmu* %11, %struct.fsl_rmu** %6, align 8
  %12 = load %struct.fsl_rmu*, %struct.fsl_rmu** %6, align 8
  %13 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @out_be32(i32* %15, i32 0)
  %17 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fsl_rmu*, %struct.fsl_rmu** %6, align 8
  %21 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RIO_MAX_MSG_SIZE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.fsl_rmu*, %struct.fsl_rmu** %6, align 8
  %27 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fsl_rmu*, %struct.fsl_rmu** %6, align 8
  %31 = getelementptr inbounds %struct.fsl_rmu, %struct.fsl_rmu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_free_coherent(i32 %19, i32 %25, i32 %29, i32 %33)
  %35 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %36 = call i32 @IRQ_RIO_RX(%struct.rio_mport* %35)
  %37 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %38 = bitcast %struct.rio_mport* %37 to i8*
  %39 = call i32 @free_irq(i32 %36, i8* %38)
  ret void
}

declare dso_local %struct.fsl_rmu* @GET_RMM_HANDLE(%struct.rio_mport*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @IRQ_RIO_RX(%struct.rio_mport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
