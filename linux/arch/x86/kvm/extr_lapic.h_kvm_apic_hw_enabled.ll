; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.h_kvm_apic_hw_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.h_kvm_apic_hw_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kvm_lapic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@apic_hw_disabled = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @kvm_apic_hw_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_hw_enabled(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %4 = call i64 @static_key_false(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @apic_hw_disabled, i32 0, i32 0))
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %6
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @static_key_false(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
