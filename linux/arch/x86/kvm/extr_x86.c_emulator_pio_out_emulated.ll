; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_out_emulated.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_pio_out_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KVM_PIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i32, i16, i8*, i32)* @emulator_pio_out_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_pio_out_emulated(%struct.x86_emulate_ctxt* %0, i32 %1, i16 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_vcpu*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %13 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %12)
  store %struct.kvm_vcpu* %13, %struct.kvm_vcpu** %11, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %19, %20
  %22 = call i32 @memcpy(i32 %17, i8* %18, i32 %21)
  %23 = load i32, i32* @KVM_PIO_OUT, align 4
  %24 = load i16, i16* %8, align 2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_kvm_pio(i32 %23, i16 zeroext %24, i32 %25, i32 %26, i32 %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i16, i16* %8, align 2
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @emulator_pio_in_out(%struct.kvm_vcpu* %32, i32 %33, i16 zeroext %34, i8* %35, i32 %36, i32 0)
  ret i32 %37
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @trace_kvm_pio(i32, i16 zeroext, i32, i32, i32) #1

declare dso_local i32 @emulator_pio_in_out(%struct.kvm_vcpu*, i32, i16 zeroext, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
