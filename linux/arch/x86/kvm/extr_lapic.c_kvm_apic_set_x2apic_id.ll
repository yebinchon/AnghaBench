; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_x2apic_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_x2apic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@APIC_ID = common dso_local global i32 0, align 4
@APIC_LDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*, i64)* @kvm_apic_set_x2apic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_apic_set_x2apic_id(%struct.kvm_lapic* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @kvm_apic_calc_x2apic_ldr(i64 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %8, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %18 = load i32, i32* @APIC_ID, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %17, i32 %18, i64 %19)
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = load i32, i32* @APIC_LDR, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %21, i32 %22, i64 %23)
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @recalculate_apic_map(i32 %29)
  ret void
}

declare dso_local i64 @kvm_apic_calc_x2apic_ldr(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i32, i64) #1

declare dso_local i32 @recalculate_apic_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
