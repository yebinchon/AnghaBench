; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_tlb_st_miss.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_tlb_st_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, %struct.kvm_run* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.kvm_run = type { i8* }
%union.mips_instruction = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@KVM_EXIT_INTERNAL_ERROR = common dso_local global i8* null, align 8
@RESUME_HOST = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Guest Emulate Store to MMIO space failed: PC: %p, BadVaddr: %#lx\0A\00", align 1
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4
@KVM_EXIT_MMIO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_vz_handle_tlb_st_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_tlb_st_miss(%struct.kvm_vcpu* %0) #0 {
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
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @kvm_vz_badvaddr_to_gpa(%struct.kvm_vcpu* %30, i32 %31, i32* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %35, i32* %2, align 4
  br label %106

36:                                               ; preds = %1
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i64 @kvm_mips_handle_vz_root_tlb_fault(i32 %41, %struct.kvm_vcpu* %42, i32 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CAUSEF_BD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = bitcast %union.mips_instruction* %8 to i32*
  %57 = call i32 @kvm_get_badinstr(i32* %54, %struct.kvm_vcpu* %55, i32* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %62 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @RESUME_HOST, align 4
  store i32 %64, i32* %2, align 4
  br label %106

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @kvm_mips_emulate_store(i32 %70, i32 %66, %struct.kvm_run* %67, %struct.kvm_vcpu* %68)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @EMULATE_FAIL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @kvm_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %80 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %75, %65
  br label %83

83:                                               ; preds = %82, %36
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @EMULATE_DONE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %88, i32* %11, align 4
  br label %104

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @EMULATE_DO_MMIO, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** @KVM_EXIT_MMIO, align 8
  %95 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %96 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @RESUME_HOST, align 4
  store i32 %97, i32* %11, align 4
  br label %103

98:                                               ; preds = %89
  %99 = load i8*, i8** @KVM_EXIT_INTERNAL_ERROR, align 8
  %100 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @RESUME_HOST, align 4
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %87
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %60, %34
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @kvm_vz_badvaddr_to_gpa(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i64 @kvm_mips_handle_vz_root_tlb_fault(i32, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_mips_emulate_store(i32, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
