; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_exc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_exc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i32, i64, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4
@ST0_EXL = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Delivering EXC %d @ pc %#lx, badVaddr: %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Trying to deliver EXC when EXL is already set\0A\00", align 1
@EMULATE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_mips_emulate_exc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_emulate_exc(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mips_coproc*, align 8
  %11 = alloca %struct.kvm_vcpu_arch*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %7, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 31
  store i32 %16, i32* %9, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %18, i32 0, i32 2
  %20 = load %struct.mips_coproc*, %struct.mips_coproc** %19, align 8
  store %struct.mips_coproc* %20, %struct.mips_coproc** %10, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %22, %struct.kvm_vcpu_arch** %11, align 8
  %23 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %25 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %24)
  %26 = load i32, i32* @ST0_EXL, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %4
  %30 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %31 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %11, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %30, i64 %33)
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %36 = load i32, i32* @ST0_EXL, align 4
  %37 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CAUSEF_BD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %44 = load i32, i32* @CAUSEF_BD, align 4
  %45 = call i32 @kvm_set_c0_guest_cause(%struct.mips_coproc* %43, i32 %44)
  br label %50

46:                                               ; preds = %29
  %47 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %48 = load i32, i32* @CAUSEF_BD, align 4
  %49 = call i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %54 = shl i32 %52, %53
  %55 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %51, i32 255, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %57 = call i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %56)
  %58 = add nsw i64 %57, 384
  %59 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %11, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc* %61, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %69 = call i32 @kvm_read_c0_guest_epc(%struct.mips_coproc* %68)
  %70 = load %struct.mips_coproc*, %struct.mips_coproc** %10, align 8
  %71 = call i32 @kvm_read_c0_guest_badvaddr(%struct.mips_coproc* %70)
  %72 = call i32 @kvm_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %69, i32 %71)
  br label %76

73:                                               ; preds = %4
  %74 = call i32 @kvm_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %50
  %77 = load i32, i32* %12, align 4
  ret i32 %77
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

declare dso_local i64 @kvm_mips_guest_exception_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @kvm_read_c0_guest_epc(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_badvaddr(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
