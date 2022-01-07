; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_create_sid_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_create_sid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_sid_map = type { i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i64, i64, i64, %struct.kvmppc_sid_map* }

@VSID_BITS_65_256M = common dso_local global i64 0, align 8
@create_sid_map.backwards_map = internal global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@VSID_PR = common dso_local global i32 0, align 4
@SID_MAP_MASK = common dso_local global i64 0, align 8
@SID_MAP_NUM = common dso_local global i32 0, align 4
@MMU_FTR_68_BIT_VA = common dso_local global i32 0, align 4
@VSID_BITS_256M = common dso_local global i64 0, align 8
@VSID_MULTIPLIER_256M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_sid_map* (%struct.kvm_vcpu*, i32)* @create_sid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_sid_map*, align 8
  %7 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @VSID_BITS_65_256M, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %10)
  store %struct.kvmppc_vcpu_book3s* %11, %struct.kvmppc_vcpu_book3s** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %12)
  %14 = load i32, i32* @MSR_PR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @VSID_PR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @kvmppc_sid_hash(%struct.kvm_vcpu* %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @create_sid_map.backwards_map, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @SID_MAP_MASK, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %32)
  %34 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %33, i32 0, i32 3
  %35 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %35, i64 %36
  store %struct.kvmppc_sid_map* %37, %struct.kvmppc_sid_map** %6, align 8
  %38 = load i32, i32* @create_sid_map.backwards_map, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* @create_sid_map.backwards_map, align 4
  %42 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %43 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %46 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %31
  %50 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %51 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %56 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %55, i32 0, i32 3
  %57 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %56, align 8
  %58 = load i32, i32* @SID_MAP_NUM, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 12, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(%struct.kvmppc_sid_map* %57, i32 0, i32 %61)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu* %63, i32 0, i32 0)
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = call i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu* %65)
  br label %67

67:                                               ; preds = %49, %31
  %68 = load i32, i32* @MMU_FTR_68_BIT_VA, align 4
  %69 = call i64 @mmu_has_feature(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @VSID_BITS_256M, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %7, align 8
  %75 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = trunc i64 %76 to i32
  %79 = load i32, i32* @VSID_MULTIPLIER_256M, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @vsid_scramble(i32 %78, i32 %79, i64 %80)
  %82 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %83 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %86 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %88 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %92 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @trace_kvm_book3s_slb_map(i64 %89, i32 %90, i32 %93)
  %95 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  ret %struct.kvmppc_sid_map* %95
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_sid_hash(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memset(%struct.kvmppc_sid_map*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu*) #1

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i32 @vsid_scramble(i32, i32, i64) #1

declare dso_local i32 @trace_kvm_book3s_slb_map(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
