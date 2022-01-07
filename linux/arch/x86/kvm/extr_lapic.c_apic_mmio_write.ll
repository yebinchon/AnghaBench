; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_mmio_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_apic_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_lapic = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_X86_QUIRK_LAPIC_MMIO_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @apic_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_mmio_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_lapic*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %16 = call %struct.kvm_lapic* @to_lapic(%struct.kvm_io_device* %15)
  store %struct.kvm_lapic* %16, %struct.kvm_lapic** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %19 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @apic_mmio_in_range(%struct.kvm_lapic* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %65

29:                                               ; preds = %5
  %30 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %31 = call i32 @kvm_apic_hw_enabled(%struct.kvm_lapic* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %35 = call i64 @apic_x2apic_mode(%struct.kvm_lapic* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33, %29
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @KVM_X86_QUIRK_LAPIC_MMIO_HOLE, align 4
  %42 = call i32 @kvm_check_has_quirk(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %65

47:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %65

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 15
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %48
  store i32 0, i32* %6, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %11, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.kvm_lapic*, %struct.kvm_lapic** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 4080
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %60, i32 %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %56, %55, %47, %44, %26
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.kvm_lapic* @to_lapic(%struct.kvm_io_device*) #1

declare dso_local i32 @apic_mmio_in_range(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_hw_enabled(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_check_has_quirk(i32, i32) #1

declare dso_local i32 @kvm_lapic_reg_write(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
