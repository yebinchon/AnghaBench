; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_is_broadcast_dest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_is_broadcast_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvm_lapic = type { i32 }
%struct.kvm_lapic_irq = type { i64 }
%struct.kvm_apic_map = type { i64 }

@APIC_BROADCAST = common dso_local global i64 0, align 8
@KVM_APIC_MODE_X2APIC = common dso_local global i64 0, align 8
@X2APIC_BROADCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_lapic**, %struct.kvm_lapic_irq*, %struct.kvm_apic_map*)* @kvm_apic_is_broadcast_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_is_broadcast_dest(%struct.kvm* %0, %struct.kvm_lapic** %1, %struct.kvm_lapic_irq* %2, %struct.kvm_apic_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_lapic**, align 8
  %8 = alloca %struct.kvm_lapic_irq*, align 8
  %9 = alloca %struct.kvm_apic_map*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_lapic** %1, %struct.kvm_lapic*** %7, align 8
  store %struct.kvm_lapic_irq* %2, %struct.kvm_lapic_irq** %8, align 8
  store %struct.kvm_apic_map* %3, %struct.kvm_apic_map** %9, align 8
  %11 = load %struct.kvm*, %struct.kvm** %6, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %8, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APIC_BROADCAST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.kvm_apic_map*, %struct.kvm_apic_map** %9, align 8
  %24 = getelementptr inbounds %struct.kvm_apic_map, %struct.kvm_apic_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KVM_APIC_MODE_X2APIC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %67

29:                                               ; preds = %22, %16
  %30 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %8, align 8
  %31 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @X2APIC_BROADCAST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %67

36:                                               ; preds = %29
  br label %66

37:                                               ; preds = %4
  %38 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %7, align 8
  %39 = icmp ne %struct.kvm_lapic** %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %7, align 8
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %41, align 8
  %43 = icmp ne %struct.kvm_lapic* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.kvm_lapic**, %struct.kvm_lapic*** %7, align 8
  %46 = load %struct.kvm_lapic*, %struct.kvm_lapic** %45, align 8
  %47 = call i64 @apic_x2apic_mode(%struct.kvm_lapic* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %40, %37
  %50 = phi i1 [ false, %40 ], [ false, %37 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %8, align 8
  %53 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @X2APIC_BROADCAST, align 8
  br label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @APIC_BROADCAST, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %58, %57 ], [ %60, %59 ]
  %63 = icmp eq i64 %54, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %67

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %36
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %64, %35, %28
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @apic_x2apic_mode(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
