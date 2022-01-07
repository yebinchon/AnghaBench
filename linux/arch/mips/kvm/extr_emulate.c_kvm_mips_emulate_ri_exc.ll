; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_ri_exc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_ri_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i64, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@ST0_EXL = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Delivering RI @ pc %#lx\0A\00", align 1
@EXCCODE_RI = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Trying to deliver RI when EXL is already set\0A\00", align 1
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_ri_exc(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca %struct.mips_coproc*, align 8
  %10 = alloca %struct.kvm_vcpu_arch*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %7, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %8, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %13, i32 0, i32 1
  %15 = load %struct.mips_coproc*, %struct.mips_coproc** %14, align 8
  store %struct.mips_coproc* %15, %struct.mips_coproc** %9, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %17, %struct.kvm_vcpu_arch** %10, align 8
  %18 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %20 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %19)
  %21 = load i32, i32* @ST0_EXL, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %4
  %25 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %26 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %25, i64 %28)
  %30 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %31 = load i32, i32* @ST0_EXL, align 4
  %32 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CAUSEF_BD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %39 = load i32, i32* @CAUSEF_BD, align 4
  %40 = call i32 @kvm_set_c0_guest_cause(%struct.mips_coproc* %38, i32 %39)
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %43 = load i32, i32* @CAUSEF_BD, align 4
  %44 = call i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @kvm_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %51 = load i32, i32* @EXCCODE_RI, align 4
  %52 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %53 = shl i32 %51, %52
  %54 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %50, i32 255, i32 %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %56 = call i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %55)
  %57 = add nsw i64 %56, 384
  %58 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %63

60:                                               ; preds = %4
  %61 = call i32 @kvm_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_debug(i8*, i64) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

declare dso_local i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
