; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_inst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.mips_instruction = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@KVM_TRACE_EXIT_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Instruction emulation not supported (%p/%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_inst(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_run*, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca %union.mips_instruction, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %8, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  %13 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @CAUSEF_BD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %24 = bitcast %union.mips_instruction* %10 to i32*
  %25 = call i32 @kvm_get_badinstr(i32* %22, %struct.kvm_vcpu* %23, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %29, i32* %5, align 4
  br label %68

30:                                               ; preds = %21
  %31 = bitcast %union.mips_instruction* %10 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %58 [
    i32 129, label %34
    i32 130, label %42
  ]

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %39 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvm_mips_emulate_CP0(i32 %40, i32* %35, i32 %36, %struct.kvm_run* %37, %struct.kvm_vcpu* %38)
  store i32 %41, i32* %11, align 4
  br label %66

42:                                               ; preds = %30
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %49 = load i32, i32* @KVM_TRACE_EXIT_CACHE, align 4
  %50 = call i32 @trace_kvm_exit(%struct.kvm_vcpu* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.kvm_run*, %struct.kvm_run** %8, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %55 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kvm_mips_emulate_cache(i32 %56, i32* %51, i32 %52, %struct.kvm_run* %53, %struct.kvm_vcpu* %54)
  store i32 %57, i32* %11, align 4
  br label %66

58:                                               ; preds = %30
  %59 = load i32*, i32** %7, align 8
  %60 = bitcast %union.mips_instruction* %10 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kvm_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %59, i32 %61)
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %64 = call i32 @kvm_arch_vcpu_dump_regs(%struct.kvm_vcpu* %63)
  %65 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %58, %42, %34
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %28
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_mips_emulate_CP0(i32, i32*, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_exit(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_emulate_cache(i32, i32*, i32, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, i32*, i32) #1

declare dso_local i32 @kvm_arch_vcpu_dump_regs(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
