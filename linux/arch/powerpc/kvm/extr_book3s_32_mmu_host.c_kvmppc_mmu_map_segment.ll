; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_map_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_map_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.kvm_vcpu.0*, i64, i32*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvmppc_sid_map = type { i64, i64 }
%struct.kvmppc_book3s_shadow_vcpu = type { i64* }

@SID_SHIFT = common dso_local global i64 0, align 8
@SR_INVALID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@SR_KP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"MMU: mtsr %d, 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_map_segment(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_sid_map*, align 8
  %9 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SID_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %14)
  store %struct.kvmppc_book3s_shadow_vcpu* %15, %struct.kvmppc_book3s_shadow_vcpu** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64 (%struct.kvm_vcpu.0*, i64, i32*)*, i64 (%struct.kvm_vcpu.0*, i64, i32*)** %19, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = bitcast %struct.kvm_vcpu* %21 to %struct.kvm_vcpu.0*
  %23 = load i64, i64* %5, align 8
  %24 = call i64 %20(%struct.kvm_vcpu.0* %22, i64 %23, i32* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load i64, i64* @SR_INVALID, align 8
  %28 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %9, align 8
  %29 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 %27, i64* %32, align 8
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %63

35:                                               ; preds = %2
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu* %36, i32 %37)
  store %struct.kvmppc_sid_map* %38, %struct.kvmppc_sid_map** %8, align 8
  %39 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %8, align 8
  %40 = icmp ne %struct.kvmppc_sid_map* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu* %42, i32 %43)
  store %struct.kvmppc_sid_map* %44, %struct.kvmppc_sid_map** %8, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %8, align 8
  %48 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %8, align 8
  %50 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SR_KP, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %9, align 8
  %56 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @dprintk_sr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %45, %26
  %64 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %9, align 8
  %65 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %64)
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @dprintk_sr(i8*, i64, i64) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
