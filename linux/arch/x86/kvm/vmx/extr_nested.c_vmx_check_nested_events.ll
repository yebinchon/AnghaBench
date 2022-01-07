; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_check_nested_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_check_nested_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__, %struct.kvm_lapic* }
%struct.TYPE_4__ = type { i64 }
%struct.kvm_lapic = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@KVM_APIC_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EXIT_REASON_INIT_SIGNAL = common dso_local global i32 0, align 4
@EXIT_REASON_PREEMPTION_TIMER = common dso_local global i32 0, align 4
@EXIT_REASON_EXCEPTION_NMI = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@INTR_TYPE_NMI_INTR = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@EXIT_REASON_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @vmx_check_nested_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_check_nested_events(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %6, align 8
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %26, align 8
  store %struct.kvm_lapic* %27, %struct.kvm_lapic** %9, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = call i64 @lapic_in_kernel(%struct.kvm_vcpu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = load i32, i32* @KVM_APIC_INIT, align 4
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %9, align 8
  %34 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %143

43:                                               ; preds = %37
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load i32, i32* @EXIT_REASON_INIT_SIGNAL, align 4
  %46 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %44, i32 %45, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %143

47:                                               ; preds = %31, %21
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = call i64 @nested_vmx_check_exception(%struct.kvm_vcpu* %55, i64* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %143

64:                                               ; preds = %58
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @nested_vmx_inject_exception_vmexit(%struct.kvm_vcpu* %65, i64 %66)
  store i32 0, i32* %3, align 4
  br label %143

68:                                               ; preds = %54, %47
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 @get_vmcs12(%struct.kvm_vcpu* %69)
  %71 = call i64 @nested_cpu_has_preemption_timer(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %75 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %143

85:                                               ; preds = %79
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = load i32, i32* @EXIT_REASON_PREEMPTION_TIMER, align 4
  %88 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %86, i32 %87, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %143

89:                                               ; preds = %73, %68
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %97 = call i64 @nested_exit_on_nmi(%struct.kvm_vcpu* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %143

105:                                              ; preds = %99
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %107 = load i32, i32* @EXIT_REASON_EXCEPTION_NMI, align 4
  %108 = load i32, i32* @NMI_VECTOR, align 4
  %109 = load i32, i32* @INTR_TYPE_NMI_INTR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %106, i32 %107, i32 %112, i32 0)
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %118 = call i32 @vmx_set_nmi_mask(%struct.kvm_vcpu* %117, i32 1)
  store i32 0, i32* %3, align 4
  br label %143

119:                                              ; preds = %95, %89
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = call i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %123, %119
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = call i64 @nested_exit_on_intr(%struct.kvm_vcpu* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EBUSY, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %143

136:                                              ; preds = %130
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %138 = load i32, i32* @EXIT_REASON_EXTERNAL_INTERRUPT, align 4
  %139 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %137, i32 %138, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %143

140:                                              ; preds = %126, %123
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %142 = call i32 @vmx_complete_nested_posted_interrupt(%struct.kvm_vcpu* %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %140, %136, %133, %105, %102, %85, %82, %64, %61, %43, %40
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_event_needs_reinjection(%struct.kvm_vcpu*) #1

declare dso_local i64 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i64 @nested_vmx_check_exception(%struct.kvm_vcpu*, i64*) #1

declare dso_local i32 @nested_vmx_inject_exception_vmexit(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @nested_cpu_has_preemption_timer(i32) #1

declare dso_local i32 @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_exit_on_nmi(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_set_nmi_mask(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_cpu_has_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i64 @nested_exit_on_intr(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_complete_nested_posted_interrupt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
