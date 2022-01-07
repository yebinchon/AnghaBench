; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_emulate_cp15.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_emulate_cp15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_reg = type { %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)* }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.coproc_params.0 = type opaque
%struct.coproc_params = type { i32, i32, i32, i32, i32, i32 }

@cp15_regs = common dso_local global %struct.coproc_reg* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unsupported guest CP15 access at: %08lx [%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.coproc_params*)* @emulate_cp15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_cp15(%struct.kvm_vcpu* %0, %struct.coproc_params* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.coproc_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.coproc_reg*, align 8
  %7 = alloca %struct.coproc_reg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.coproc_params* %1, %struct.coproc_params** %4, align 8
  %8 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %9 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %12 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %15 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %18 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %21 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %24 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @trace_kvm_emulate_cp15_imp(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.coproc_reg* @get_target_table(i32 %30, i64* %5)
  store %struct.coproc_reg* %31, %struct.coproc_reg** %6, align 8
  %32 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %33 = load %struct.coproc_reg*, %struct.coproc_reg** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call %struct.coproc_reg* @find_reg(%struct.coproc_params* %32, %struct.coproc_reg* %33, i64 %34)
  store %struct.coproc_reg* %35, %struct.coproc_reg** %7, align 8
  %36 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %37 = icmp ne %struct.coproc_reg* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %40 = load %struct.coproc_reg*, %struct.coproc_reg** @cp15_regs, align 8
  %41 = load %struct.coproc_reg*, %struct.coproc_reg** @cp15_regs, align 8
  %42 = call i64 @ARRAY_SIZE(%struct.coproc_reg* %41)
  %43 = call %struct.coproc_reg* @find_reg(%struct.coproc_params* %39, %struct.coproc_reg* %40, i64 %42)
  store %struct.coproc_reg* %43, %struct.coproc_reg** %7, align 8
  br label %44

44:                                               ; preds = %38, %2
  %45 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %46 = call i64 @likely(%struct.coproc_reg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %50 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %49, i32 0, i32 0
  %51 = load %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)*, %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)** %50, align 8
  %52 = icmp ne %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %57 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %56, i32 0, i32 0
  %58 = load %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)*, %struct.coproc_reg* (%struct.kvm_vcpu*, %struct.coproc_params.0*, %struct.coproc_reg*)** %57, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %61 = bitcast %struct.coproc_params* %60 to %struct.coproc_params.0*
  %62 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %63 = call %struct.coproc_reg* %58(%struct.kvm_vcpu* %59, %struct.coproc_params.0* %61, %struct.coproc_reg* %62)
  %64 = call i64 @likely(%struct.coproc_reg* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %48
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu* %68)
  %70 = call i32 @kvm_skip_instr(%struct.kvm_vcpu* %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %48
  br label %84

72:                                               ; preds = %44
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = call i32* @vcpu_pc(%struct.kvm_vcpu* %73)
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = call i32* @vcpu_cpsr(%struct.kvm_vcpu* %76)
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @kvm_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.coproc_params*, %struct.coproc_params** %4, align 8
  %81 = call i32 @print_cp_instr(%struct.coproc_params* %80)
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %82)
  br label %84

84:                                               ; preds = %72, %71
  ret i32 1
}

declare dso_local i32 @trace_kvm_emulate_cp15_imp(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.coproc_reg* @get_target_table(i32, i64*) #1

declare dso_local %struct.coproc_reg* @find_reg(%struct.coproc_params*, %struct.coproc_reg*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.coproc_reg*) #1

declare dso_local i64 @likely(%struct.coproc_reg*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_skip_instr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_trap_il_is32bit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_err(i8*, i32, i32) #1

declare dso_local i32* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32* @vcpu_cpsr(%struct.kvm_vcpu*) #1

declare dso_local i32 @print_cp_instr(%struct.coproc_params*) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
