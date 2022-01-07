; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i8* }
%struct.kvm_vcpu = type { i32 }
%union.mips_instruction = type { i32 }

@KVM_EXIT_INTERNAL_ERROR = common dso_local global i8* null, align 8
@RESUME_HOST = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Emulate load from MMIO space failed\0A\00", align 1
@KVM_EXIT_MMIO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*)* @kvm_mips_bad_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_bad_load(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
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
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = call i64 @kvm_is_ifetch_fault(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %19 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %20 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @RESUME_HOST, align 4
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CAUSEF_BD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %33 = bitcast %union.mips_instruction* %11 to i32*
  %34 = call i32 @kvm_get_badinstr(i32* %31, %struct.kvm_vcpu* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %39 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %40 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @RESUME_HOST, align 4
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %46 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kvm_mips_emulate_load(i32 %47, i32 %43, %struct.kvm_run* %44, %struct.kvm_vcpu* %45)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @EMULATE_FAIL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = call i32 @kvm_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %55 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %56 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %42
  %58 = load i8*, i8** @KVM_EXIT_MMIO, align 8
  %59 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %60 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* @RESUME_HOST, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %37, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @kvm_is_ifetch_fault(i32*) #1

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_mips_emulate_load(i32, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
