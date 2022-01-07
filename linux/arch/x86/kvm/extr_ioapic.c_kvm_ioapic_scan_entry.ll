; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_scan_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_kvm_ioapic_scan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { i32, i32, %union.kvm_ioapic_redirect_entry*, %struct.TYPE_7__ }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.dest_map }
%struct.dest_map = type { i32*, i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@IOAPIC_LEVEL_TRIG = common dso_local global i64 0, align 8
@KVM_IRQCHIP_IOAPIC = common dso_local global i32 0, align 4
@RTC_GSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_ioapic_scan_entry(%struct.kvm_vcpu* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_ioapic*, align 8
  %6 = alloca %struct.dest_map*, align 8
  %7 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %13, align 8
  store %struct.kvm_ioapic* %14, %struct.kvm_ioapic** %5, align 8
  %15 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.dest_map* %17, %struct.dest_map** %6, align 8
  %18 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %25 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @test_bit(i64 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %31 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @__set_bit(i32 %37, i32* %38)
  br label %40

40:                                               ; preds = %29, %2
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %99, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  %46 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %46, i32 0, i32 2
  %48 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %48, i64 %50
  store %union.kvm_ioapic_redirect_entry* %51, %union.kvm_ioapic_redirect_entry** %7, align 8
  %52 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %53 = bitcast %union.kvm_ioapic_redirect_entry* %52 to %struct.TYPE_8__*
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IOAPIC_LEVEL_TRIG, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %45
  %59 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %60 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KVM_IRQCHIP_IOAPIC, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @kvm_irq_has_notifier(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @RTC_GSI, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66, %58, %45
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %73 = bitcast %union.kvm_ioapic_redirect_entry* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %77 = bitcast %union.kvm_ioapic_redirect_entry* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @kvm_apic_match_dest(%struct.kvm_vcpu* %71, i32* null, i32 0, i32 %75, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %70
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %85 = bitcast %union.kvm_ioapic_redirect_entry* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @kvm_apic_pending_eoi(%struct.kvm_vcpu* %83, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82, %70
  %91 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %92 = bitcast %union.kvm_ioapic_redirect_entry* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @__set_bit(i32 %94, i32* %95)
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %41

102:                                              ; preds = %41
  %103 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %104 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @kvm_irq_has_notifier(i32, i32, i32) #1

declare dso_local i64 @kvm_apic_match_dest(%struct.kvm_vcpu*, i32*, i32, i32, i32) #1

declare dso_local i64 @kvm_apic_pending_eoi(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
