; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_cp15_to_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_cp15_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_reg = type { i32, i32, i32, i32, i64 }

@KVM_REG_ARM = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_SIZE_U64 = common dso_local global i32 0, align 4
@KVM_REG_ARM_OPC1_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM_CRM_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_SIZE_U32 = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_OPC2_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_CRN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coproc_reg*)* @cp15_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp15_to_index(%struct.coproc_reg* %0) #0 {
  %2 = alloca %struct.coproc_reg*, align 8
  %3 = alloca i32, align 4
  store %struct.coproc_reg* %0, %struct.coproc_reg** %2, align 8
  %4 = load i32, i32* @KVM_REG_ARM, align 4
  %5 = load i32, i32* @KVM_REG_ARM_COPROC_SHIFT, align 4
  %6 = shl i32 15, %5
  %7 = or i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %9 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load i32, i32* @KVM_REG_SIZE_U64, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %17 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @KVM_REG_ARM_OPC1_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %24 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KVM_REG_ARM_CRM_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load i32, i32* @KVM_REG_SIZE_U32, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %35 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @KVM_REG_ARM_OPC1_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %42 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @KVM_REG_ARM_32_OPC2_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %49 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @KVM_REG_ARM_CRM_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.coproc_reg*, %struct.coproc_reg** %2, align 8
  %56 = getelementptr inbounds %struct.coproc_reg, %struct.coproc_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @KVM_REG_ARM_32_CRN_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %30, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
