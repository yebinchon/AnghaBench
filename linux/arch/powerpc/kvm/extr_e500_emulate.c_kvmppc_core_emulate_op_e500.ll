; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_op_e500.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_op_e500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_op_e500(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_ra(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @get_rb(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_rt(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_op(i32 %22)
  switch i32 %23, label %77 [
    i32 31, label %24
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_xop(i32 %25)
  switch i32 %26, label %74 [
    i32 137, label %27
    i32 130, label %30
    i32 128, label %33
    i32 129, label %36
    i32 132, label %44
    i32 131, label %55
    i32 135, label %63
    i32 136, label %68
  ]

27:                                               ; preds = %24
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %29 = call i32 @kvmppc_e500_emul_dcbtls(%struct.kvm_vcpu* %28)
  store i32 %29, i32* %9, align 4
  br label %76

30:                                               ; preds = %24
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %32 = call i32 @kvmppc_e500_emul_tlbre(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %9, align 4
  br label %76

33:                                               ; preds = %24
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = call i32 @kvmppc_e500_emul_tlbwe(%struct.kvm_vcpu* %34)
  store i32 %35, i32* %9, align 4
  br label %76

36:                                               ; preds = %24
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @kvmppc_get_ea_indexed(%struct.kvm_vcpu* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @kvmppc_e500_emul_tlbsx(%struct.kvm_vcpu* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %76

44:                                               ; preds = %24
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, 3
  store i32 %46, i32* %14, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @kvmppc_get_ea_indexed(%struct.kvm_vcpu* %47, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @kvmppc_e500_emul_tlbilx(%struct.kvm_vcpu* %51, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %76

55:                                               ; preds = %24
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @kvmppc_get_ea_indexed(%struct.kvm_vcpu* %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %76

63:                                               ; preds = %24
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @kvmppc_e500_emul_mftmr(%struct.kvm_vcpu* %64, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %76

68:                                               ; preds = %24
  %69 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @kvmppc_e500_emul_ehpriv(%struct.kvm_run* %69, %struct.kvm_vcpu* %70, i32 %71, i32* %72)
  store i32 %73, i32* %9, align 4
  br label %76

74:                                               ; preds = %24
  %75 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %68, %63, %55, %44, %36, %33, %30, %27
  br label %79

77:                                               ; preds = %4
  %78 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @EMULATE_FAIL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @kvmppc_booke_emulate_op(%struct.kvm_run* %84, %struct.kvm_vcpu* %85, i32 %86, i32* %87)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @get_ra(i32) #1

declare dso_local i32 @get_rb(i32) #1

declare dso_local i32 @get_rt(i32) #1

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i32 @kvmppc_e500_emul_dcbtls(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_emul_tlbre(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_emul_tlbwe(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_ea_indexed(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbsx(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbilx(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_e500_emul_mftmr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_emul_ehpriv(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @kvmppc_booke_emulate_op(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
