; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32)* }
%struct.kvm_run = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.kvm_vcpu = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%union.mips_instruction = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EMULATE_FAIL = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_8__* null, align 8
@KVM_INVALID_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Load not yet supported (inst=0x%08x)\0A\00", align 1
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_load(i64 %0, i32 %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.mips_instruction, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_run*, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %6, i32 0, i32 0
  %15 = bitcast %struct.TYPE_5__* %14 to i64*
  store i64 %0, i64* %15, align 4
  store i32 %1, i32* %7, align 4
  store %struct.kvm_run* %2, %struct.kvm_run** %8, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  %16 = bitcast %union.mips_instruction* %6 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = bitcast %union.mips_instruction* %6 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @update_pc(%struct.kvm_vcpu* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @EMULATE_FAIL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_mips_callbacks, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64 (i32)*, i64 (i32)** %51, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 %52(i32 %56)
  %58 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %59 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %62 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KVM_INVALID_ADDR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %34
  %68 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %68, i32* %5, align 4
  br label %105

69:                                               ; preds = %34
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  switch i32 %72, label %91 [
    i32 129, label %73
    i32 130, label %77
    i32 131, label %80
    i32 133, label %84
    i32 134, label %87
  ]

73:                                               ; preds = %69
  %74 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %75 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 4, i32* %76, align 8
  br label %98

77:                                               ; preds = %69
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %69, %77
  %81 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %82 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 2, i32* %83, align 8
  br label %98

84:                                               ; preds = %69
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %69, %84
  %88 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %89 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  br label %98

91:                                               ; preds = %69
  %92 = bitcast %union.mips_instruction* %6 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @kvm_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %97, i32* %5, align 4
  br label %105

98:                                               ; preds = %87, %80, %73
  %99 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %100 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %98, %91, %67, %32
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
