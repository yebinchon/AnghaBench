; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_find_sid_vsid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_find_sid_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_sid_map = type { i64, i32, i64 }
%struct.kvm_vcpu = type { i32 }
%struct.TYPE_2__ = type { %struct.kvmppc_sid_map* }

@MSR_PR = common dso_local global i32 0, align 4
@VSID_PR = common dso_local global i64 0, align 8
@SID_MAP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_sid_map* (%struct.kvm_vcpu*, i64)* @find_sid_vsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvmppc_sid_map*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_sid_map*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %8)
  %10 = load i32, i32* @MSR_PR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @VSID_PR, align 8
  %15 = load i64, i64* %5, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @kvmppc_sid_hash(%struct.kvm_vcpu* %18, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %22 = call %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %24, i64 %25
  store %struct.kvmppc_sid_map* %26, %struct.kvmppc_sid_map** %6, align 8
  %27 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %28 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %17
  %32 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %33 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %40 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @trace_kvm_book3s_slb_found(i64 %38, i32 %41)
  %43 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  store %struct.kvmppc_sid_map* %43, %struct.kvmppc_sid_map** %3, align 8
  br label %74

44:                                               ; preds = %31, %17
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = call %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %47, align 8
  %49 = load i64, i64* @SID_MAP_MASK, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %48, i64 %51
  store %struct.kvmppc_sid_map* %52, %struct.kvmppc_sid_map** %6, align 8
  %53 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %54 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %59 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  %66 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @trace_kvm_book3s_slb_found(i64 %64, i32 %67)
  %69 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %6, align 8
  store %struct.kvmppc_sid_map* %69, %struct.kvmppc_sid_map** %3, align 8
  br label %74

70:                                               ; preds = %57, %44
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @trace_kvm_book3s_slb_fail(i64 %71, i64 %72)
  store %struct.kvmppc_sid_map* null, %struct.kvmppc_sid_map** %3, align 8
  br label %74

74:                                               ; preds = %70, %63, %37
  %75 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %3, align 8
  ret %struct.kvmppc_sid_map* %75
}

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_sid_hash(%struct.kvm_vcpu*, i64) #1

declare dso_local %struct.TYPE_2__* @to_book3s(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_book3s_slb_found(i64, i32) #1

declare dso_local i32 @trace_kvm_book3s_slb_fail(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
