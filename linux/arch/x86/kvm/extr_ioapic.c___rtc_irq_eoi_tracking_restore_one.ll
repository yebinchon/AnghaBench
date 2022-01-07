; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c___rtc_irq_eoi_tracking_restore_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c___rtc_irq_eoi_tracking_restore_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { %struct.TYPE_8__, %union.kvm_ioapic_redirect_entry* }
%struct.TYPE_8__ = type { i32, %struct.dest_map }
%struct.dest_map = type { i32, i32* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@RTC_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @__rtc_irq_eoi_tracking_restore_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtc_irq_eoi_tracking_restore_one(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_ioapic*, align 8
  %6 = alloca %struct.dest_map*, align 8
  %7 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %12, align 8
  store %struct.kvm_ioapic* %13, %struct.kvm_ioapic** %5, align 8
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.dest_map* %16, %struct.dest_map** %6, align 8
  %17 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %17, i32 0, i32 1
  %19 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %18, align 8
  %20 = load i64, i64* @RTC_GSI, align 8
  %21 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %19, i64 %20
  store %union.kvm_ioapic_redirect_entry* %21, %union.kvm_ioapic_redirect_entry** %7, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %24 = bitcast %union.kvm_ioapic_redirect_entry* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %28 = bitcast %union.kvm_ioapic_redirect_entry* %27 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kvm_apic_match_dest(%struct.kvm_vcpu* %22, i32* null, i32 0, i32 %26, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  br label %94

34:                                               ; preds = %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %37 = bitcast %union.kvm_ioapic_redirect_entry* %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvm_apic_pending_eoi(%struct.kvm_vcpu* %35, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %45 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @test_bit(i64 %43, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %94

52:                                               ; preds = %34
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %60 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__set_bit(i64 %58, i32 %61)
  %63 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %7, align 8
  %64 = bitcast %union.kvm_ioapic_redirect_entry* %63 to %struct.TYPE_7__*
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %68 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %73, align 4
  %74 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %94

79:                                               ; preds = %52
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dest_map*, %struct.dest_map** %6, align 8
  %84 = getelementptr inbounds %struct.dest_map, %struct.dest_map* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @__clear_bit(i64 %82, i32 %85)
  %87 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %88 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %93 = call i32 @rtc_status_pending_eoi_check_valid(%struct.kvm_ioapic* %92)
  br label %94

94:                                               ; preds = %33, %51, %79, %55
  ret void
}

declare dso_local i32 @kvm_apic_match_dest(%struct.kvm_vcpu*, i32*, i32, i32, i32) #1

declare dso_local i32 @kvm_apic_pending_eoi(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @rtc_status_pending_eoi_check_valid(%struct.kvm_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
