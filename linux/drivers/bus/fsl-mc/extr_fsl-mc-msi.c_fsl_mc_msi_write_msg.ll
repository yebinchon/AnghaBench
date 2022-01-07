; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32 }
%struct.msi_desc = type { %struct.msi_msg, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.fsl_mc_device = type { i32 }
%struct.fsl_mc_bus = type { %struct.fsl_mc_device_irq* }
%struct.fsl_mc_device_irq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @fsl_mc_msi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_msi_write_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.msi_desc*, align 8
  %6 = alloca %struct.fsl_mc_device*, align 8
  %7 = alloca %struct.fsl_mc_bus*, align 8
  %8 = alloca %struct.fsl_mc_device_irq*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data* %9)
  store %struct.msi_desc* %10, %struct.msi_desc** %5, align 8
  %11 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %12 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.fsl_mc_device* @to_fsl_mc_device(i32 %13)
  store %struct.fsl_mc_device* %14, %struct.fsl_mc_device** %6, align 8
  %15 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %16 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %15)
  store %struct.fsl_mc_bus* %16, %struct.fsl_mc_bus** %7, align 8
  %17 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %7, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %17, i32 0, i32 0
  %19 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %18, align 8
  %20 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %21 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %19, i64 %23
  store %struct.fsl_mc_device_irq* %24, %struct.fsl_mc_device_irq** %8, align 8
  %25 = load %struct.msi_desc*, %struct.msi_desc** %5, align 8
  %26 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %25, i32 0, i32 0
  %27 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %28 = bitcast %struct.msi_msg* %26 to i8*
  %29 = bitcast %struct.msi_msg* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %6, align 8
  %31 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %8, align 8
  %32 = call i32 @__fsl_mc_msi_write_msg(%struct.fsl_mc_device* %30, %struct.fsl_mc_device_irq* %31)
  ret void
}

declare dso_local %struct.msi_desc* @irq_data_get_msi_desc(%struct.irq_data*) #1

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(i32) #1

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__fsl_mc_msi_write_msg(%struct.fsl_mc_device*, %struct.fsl_mc_device_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
