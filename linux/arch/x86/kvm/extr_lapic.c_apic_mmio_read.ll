; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_lapic = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_X86_QUIRK_LAPIC_MMIO_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i64, i32, i8*)* @apic_mmio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_mmio_read(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_lapic*, align 8
  %13 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %15 = call %struct.kvm_lapic* @to_lapic(%struct.kvm_io_device* %14)
  store %struct.kvm_lapic* %15, %struct.kvm_lapic** %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %13, align 8
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @apic_mmio_in_range(%struct.kvm_lapic* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %56

28:                                               ; preds = %5
  %29 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %30 = call i32 @kvm_apic_hw_enabled(%struct.kvm_lapic* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %34 = call i64 @apic_x2apic_mode(%struct.kvm_lapic* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32, %28
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KVM_X86_QUIRK_LAPIC_MMIO_HOLE, align 4
  %41 = call i32 @kvm_check_has_quirk(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %56

46:                                               ; preds = %36
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @memset(i8* %47, i32 255, i32 %48)
  store i32 0, i32* %6, align 4
  br label %56

50:                                               ; preds = %32
  %51 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @kvm_lapic_reg_read(%struct.kvm_lapic* %51, i64 %52, i32 %53, i8* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %50, %46, %43, %25
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.kvm_lapic* @to_lapic(%struct.kvm_io_device*) #1

declare dso_local i32 @apic_mmio_in_range(%struct.kvm_lapic*, i64) #1

declare dso_local i32 @kvm_apic_hw_enabled(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_check_has_quirk(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kvm_lapic_reg_read(%struct.kvm_lapic*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
