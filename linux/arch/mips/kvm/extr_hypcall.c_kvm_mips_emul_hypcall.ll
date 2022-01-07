; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_hypcall.c_kvm_mips_emul_hypcall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_hypcall.c_kvm_mips_emul_hypcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.mips_instruction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"[%#lx] HYPCALL %#03x\0A\00", align 1
@EMULATE_HYPERCALL = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emul_hypcall(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.mips_instruction, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %4, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  %9 = bitcast %union.mips_instruction* %4 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 5
  %13 = and i32 %12, 1023
  store i32 %13, i32* %6, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @kvm_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %23 [
    i32 0, label %21
  ]

21:                                               ; preds = %2
  %22 = load i32, i32* @EMULATE_HYPERCALL, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @kvm_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
