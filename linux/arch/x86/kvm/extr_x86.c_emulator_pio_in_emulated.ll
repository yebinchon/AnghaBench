; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_in_emulated.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_in_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@KVM_PIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i16, i8*, i32)* @emulator_pio_in_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_pio_in_emulated(%struct.x86_emulate_ctxt* %0, i32 %1, i16 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca i32, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %15 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %14)
  store %struct.kvm_vcpu* %15, %struct.kvm_vcpu** %12, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %41

23:                                               ; preds = %5
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul i32 %28, %29
  %31 = call i32 @memset(i32 %27, i32 0, i32 %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i16, i16* %9, align 2
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @emulator_pio_in_out(%struct.kvm_vcpu* %32, i32 %33, i16 zeroext %34, i8* %35, i32 %36, i32 1)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul i32 %47, %48
  %50 = call i32 @memcpy(i8* %42, i32 %46, i32 %49)
  %51 = load i32, i32* @KVM_PIO_IN, align 4
  %52 = load i16, i16* %9, align 2
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @trace_kvm_pio(i32 %51, i16 zeroext %52, i32 %53, i32 %54, i32 %58)
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  store i32 1, i32* %6, align 4
  br label %65

64:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @emulator_pio_in_out(%struct.kvm_vcpu*, i32, i16 zeroext, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @trace_kvm_pio(i32, i16 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
