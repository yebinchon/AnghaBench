; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_create_pr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_core_vcpu_create_pr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8*, %struct.kvmppc_vcpu_book3s* }
%struct.kvmppc_vcpu_book3s = type { i32 }
%struct.kvm = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@MSR_USER64 = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i32 0, align 4
@MMU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@SPRN_PVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvm*, i32)* @kvmppc_core_vcpu_create_pr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @kvmppc_core_vcpu_create_pr(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @kvm_vcpu_cache, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.kvm_vcpu* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %16 = icmp ne %struct.kvm_vcpu* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %87

18:                                               ; preds = %2
  %19 = call %struct.kvmppc_vcpu_book3s* @vzalloc(i32 4)
  store %struct.kvmppc_vcpu_book3s* %19, %struct.kvmppc_vcpu_book3s** %6, align 8
  %20 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %21 = icmp ne %struct.kvmppc_vcpu_book3s* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %83

23:                                               ; preds = %18
  %24 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  store %struct.kvmppc_vcpu_book3s* %24, %struct.kvmppc_vcpu_book3s** %27, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %29 = load %struct.kvm*, %struct.kvm** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %28, %struct.kvm* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %80

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* @__GFP_ZERO, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @__get_free_page(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %77

45:                                               ; preds = %35
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  store i8* %47, i8** %50, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 541186, i32* %53, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kvmppc_set_pvr_pr(%struct.kvm_vcpu* %54, i32 %58)
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 64, i32* %62, align 8
  %63 = load i32, i32* @MSR_USER64, align 4
  %64 = load i32, i32* @MSR_LE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %71 = call i32 @kvmppc_mmu_init(%struct.kvm_vcpu* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %45
  br label %77

75:                                               ; preds = %45
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_vcpu* %76, %struct.kvm_vcpu** %3, align 8
  br label %90

77:                                               ; preds = %74, %44
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %79 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %78)
  br label %80

80:                                               ; preds = %77, %34
  %81 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %82 = call i32 @vfree(%struct.kvmppc_vcpu_book3s* %81)
  br label %83

83:                                               ; preds = %80, %22
  %84 = load i32, i32* @kvm_vcpu_cache, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %86 = call i32 @kmem_cache_free(i32 %84, %struct.kvm_vcpu* %85)
  br label %87

87:                                               ; preds = %83, %17
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.kvm_vcpu* @ERR_PTR(i32 %88)
  store %struct.kvm_vcpu* %89, %struct.kvm_vcpu** %3, align 8
  br label %90

90:                                               ; preds = %87, %75
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %91
}

declare dso_local %struct.kvm_vcpu* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.kvmppc_vcpu_book3s* @vzalloc(i32) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kvmppc_set_pvr_pr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_mmu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @vfree(%struct.kvmppc_vcpu_book3s*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
