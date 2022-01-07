; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.page = type { i32 }

@emulate_ops = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@KVM_MP_STATE_UNINITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max_tsc_khz = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@lapic_timer_advance_ns = common dso_local global i32 0, align 4
@kvm_no_apic_vcpu = common dso_local global i32 0, align 4
@KVM_MAX_MCE_BANKS = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@XSAVE_HDR_SIZE = common dso_local global i64 0, align 8
@XSAVE_HDR_OFFSET = common dso_local global i64 0, align 8
@MSR_IA32_CR_PAT_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* @emulate_ops, i32** %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @irqchip_in_kernel(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 10
  store i32 %20, i32* %23, align 8
  br label %29

24:                                               ; preds = %15
  %25 = load i32, i32* @KVM_MP_STATE_UNINITIALIZED, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 10
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @__GFP_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.page* @alloc_page(i32 %32)
  store %struct.page* %33, %struct.page** %4, align 8
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %158

39:                                               ; preds = %29
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i64 @page_address(%struct.page* %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i64 %41, i64* %44, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = load i32, i32* @max_tsc_khz, align 4
  %47 = call i32 @kvm_set_tsc_khz(%struct.kvm_vcpu* %45, i32 %46)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @kvm_mmu_create(%struct.kvm_vcpu* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %152

53:                                               ; preds = %39
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @irqchip_in_kernel(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %61, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 %62(%struct.kvm_vcpu* %63)
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 9
  store i32 %64, i32* %67, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = load i32, i32* @lapic_timer_advance_ns, align 4
  %70 = call i32 @kvm_create_lapic(%struct.kvm_vcpu* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %149

74:                                               ; preds = %59
  br label %77

75:                                               ; preds = %53
  %76 = call i32 @static_key_slow_inc(i32* @kvm_no_apic_vcpu)
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %84 = call i32 @kzalloc(i32 %82, i32 %83)
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 4
  store i32 %84, i32* %87, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %146

96:                                               ; preds = %77
  %97 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 8
  %104 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %105 = call i32 @zalloc_cpumask_var(i32* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %140

110:                                              ; preds = %96
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = call i32 @fx_init(%struct.kvm_vcpu* %111)
  %113 = load i64, i64* @XSAVE_HDR_SIZE, align 8
  %114 = load i64, i64* @XSAVE_HDR_OFFSET, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  store i64 %115, i64* %118, align 8
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %120 = call i32 @cpuid_query_maxphyaddr(%struct.kvm_vcpu* %119)
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 6
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* @MSR_IA32_CR_PAT_DEFAULT, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  store i32 %124, i32* %127, align 4
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = call i32 @kvm_async_pf_hash_reset(%struct.kvm_vcpu* %128)
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = call i32 @kvm_pmu_init(%struct.kvm_vcpu* %130)
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 -1, i32* %134, align 4
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %139 = call i32 @kvm_hv_vcpu_init(%struct.kvm_vcpu* %138)
  store i32 0, i32* %2, align 4
  br label %160

140:                                              ; preds = %107
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @kfree(i32 %144)
  br label %146

146:                                              ; preds = %140, %93
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = call i32 @kvm_free_lapic(%struct.kvm_vcpu* %147)
  br label %149

149:                                              ; preds = %146, %73
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %151 = call i32 @kvm_mmu_destroy(%struct.kvm_vcpu* %150)
  br label %152

152:                                              ; preds = %149, %52
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %154 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @free_page(i64 %156)
  br label %158

158:                                              ; preds = %152, %36
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %110
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @kvm_set_tsc_khz(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_create(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_create_lapic(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @static_key_slow_inc(i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @fx_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpuid_query_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_async_pf_hash_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pmu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_hv_vcpu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvm_free_lapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_destroy(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
