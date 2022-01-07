; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_map_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_host.c_kvmppc_mmu_map_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.kvm_vcpu.0*, i32, i32*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvmppc_book3s_shadow_vcpu = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kvmppc_sid_map = type { i32, i32 }

@SID_SHIFT = common dso_local global i32 0, align 4
@ESID_MASK = common dso_local global i32 0, align 4
@SLB_ESID_V = common dso_local global i32 0, align 4
@SLB_VSID_USER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SLB_VSID_KP = common dso_local global i32 0, align 4
@MMU_PAGE_64K = common dso_local global i64 0, align 8
@VSID_64K = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_mmu_map_segment(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvmppc_sid_map*, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %13)
  store %struct.kvmppc_book3s_shadow_vcpu* %14, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SID_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ESID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SLB_ESID_V, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @SLB_VSID_USER, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ESID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @kvmppc_mmu_next_segment(%struct.kvm_vcpu* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64 (%struct.kvm_vcpu.0*, i32, i32*)*, i64 (%struct.kvm_vcpu.0*, i32, i32*)** %32, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = bitcast %struct.kvm_vcpu* %34 to %struct.kvm_vcpu.0*
  %36 = load i32, i32* %6, align 4
  %37 = call i64 %33(%struct.kvm_vcpu.0* %35, i32 %36, i32* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %41 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %95

49:                                               ; preds = %2
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu* %50, i32 %51)
  store %struct.kvmppc_sid_map* %52, %struct.kvmppc_sid_map** %11, align 8
  %53 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %11, align 8
  %54 = icmp ne %struct.kvmppc_sid_map* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu* %56, i32 %57)
  store %struct.kvmppc_sid_map* %58, %struct.kvmppc_sid_map** %11, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %11, align 8
  %62 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.kvmppc_sid_map*, %struct.kvmppc_sid_map** %11, align 8
  %64 = getelementptr inbounds %struct.kvmppc_sid_map, %struct.kvmppc_sid_map* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 12
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @SLB_VSID_KP, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %78 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %86 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %84, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @trace_kvm_book3s_slbmte(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %59, %39
  %96 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %5, align 8
  %97 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %96)
  %98 = load i32, i32* %12, align 4
  ret i32 %98
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_mmu_next_segment(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvmppc_sid_map* @find_sid_vsid(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvmppc_sid_map* @create_sid_map(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_book3s_slbmte(i32, i32) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
