; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_fpu_exc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_fpu_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i64, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@ST0_EXL = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EXCCODE_CPU = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@CAUSEF_CE = common dso_local global i32 0, align 4
@CAUSEB_CE = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_fpu_exc(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca %struct.mips_coproc*, align 8
  %10 = alloca %struct.kvm_vcpu_arch*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %7, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %8, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %12, i32 0, i32 1
  %14 = load %struct.mips_coproc*, %struct.mips_coproc** %13, align 8
  store %struct.mips_coproc* %14, %struct.mips_coproc** %9, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %16, %struct.kvm_vcpu_arch** %10, align 8
  %17 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %18 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %17)
  %19 = load i32, i32* @ST0_EXL, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %4
  %23 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %24 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %23, i64 %26)
  %28 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %29 = load i32, i32* @ST0_EXL, align 4
  %30 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CAUSEF_BD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %37 = load i32, i32* @CAUSEF_BD, align 4
  %38 = call i32 @kvm_set_c0_guest_cause(%struct.mips_coproc* %36, i32 %37)
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %41 = load i32, i32* @CAUSEF_BD, align 4
  %42 = call i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %46 = call i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %45)
  %47 = add nsw i64 %46, 384
  %48 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %51 = load i32, i32* @EXCCODE_CPU, align 4
  %52 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %50, i32 255, i32 %53)
  %55 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %56 = load i32, i32* @CAUSEF_CE, align 4
  %57 = load i32, i32* @CAUSEB_CE, align 4
  %58 = shl i32 1, %57
  %59 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %55, i32 %56, i32 %58)
  %60 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %60
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
