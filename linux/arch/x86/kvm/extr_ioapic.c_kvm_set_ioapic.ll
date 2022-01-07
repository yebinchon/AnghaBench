; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_set_ioapic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_set_ioapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { i32, i64, i64 }
%struct.kvm_ioapic_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_set_ioapic(%struct.kvm* %0, %struct.kvm_ioapic_state* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_ioapic_state*, align 8
  %5 = alloca %struct.kvm_ioapic*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_ioapic_state* %1, %struct.kvm_ioapic_state** %4, align 8
  %6 = load %struct.kvm*, %struct.kvm** %3, align 8
  %7 = getelementptr inbounds %struct.kvm, %struct.kvm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %8, align 8
  store %struct.kvm_ioapic* %9, %struct.kvm_ioapic** %5, align 8
  %10 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %14 = load %struct.kvm_ioapic_state*, %struct.kvm_ioapic_state** %4, align 8
  %15 = call i32 @memcpy(%struct.kvm_ioapic* %13, %struct.kvm_ioapic_state* %14, i32 4)
  %16 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = call i32 @kvm_make_scan_ioapic_request(%struct.kvm* %20)
  %22 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %23 = load %struct.kvm_ioapic_state*, %struct.kvm_ioapic_state** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic_state, %struct.kvm_ioapic_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kvm_ioapic_inject_all(%struct.kvm_ioapic* %22, i32 %25)
  %27 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.kvm_ioapic*, %struct.kvm_ioapic_state*, i32) #1

declare dso_local i32 @kvm_make_scan_ioapic_request(%struct.kvm*) #1

declare dso_local i32 @kvm_ioapic_inject_all(%struct.kvm_ioapic*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
