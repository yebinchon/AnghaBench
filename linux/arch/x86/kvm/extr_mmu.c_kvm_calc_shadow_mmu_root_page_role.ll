; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_shadow_mmu_root_page_role.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_calc_shadow_mmu_root_page_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.kvm_mmu_role = type { %struct.TYPE_3__, [8 x i8] }
%struct.TYPE_3__ = type { i64, i64 }
%struct.kvm_vcpu = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@PT32E_ROOT_LEVEL = common dso_local global i32 0, align 4
@PT64_ROOT_5LEVEL = common dso_local global i32 0, align 4
@PT64_ROOT_4LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.kvm_mmu_role*, %struct.kvm_vcpu*, i32)* @kvm_calc_shadow_mmu_root_page_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_calc_shadow_mmu_root_page_role(%union.kvm_mmu_role* noalias sret %0, %struct.kvm_vcpu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  store i32 %2, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = load i32, i32* %5, align 4
  call void @kvm_calc_mmu_role_common(%union.kvm_mmu_role* sret %0, %struct.kvm_vcpu* %6, i32 %7)
  %8 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = call i32 @is_write_protection(%struct.kvm_vcpu* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = call i32 @is_write_protection(%struct.kvm_vcpu* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %17
  %32 = phi i1 [ false, %17 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i32 @is_paging(%struct.kvm_vcpu* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = call i32 @is_pae(%struct.kvm_vcpu* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = call i32 @is_long_mode(%struct.kvm_vcpu* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %31
  %55 = load i32, i32* @PT32E_ROOT_LEVEL, align 4
  %56 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  br label %71

58:                                               ; preds = %31
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %60 = call i64 @is_la57_mode(%struct.kvm_vcpu* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @PT64_ROOT_5LEVEL, align 4
  %64 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @PT64_ROOT_4LEVEL, align 4
  %68 = bitcast %union.kvm_mmu_role* %0 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %54
  ret void
}

declare dso_local void @kvm_calc_mmu_role_common(%union.kvm_mmu_role* sret, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_write_protection(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_la57_mode(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
