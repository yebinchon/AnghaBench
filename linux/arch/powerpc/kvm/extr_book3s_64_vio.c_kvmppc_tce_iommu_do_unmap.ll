; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_iommu_do_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_iommu_do_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.iommu_table = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@H_TOO_HARD = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm*, %struct.iommu_table*, i64)* @kvmppc_tce_iommu_do_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvmppc_tce_iommu_do_unmap(%struct.kvm* %0, %struct.iommu_table* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @DMA_NONE, align 4
  store i32 %11, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %12 = load %struct.kvm*, %struct.kvm** %5, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @iommu_tce_xchg_no_kill(i32 %14, %struct.iommu_table* %15, i64 %16, i64* %9, i32* %8)
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %21, i64* %4, align 8
  br label %45

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @DMA_NONE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @H_SUCCESS, align 8
  store i64 %27, i64* %4, align 8
  br label %45

28:                                               ; preds = %22
  %29 = load %struct.kvm*, %struct.kvm** %5, align 8
  %30 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @kvmppc_tce_iommu_mapped_dec(%struct.kvm* %29, %struct.iommu_table* %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @H_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.kvm*, %struct.kvm** %5, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @iommu_tce_xchg_no_kill(i32 %39, %struct.iommu_table* %40, i64 %41, i64* %9, i32* %8)
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %26, %20
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iommu_tce_xchg_no_kill(i32, %struct.iommu_table*, i64, i64*, i32*) #1

declare dso_local i64 @kvmppc_tce_iommu_mapped_dec(%struct.kvm*, %struct.iommu_table*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
