; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATED_RFI_EXITS = common dso_local global i32 0, align 4
@EMULATED_RFCI_EXITS = common dso_local global i32 0, align 4
@EMULATED_RFDI_EXITS = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@EMULATED_MFMSR_EXITS = common dso_local global i32 0, align 4
@EMULATED_MTMSR_EXITS = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@EMULATED_WRTEE_EXITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_booke_emulate_op(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_rs(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @get_rt(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @get_op(i32 %17)
  switch i32 %18, label %120 [
    i32 19, label %19
    i32 31, label %46
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @get_xop(i32 %20)
  switch i32 %21, label %43 [
    i32 132, label %22
    i32 134, label %29
    i32 133, label %36
  ]

22:                                               ; preds = %19
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %24 = call i32 @kvmppc_emul_rfi(%struct.kvm_vcpu* %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %26 = load i32, i32* @EMULATED_RFI_EXITS, align 4
  %27 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  store i32 0, i32* %28, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = call i32 @kvmppc_emul_rfci(%struct.kvm_vcpu* %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %33 = load i32, i32* @EMULATED_RFCI_EXITS, align 4
  %34 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 0, i32* %35, align 4
  br label %45

36:                                               ; preds = %19
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = call i32 @kvmppc_emul_rfdi(%struct.kvm_vcpu* %37)
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %40 = load i32, i32* @EMULATED_RFDI_EXITS, align 4
  %41 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 0, i32* %42, align 4
  br label %45

43:                                               ; preds = %19
  %44 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %36, %29, %22
  br label %122

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @get_xop(i32 %47)
  switch i32 %48, label %117 [
    i32 131, label %49
    i32 130, label %62
    i32 129, label %71
    i32 128, label %95
  ]

49:                                               ; preds = %46
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %50, i32 %51, i32 %57)
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %60 = load i32, i32* @EMULATED_MFMSR_EXITS, align 4
  %61 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %59, i32 %60)
  br label %119

62:                                               ; preds = %46
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = load i32, i32* @EMULATED_MTMSR_EXITS, align 4
  %65 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %63, i32 %64)
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %67, i32 %68)
  %70 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %66, i32 %69)
  br label %119

71:                                               ; preds = %46
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MSR_EE, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %81, i32 %82)
  %84 = load i32, i32* @MSR_EE, align 4
  %85 = and i32 %83, %84
  %86 = or i32 %80, %85
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %93 = load i32, i32* @EMULATED_WRTEE_EXITS, align 4
  %94 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %92, i32 %93)
  br label %119

95:                                               ; preds = %46
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MSR_EE, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @MSR_EE, align 4
  %107 = and i32 %105, %106
  %108 = or i32 %104, %107
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %115 = load i32, i32* @EMULATED_WRTEE_EXITS, align 4
  %116 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %114, i32 %115)
  br label %119

117:                                              ; preds = %46
  %118 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %117, %95, %71, %62, %49
  br label %122

120:                                              ; preds = %4
  %121 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %120, %119, %45
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @get_rs(i32) #1

declare dso_local i32 @get_rt(i32) #1

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i32 @kvmppc_emul_rfi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_exit_type(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_emul_rfci(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_emul_rfdi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
