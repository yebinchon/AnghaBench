; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_eret.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emul_eret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@ST0_EXL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"[%#lx] ERET to %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[%#lx] ERET when MIPS_SR_EXL|MIPS_SR_ERL == 0\0A\00", align 1
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emul_eret(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.mips_coproc*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  store %struct.mips_coproc* %8, %struct.mips_coproc** %3, align 8
  %9 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %11 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %10)
  %12 = load i32, i32* @ST0_ERL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %17 = load i32, i32* @ST0_ERL, align 4
  %18 = call i32 @kvm_clear_c0_guest_status(%struct.mips_coproc* %16, i32 %17)
  %19 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %20 = call i32 @kvm_read_c0_guest_errorepc(%struct.mips_coproc* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %26 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %25)
  %27 = load i32, i32* @ST0_EXL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %36 = call i32 @kvm_read_c0_guest_epc(%struct.mips_coproc* %35)
  %37 = call i32 @kvm_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %39 = load i32, i32* @ST0_EXL, align 4
  %40 = call i32 @kvm_clear_c0_guest_status(%struct.mips_coproc* %38, i32 %39)
  %41 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %42 = call i32 @kvm_read_c0_guest_epc(%struct.mips_coproc* %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  br label %53

46:                                               ; preds = %24
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kvm_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %30
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_clear_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_errorepc(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_debug(i8*, i32, i32) #1

declare dso_local i32 @kvm_read_c0_guest_epc(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
