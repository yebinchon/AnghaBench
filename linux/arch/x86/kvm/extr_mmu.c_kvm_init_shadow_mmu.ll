; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_init_shadow_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_init_shadow_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.kvm_mmu_role = type { i64 }
%struct.TYPE_6__ = type { i32 }

@mmu_base_role_mask = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_init_shadow_mmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  %4 = alloca %union.kvm_mmu_role, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  store %struct.kvm_mmu* %8, %struct.kvm_mmu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call i64 @kvm_calc_shadow_mmu_root_page_role(%struct.kvm_vcpu* %9, i32 0)
  %11 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mmu_base_role_mask, i32 0, i32 0), align 4
  %13 = bitcast %union.kvm_mmu_role* %4 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = bitcast %union.kvm_mmu_role* %4 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %64

25:                                               ; preds = %1
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i32 @is_paging(%struct.kvm_vcpu* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %32 = call i32 @nonpaging_init_context(%struct.kvm_vcpu* %30, %struct.kvm_mmu* %31)
  br label %55

33:                                               ; preds = %25
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = call i64 @is_long_mode(%struct.kvm_vcpu* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %40 = call i32 @paging64_init_context(%struct.kvm_vcpu* %38, %struct.kvm_mmu* %39)
  br label %54

41:                                               ; preds = %33
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i64 @is_pae(%struct.kvm_vcpu* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %48 = call i32 @paging32E_init_context(%struct.kvm_vcpu* %46, %struct.kvm_mmu* %47)
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %52 = call i32 @paging32_init_context(%struct.kvm_vcpu* %50, %struct.kvm_mmu* %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %37
  br label %55

55:                                               ; preds = %54, %29
  %56 = bitcast %union.kvm_mmu_role* %4 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %63 = call i32 @reset_shadow_zero_bits_mask(%struct.kvm_vcpu* %61, %struct.kvm_mmu* %62)
  br label %64

64:                                               ; preds = %55, %24
  ret void
}

declare dso_local i64 @kvm_calc_shadow_mmu_root_page_role(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @nonpaging_init_context(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @paging64_init_context(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @paging32E_init_context(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @paging32_init_context(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @reset_shadow_zero_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
