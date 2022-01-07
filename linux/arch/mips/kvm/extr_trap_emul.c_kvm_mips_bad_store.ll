; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i8* }
%struct.kvm_vcpu = type { i32 }
%union.mips_instruction = type { i32 }

@CAUSEF_BD = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i8* null, align 8
@RESUME_HOST = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Emulate store to MMIO space failed\0A\00", align 1
@KVM_EXIT_MMIO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_mips_bad_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_bad_store(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_run*, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.mips_instruction, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %8, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CAUSEF_BD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %7, align 8
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %23 = bitcast %union.mips_instruction* %11 to i32*
  %24 = call i32 @kvm_get_badinstr(i32* %21, %struct.kvm_vcpu* %22, i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %29 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %30 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @RESUME_HOST, align 4
  store i32 %31, i32* %5, align 4
  br label %53

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %36 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kvm_mips_emulate_store(i32 %37, i32 %33, %struct.kvm_run* %34, %struct.kvm_vcpu* %35)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EMULATE_FAIL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = call i32 @kvm_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %45 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %32
  %48 = load i8*, i8** @KVM_EXIT_MMIO, align 8
  %49 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %50 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @RESUME_HOST, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %27
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_mips_emulate_store(i32, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
