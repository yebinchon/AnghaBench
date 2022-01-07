; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_ioapic_send_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_ioapic_send_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@KVM_REQ_IOAPIC_EOI_EXIT = common dso_local global i32 0, align 4
@APIC_TMR = common dso_local global i64 0, align 8
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@IOAPIC_EDGE_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*, i32)* @kvm_ioapic_send_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_ioapic_send_eoi(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @kvm_ioapic_handles_vector(%struct.kvm_lapic* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @irqchip_split(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* @KVM_REQ_IOAPIC_EOI_EXIT, align 4
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @kvm_make_request(i32 %26, %struct.TYPE_5__* %29)
  br label %51

31:                                               ; preds = %11
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APIC_TMR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @apic_test_vector(i32 %32, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @IOAPIC_EDGE_TRIG, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @kvm_ioapic_update_eoi(%struct.TYPE_5__* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %19, %10
  ret void
}

declare dso_local i32 @kvm_ioapic_handles_vector(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @irqchip_split(i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @apic_test_vector(i32, i64) #1

declare dso_local i32 @kvm_ioapic_update_eoi(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
