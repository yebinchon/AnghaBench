; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.kvm_lapic*, i32 }
%struct.kvm_lapic = type { i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_lapic_state = type { i64 }

@APIC_SPIV = common dso_local global i64 0, align 8
@APIC_LVT0 = common dso_local global i32 0, align 4
@APIC_ISR = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_6__* null, align 8
@KVM_REQ_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_set_state(%struct.kvm_vcpu* %0, %struct.kvm_lapic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_lapic_state*, align 8
  %6 = alloca %struct.kvm_lapic*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_lapic_state* %1, %struct.kvm_lapic_state** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  store %struct.kvm_lapic* %11, %struct.kvm_lapic** %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kvm_lapic_set_base(%struct.kvm_vcpu* %12, i32 %16)
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %19 = load %struct.kvm_lapic_state*, %struct.kvm_lapic_state** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_lapic_state, %struct.kvm_lapic_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @APIC_SPIV, align 8
  %23 = add nsw i64 %21, %22
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @apic_set_spiv(%struct.kvm_lapic* %18, i32 %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = load %struct.kvm_lapic_state*, %struct.kvm_lapic_state** %5, align 8
  %29 = call i32 @kvm_apic_state_fixup(%struct.kvm_vcpu* %27, %struct.kvm_lapic_state* %28, i32 1)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %130

34:                                               ; preds = %2
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %37, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kvm_lapic_state*, %struct.kvm_lapic_state** %5, align 8
  %42 = getelementptr inbounds %struct.kvm_lapic_state, %struct.kvm_lapic_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @memcpy(i64 %40, i64 %43, i32 8)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @recalculate_apic_map(i32 %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = call i32 @kvm_apic_set_version(%struct.kvm_vcpu* %49)
  %51 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %52 = call i32 @apic_update_ppr(%struct.kvm_lapic* %51)
  %53 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @hrtimer_cancel(i32* %55)
  %57 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %58 = call i32 @apic_update_lvtt(%struct.kvm_lapic* %57)
  %59 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %60 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %61 = load i32, i32* @APIC_LVT0, align 4
  %62 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %60, i32 %61)
  %63 = call i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic* %59, i32 %62)
  %64 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %65 = call i32 @update_divide_count(%struct.kvm_lapic* %64)
  %66 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %67 = call i32 @start_apic_timer(%struct.kvm_lapic* %66)
  %68 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %34
  br label %83

76:                                               ; preds = %34
  %77 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %78 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @APIC_ISR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @count_vectors(i64 %81)
  br label %83

83:                                               ; preds = %76, %75
  %84 = phi i32 [ 1, %75 ], [ %82, %76 ]
  %85 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %86 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %87, i32 0, i32 2
  store i32 -1, i32* %88, align 8
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %96, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %99 = call i32 %97(%struct.kvm_vcpu* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %101, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %105 = call i32 @apic_find_highest_irr(%struct.kvm_lapic* %104)
  %106 = call i32 %102(%struct.kvm_vcpu* %103, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_x86_ops, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %108, align 8
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %112 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %111)
  %113 = call i32 %109(%struct.kvm_vcpu* %110, i32 %112)
  br label %114

114:                                              ; preds = %94, %83
  %115 = load i32, i32* @KVM_REQ_EVENT, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = call i32 @kvm_make_request(i32 %115, %struct.kvm_vcpu* %116)
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @ioapic_in_kernel(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %125 = call i32 @kvm_rtc_eoi_tracking_restore_one(%struct.kvm_vcpu* %124)
  br label %126

126:                                              ; preds = %123, %114
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %32
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @kvm_lapic_set_base(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @apic_set_spiv(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_state_fixup(%struct.kvm_vcpu*, %struct.kvm_lapic_state*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @recalculate_apic_map(i32) #1

declare dso_local i32 @kvm_apic_set_version(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @apic_update_lvtt(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @update_divide_count(%struct.kvm_lapic*) #1

declare dso_local i32 @start_apic_timer(%struct.kvm_lapic*) #1

declare dso_local i32 @count_vectors(i64) #1

declare dso_local i32 @apic_find_highest_irr(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @ioapic_in_kernel(i32) #1

declare dso_local i32 @kvm_rtc_eoi_tracking_restore_one(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
