; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c___kvm_ioapic_update_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c___kvm_ioapic_update_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }
%struct.kvm_ioapic = type { i32, i64*, i32, i32, i32, %union.kvm_ioapic_redirect_entry*, %struct.TYPE_4__ }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.dest_map }
%struct.dest_map = type { i32*, i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@KVM_IRQCHIP_IOAPIC = common dso_local global i32 0, align 4
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@APIC_SPIV = common dso_local global i32 0, align 4
@APIC_SPIV_DIRECTED_EOI = common dso_local global i32 0, align 4
@IOAPIC_SUCCESSIVE_IRQ_MAX_COUNT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_ioapic*, i32, i32)* @__kvm_ioapic_update_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kvm_ioapic_update_eoi(%struct.kvm_vcpu* %0, %struct.kvm_ioapic* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_ioapic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dest_map*, align 8
  %10 = alloca %struct.kvm_lapic*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_ioapic* %1, %struct.kvm_ioapic** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.dest_map* %15, %struct.dest_map** %9, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.kvm_lapic*, %struct.kvm_lapic** %18, align 8
  store %struct.kvm_lapic* %19, %struct.kvm_lapic** %10, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dest_map*, %struct.dest_map** %9, align 8
  %24 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @test_bit(i64 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dest_map*, %struct.dest_map** %9, align 8
  %31 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %29, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = call i32 @rtc_irq_eoi(%struct.kvm_ioapic* %40, %struct.kvm_vcpu* %41)
  br label %43

43:                                               ; preds = %39, %28, %4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %158, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %161

48:                                               ; preds = %44
  %49 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %49, i32 0, i32 5
  %51 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %51, i64 %53
  store %union.kvm_ioapic_redirect_entry* %54, %union.kvm_ioapic_redirect_entry** %12, align 8
  %55 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %56 = bitcast %union.kvm_ioapic_redirect_entry* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %158

62:                                               ; preds = %48
  %63 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %67 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @KVM_IRQCHIP_IOAPIC, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @kvm_notify_acked_irq(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %72, i32 0, i32 3
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %62
  %79 = load %struct.kvm_lapic*, %struct.kvm_lapic** %10, align 8
  %80 = load i32, i32* @APIC_SPIV, align 4
  %81 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %79, i32 %80)
  %82 = load i32, i32* @APIC_SPIV_DIRECTED_EOI, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78, %62
  br label %158

86:                                               ; preds = %78
  %87 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %88 = bitcast %union.kvm_ioapic_redirect_entry* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %96 = bitcast %union.kvm_ioapic_redirect_entry* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %99 = bitcast %union.kvm_ioapic_redirect_entry* %98 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %150, label %103

103:                                              ; preds = %86
  %104 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %105 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %150

111:                                              ; preds = %103
  %112 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %113 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %121 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IOAPIC_SUCCESSIVE_IRQ_MAX_COUNT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %111
  %130 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %131 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %130, i32 0, i32 2
  %132 = load i32, i32* @HZ, align 4
  %133 = sdiv i32 %132, 100
  %134 = call i32 @schedule_delayed_work(i32* %131, i32 %133)
  %135 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %136 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 0, i64* %140, align 8
  %141 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %142 = bitcast %union.kvm_ioapic_redirect_entry* %141 to i32*
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @trace_kvm_ioapic_delayed_eoi_inj(i32 %143)
  br label %149

145:                                              ; preds = %111
  %146 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @ioapic_service(%struct.kvm_ioapic* %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %145, %129
  br label %157

150:                                              ; preds = %103, %86
  %151 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %6, align 8
  %152 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %150, %149
  br label %158

158:                                              ; preds = %157, %85, %61
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %44

161:                                              ; preds = %44
  ret void
}

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @rtc_irq_eoi(%struct.kvm_ioapic*, %struct.kvm_vcpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_notify_acked_irq(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @trace_kvm_ioapic_delayed_eoi_inj(i32) #1

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
