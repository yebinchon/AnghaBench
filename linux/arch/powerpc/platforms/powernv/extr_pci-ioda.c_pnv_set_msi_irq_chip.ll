; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_set_msi_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_set_msi_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_phb = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.irq_chip }
%struct.irq_chip = type { i32 }
%struct.irq_data = type { i32 }

@PNV_PHB_MODEL_PHB3 = common dso_local global i64 0, align 8
@pnv_ioda2_msi_eoi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnv_set_msi_irq_chip(%struct.pnv_phb* %0, i32 %1) #0 {
  %3 = alloca %struct.pnv_phb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  store %struct.pnv_phb* %0, %struct.pnv_phb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %8 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PNV_PHB_MODEL_PHB3, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %15 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.irq_data* @irq_get_irq_data(i32 %20)
  store %struct.irq_data* %21, %struct.irq_data** %5, align 8
  %22 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %23 = call %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data* %22)
  store %struct.irq_chip* %23, %struct.irq_chip** %6, align 8
  %24 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %25 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %28 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %31 = bitcast %struct.irq_chip* %29 to i8*
  %32 = bitcast %struct.irq_chip* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i32, i32* @pnv_ioda2_msi_eoi, align 4
  %34 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %35 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %19, %13
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.pnv_phb*, %struct.pnv_phb** %3, align 8
  %41 = getelementptr inbounds %struct.pnv_phb, %struct.pnv_phb* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @irq_set_chip(i32 %39, %struct.irq_chip* %42)
  br label %44

44:                                               ; preds = %38, %12
  ret void
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.irq_chip* @irq_data_get_irq_chip(%struct.irq_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @irq_set_chip(i32, %struct.irq_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
