; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_init_shadow_ept_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_init_shadow_ept_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i32, i32, i32, %struct.TYPE_6__, i8*, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i64 }
%union.kvm_mmu_role = type { i64 }
%struct.TYPE_8__ = type { i32 }

@mmu_base_role_mask = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PT64_ROOT_4LEVEL = common dso_local global i8* null, align 8
@ept_page_fault = common dso_local global i32 0, align 4
@ept_gva_to_gpa = common dso_local global i32 0, align 4
@ept_sync_page = common dso_local global i32 0, align 4
@ept_invlpg = common dso_local global i32 0, align 4
@ept_update_pte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_init_shadow_ept_mmu(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_mmu*, align 8
  %10 = alloca %union.kvm_mmu_role, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %13, align 8
  store %struct.kvm_mmu* %14, %struct.kvm_mmu** %9, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @kvm_calc_shadow_ept_root_page_role(%struct.kvm_vcpu* %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = bitcast %union.kvm_mmu_role* %10 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__kvm_mmu_new_cr3(%struct.kvm_vcpu* %20, i32 %21, i32 %24, i32 0)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mmu_base_role_mask, i32 0, i32 0), align 4
  %27 = bitcast %union.kvm_mmu_role* %10 to %struct.TYPE_8__*
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = bitcast %union.kvm_mmu_role* %10 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %34 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %90

39:                                               ; preds = %4
  %40 = load i8*, i8** @PT64_ROOT_4LEVEL, align 8
  %41 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %44 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ept_page_fault, align 4
  %49 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %50 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @ept_gva_to_gpa, align 4
  %52 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %53 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ept_sync_page, align 4
  %55 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %56 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ept_invlpg, align 4
  %58 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %59 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ept_update_pte, align 4
  %61 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %62 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @PT64_ROOT_4LEVEL, align 8
  %64 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %65 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %67 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = bitcast %union.kvm_mmu_role* %10 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %71 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %74 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %75 = call i32 @update_permission_bitmask(%struct.kvm_vcpu* %73, %struct.kvm_mmu* %74, i32 1)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %77 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %78 = call i32 @update_pkru_bitmask(%struct.kvm_vcpu* %76, %struct.kvm_mmu* %77, i32 1)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %80 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %81 = call i32 @update_last_nonleaf_level(%struct.kvm_vcpu* %79, %struct.kvm_mmu* %80)
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %83 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @reset_rsvds_bits_mask_ept(%struct.kvm_vcpu* %82, %struct.kvm_mmu* %83, i32 %84)
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %87 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @reset_ept_shadow_zero_bits_mask(%struct.kvm_vcpu* %86, %struct.kvm_mmu* %87, i32 %88)
  br label %90

90:                                               ; preds = %39, %38
  ret void
}

declare dso_local i64 @kvm_calc_shadow_ept_root_page_role(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @__kvm_mmu_new_cr3(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @update_permission_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_pkru_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_last_nonleaf_level(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @reset_rsvds_bits_mask_ept(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @reset_ept_shadow_zero_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
