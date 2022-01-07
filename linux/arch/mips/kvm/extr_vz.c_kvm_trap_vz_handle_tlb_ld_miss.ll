; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_tlb_ld_miss.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_tlb_ld_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm_run* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.kvm_run = type { i8* }
%union.mips_instruction = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i8* null, align 8
@RESUME_HOST = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Guest Emulate Load from MMIO space failed: PC: %p, BadVaddr: %#lx\0A\00", align 1
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4
@KVM_EXIT_MMIO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_vz_handle_tlb_ld_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_tlb_ld_miss(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.mips_instruction, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load %struct.kvm_run*, %struct.kvm_run** %13, align 8
  store %struct.kvm_run* %14, %struct.kvm_run** %4, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i64 @kvm_mips_handle_vz_root_tlb_fault(i32 %30, %struct.kvm_vcpu* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = call i64 @kvm_is_ifetch_fault(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %41 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @RESUME_HOST, align 4
  store i32 %43, i32* %2, align 4
  br label %105

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @CAUSEF_BD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = bitcast %union.mips_instruction* %8 to i32*
  %56 = call i32 @kvm_get_badinstr(i32* %53, %struct.kvm_vcpu* %54, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %61 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @RESUME_HOST, align 4
  store i32 %63, i32* %2, align 4
  br label %105

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kvm_mips_emulate_load(i32 %69, i32 %65, %struct.kvm_run* %66, %struct.kvm_vcpu* %67)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @EMULATE_FAIL, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @kvm_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32* %75, i32 %76)
  %78 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %79 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %80 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %74, %64
  br label %82

82:                                               ; preds = %81, %1
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @EMULATE_DONE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %87, i32* %11, align 4
  br label %103

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @EMULATE_DO_MMIO, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** @KVM_EXIT_MMIO, align 8
  %94 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @RESUME_HOST, align 4
  store i32 %96, i32* %11, align 4
  br label %102

97:                                               ; preds = %88
  %98 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %99 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @RESUME_HOST, align 4
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %59, %39
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i64 @kvm_mips_handle_vz_root_tlb_fault(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_is_ifetch_fault(%struct.TYPE_2__*) #1

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_mips_emulate_load(i32, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
