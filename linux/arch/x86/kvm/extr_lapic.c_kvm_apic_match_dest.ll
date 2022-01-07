; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_dest.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_DEST_PHYSICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_match_dest(%struct.kvm_vcpu* %0, %struct.kvm_lapic* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_lapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_lapic*, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %16, align 8
  store %struct.kvm_lapic* %17, %struct.kvm_lapic** %12, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %22 = call i32 @kvm_apic_mda(%struct.kvm_vcpu* %18, i32 %19, %struct.kvm_lapic* %20, %struct.kvm_lapic* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %24 = call i32 @ASSERT(%struct.kvm_lapic* %23)
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %49 [
    i32 129, label %26
    i32 128, label %38
    i32 130, label %43
    i32 131, label %44
  ]

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @APIC_DEST_PHYSICAL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @kvm_apic_match_logical_addr(%struct.kvm_lapic* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %50

38:                                               ; preds = %5
  %39 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %41 = icmp eq %struct.kvm_lapic* %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %50

44:                                               ; preds = %5
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %46 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %47 = icmp ne %struct.kvm_lapic* %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  br label %50

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %44, %43, %38, %34, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @kvm_apic_mda(%struct.kvm_vcpu*, i32, %struct.kvm_lapic*, %struct.kvm_lapic*) #1

declare dso_local i32 @ASSERT(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_match_logical_addr(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
