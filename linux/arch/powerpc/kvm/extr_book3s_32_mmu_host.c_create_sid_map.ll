; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_create_sid_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_create_sid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_sid_map = type { i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_book3s = type { i64, i32*, %struct.kvmppc_sid_map* }

@create_sid_map.backwards_map = internal global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@VSID_PR = common dso_local global i32 0, align 4
@SID_MAP_MASK = common dso_local global i64 0, align 8
@VSID_POOL_SIZE = common dso_local global i64 0, align 8
@SID_MAP_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_sid_map* (%struct.kvm_vcpu*, i32)* @create_sid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_sid_map*, align 8
  %6 = alloca %struct.kvmppc_vcpu_book3s*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %8)
  store %struct.kvmppc_vcpu_book3s* %9, %struct.kvmppc_vcpu_book3s** %6, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %10)
  %12 = load i32, i32* @MSR_PR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @VSID_PR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @kvmppc_sid_hash(%struct.kvm_vcpu* %20, i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* @create_sid_map.backwards_map, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i64, i64* @SID_MAP_MASK, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu* %30)
  %32 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %31, i32 0, i32 2
  %33 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %33, i64 %34
  store %struct.kvmppc_sid_map* %35, %struct.kvmppc_sid_map** %5, align 8
  %36 = load i32, i32* @create_sid_map.backwards_map, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* @create_sid_map.backwards_map, align 4
  %40 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %41 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VSID_POOL_SIZE, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %47 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %49 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %48, i32 0, i32 2
  %50 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %49, align 8
  %51 = load i32, i32* @SID_MAP_NUM, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 12, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(%struct.kvmppc_sid_map* %50, i32 0, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu* %56, i32 0, i32 0)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu* %58)
  br label %60

60:                                               ; preds = %45, %29
  %61 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %62 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %65 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %5, align 8
  %70 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.kvmppc_vcpu_book3s*, %struct.kvmppc_vcpu_book3s** %6, align 8
  %72 = getelementptr inbounds %struct.kvmppc_vcpu_book3s, %struct.kvmppc_vcpu_book3s* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %5, align 8
  %77 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %5, align 8
  %79 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %5, align 8
  ret %struct.kvmppc_sid_map* %80
}

declare dso_local %struct.kvmppc_vcpu_book3s* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_sid_hash(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memset(%struct.kvmppc_sid_map*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_pte_flush(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_flush_segments(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
