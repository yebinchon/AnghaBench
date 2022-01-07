; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_index_to_coproc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_index_to_coproc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_reg = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.coproc_params = type { i32 }

@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_SHIFT = common dso_local global i32 0, align 4
@cp15_regs = common dso_local global %struct.coproc_reg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coproc_reg* (%struct.kvm_vcpu*, i32)* @index_to_coproc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coproc_reg* @index_to_coproc_reg(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.coproc_reg*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.coproc_reg*, align 8
  %8 = alloca %struct.coproc_reg*, align 8
  %9 = alloca %struct.coproc_params, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @KVM_REG_ARM_COPROC_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = icmp ne i32 %14, 15
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.coproc_reg* null, %struct.coproc_reg** %3, align 8
  br label %49

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @index_to_params(i32 %18, %struct.coproc_params* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store %struct.coproc_reg* null, %struct.coproc_reg** %3, align 8
  br label %49

22:                                               ; preds = %17
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.coproc_reg* @get_target_table(i32 %26, i64* %6)
  store %struct.coproc_reg* %27, %struct.coproc_reg** %7, align 8
  %28 = load %struct.coproc_reg*, %struct.coproc_reg** %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call %struct.coproc_reg* @find_reg(%struct.coproc_params* %9, %struct.coproc_reg* %28, i64 %29)
  store %struct.coproc_reg* %30, %struct.coproc_reg** %8, align 8
  %31 = load %struct.coproc_reg*, %struct.coproc_reg** %8, align 8
  %32 = icmp ne %struct.coproc_reg* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load %struct.coproc_reg*, %struct.coproc_reg** @cp15_regs, align 8
  %35 = load %struct.coproc_reg*, %struct.coproc_reg** @cp15_regs, align 8
  %36 = call i64 @ARRAY_SIZE(%struct.coproc_reg* %35)
  %37 = call %struct.coproc_reg* @find_reg(%struct.coproc_params* %9, %struct.coproc_reg* %34, i64 %36)
  store %struct.coproc_reg* %37, %struct.coproc_reg** %8, align 8
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.coproc_reg*, %struct.coproc_reg** %8, align 8
  %40 = icmp ne %struct.coproc_reg* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.coproc_reg*, %struct.coproc_reg** %8, align 8
  %43 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.coproc_reg* null, %struct.coproc_reg** %8, align 8
  br label %47

47:                                               ; preds = %46, %41, %38
  %48 = load %struct.coproc_reg*, %struct.coproc_reg** %8, align 8
  store %struct.coproc_reg* %48, %struct.coproc_reg** %3, align 8
  br label %49

49:                                               ; preds = %47, %21, %16
  %50 = load %struct.coproc_reg*, %struct.coproc_reg** %3, align 8
  ret %struct.coproc_reg* %50
}

declare dso_local i32 @index_to_params(i32, %struct.coproc_params*) #1

declare dso_local %struct.coproc_reg* @get_target_table(i32, i64*) #1

declare dso_local %struct.coproc_reg* @find_reg(%struct.coproc_params*, %struct.coproc_reg*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.coproc_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
