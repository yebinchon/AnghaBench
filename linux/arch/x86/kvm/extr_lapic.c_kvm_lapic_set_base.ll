; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_set_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@apic_hw_disabled = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@X2APIC_ENABLE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_11__* null, align 8
@MSR_IA32_APICBASE_BASE = common dso_local global i32 0, align 4
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"APIC base relocation is unsupported by KVM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_lapic_set_base(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %13, align 8
  store %struct.kvm_lapic* %14, %struct.kvm_lapic** %6, align 8
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %16 = icmp ne %struct.kvm_lapic* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %26, %27
  %29 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i32 @kvm_update_cpuid(%struct.kvm_vcpu* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %37 = icmp ne %struct.kvm_lapic* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %121

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = xor i32 %40, %41
  %43 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic* %52, i32 %55)
  %57 = call i32 @static_key_slow_dec_deferred(%struct.TYPE_10__* @apic_hw_disabled)
  br label %64

58:                                               ; preds = %46
  %59 = call i32 @static_key_slow_inc(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @apic_hw_disabled, i32 0, i32 0))
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @recalculate_apic_map(i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = xor i32 %66, %67
  %69 = load i32, i32* @X2APIC_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @X2APIC_ENABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @kvm_apic_set_x2apic_id(%struct.kvm_lapic* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72, %65
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = xor i32 %84, %85
  %87 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %88 = load i32, i32* @X2APIC_ENABLE, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @kvm_x86_ops, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %94, align 8
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i32 %95(%struct.kvm_vcpu* %96)
  br label %98

98:                                               ; preds = %92, %83
  %99 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %100 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MSR_IA32_APICBASE_BASE, align 4
  %106 = and i32 %104, %105
  %107 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %108 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %98
  %114 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %115 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 @pr_warn_once(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %121

121:                                              ; preds = %38, %119, %113, %98
  ret void
}

declare dso_local i32 @kvm_update_cpuid(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @static_key_slow_dec_deferred(%struct.TYPE_10__*) #1

declare dso_local i32 @static_key_slow_inc(i32*) #1

declare dso_local i32 @recalculate_apic_map(i32) #1

declare dso_local i32 @kvm_apic_set_x2apic_id(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
