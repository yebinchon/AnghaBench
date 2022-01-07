; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_spiv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_set_spiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.kvm_lapic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@APIC_SPIV_APIC_ENABLED = common dso_local global i32 0, align 4
@APIC_SPIV = common dso_local global i32 0, align 4
@apic_sw_disabled = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*, i32)* @apic_set_spiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apic_set_spiv(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @APIC_SPIV_APIC_ENABLED, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %10 = load i32, i32* @APIC_SPIV, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @static_key_slow_dec_deferred(%struct.TYPE_5__* @apic_sw_disabled)
  br label %28

26:                                               ; preds = %18
  %27 = call i32 @static_key_slow_inc(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @apic_sw_disabled, i32 0, i32 0))
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @recalculate_apic_map(i32 %33)
  br label %35

35:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i32, i32) #1

declare dso_local i32 @static_key_slow_dec_deferred(%struct.TYPE_5__*) #1

declare dso_local i32 @static_key_slow_inc(i32*) #1

declare dso_local i32 @recalculate_apic_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
