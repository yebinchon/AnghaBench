; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_iommu_do_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvmppc_tce_iommu_do_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.iommu_table = type { i64 }
%struct.mm_iommu_table_group_mem_t = type { i32 }

@H_TOO_HARD = common dso_local global i64 0, align 8
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_tce_iommu_do_map(%struct.kvm* %0, %struct.iommu_table* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.iommu_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @IOMMU_TABLE_USERSPACE_ENTRY(%struct.iommu_table* %16, i64 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %22, i64* %6, align 8
  br label %81

23:                                               ; preds = %5
  %24 = load %struct.kvm*, %struct.kvm** %7, align 8
  %25 = getelementptr inbounds %struct.kvm, %struct.kvm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %29 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 1, %30
  %32 = call %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup(i32 %26, i64 %27, i64 %31)
  store %struct.mm_iommu_table_group_mem_t* %32, %struct.mm_iommu_table_group_mem_t** %15, align 8
  %33 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %15, align 8
  %34 = icmp ne %struct.mm_iommu_table_group_mem_t* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %36, i64* %6, align 8
  br label %81

37:                                               ; preds = %23
  %38 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %15, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %41 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @mm_iommu_ua_to_hpa(%struct.mm_iommu_table_group_mem_t* %38, i64 %39, i64 %42, i64* %13)
  %44 = call i64 @WARN_ON_ONCE(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %47, i64* %6, align 8
  br label %81

48:                                               ; preds = %37
  %49 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %15, align 8
  %50 = call i64 @mm_iommu_mapped_inc(%struct.mm_iommu_table_group_mem_t* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %53, i64* %6, align 8
  br label %81

54:                                               ; preds = %48
  %55 = load %struct.kvm*, %struct.kvm** %7, align 8
  %56 = getelementptr inbounds %struct.kvm, %struct.kvm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @iommu_tce_xchg_no_kill(i32 %57, %struct.iommu_table* %58, i64 %59, i64* %13, i32* %11)
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @WARN_ON_ONCE(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %15, align 8
  %66 = call i32 @mm_iommu_mapped_dec(%struct.mm_iommu_table_group_mem_t* %65)
  %67 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %67, i64* %6, align 8
  br label %81

68:                                               ; preds = %54
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @DMA_NONE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.kvm*, %struct.kvm** %7, align 8
  %74 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @kvmppc_tce_iommu_mapped_dec(%struct.kvm* %73, %struct.iommu_table* %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @cpu_to_be64(i64 %78)
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %77, %64, %52, %46, %35, %21
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i32* @IOMMU_TABLE_USERSPACE_ENTRY(%struct.iommu_table*, i64) #1

declare dso_local %struct.mm_iommu_table_group_mem_t* @mm_iommu_lookup(i32, i64, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local i64 @mm_iommu_ua_to_hpa(%struct.mm_iommu_table_group_mem_t*, i64, i64, i64*) #1

declare dso_local i64 @mm_iommu_mapped_inc(%struct.mm_iommu_table_group_mem_t*) #1

declare dso_local i64 @iommu_tce_xchg_no_kill(i32, %struct.iommu_table*, i64, i64*, i32*) #1

declare dso_local i32 @mm_iommu_mapped_dec(%struct.mm_iommu_table_group_mem_t*) #1

declare dso_local i32 @kvmppc_tce_iommu_mapped_dec(%struct.kvm*, %struct.iommu_table*, i64) #1

declare dso_local i32 @cpu_to_be64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
