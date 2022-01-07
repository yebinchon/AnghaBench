; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_index_to_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_index_to_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coproc_params = type { i32, i32, i32, i32, i32 }

@KVM_REG_SIZE_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARCH_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_COPROC_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_CRN_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_CRM_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_OPC1_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_OPC2_MASK = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_CRN_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM_CRM_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM_OPC1_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_ARM_32_OPC2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.coproc_params*)* @index_to_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_to_params(i32 %0, %struct.coproc_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.coproc_params*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.coproc_params* %1, %struct.coproc_params** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %95 [
    i32 129, label %9
    i32 128, label %59
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @KVM_REG_ARCH_MASK, align 4
  %12 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @KVM_REG_ARM_32_CRN_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @KVM_REG_ARM_CRM_MASK, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @KVM_REG_ARM_OPC1_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @KVM_REG_ARM_32_OPC2_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %10, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %96

28:                                               ; preds = %9
  %29 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %30 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @KVM_REG_ARM_32_CRN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @KVM_REG_ARM_32_CRN_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %37 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @KVM_REG_ARM_CRM_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @KVM_REG_ARM_CRM_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %44 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @KVM_REG_ARM_OPC1_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @KVM_REG_ARM_OPC1_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %51 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @KVM_REG_ARM_32_OPC2_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @KVM_REG_ARM_32_OPC2_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %58 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %3, align 4
  br label %96

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @KVM_REG_ARCH_MASK, align 4
  %62 = load i32, i32* @KVM_REG_SIZE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @KVM_REG_ARM_COPROC_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @KVM_REG_ARM_CRM_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @KVM_REG_ARM_OPC1_MASK, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %60, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %96

74:                                               ; preds = %59
  %75 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %76 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @KVM_REG_ARM_CRM_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @KVM_REG_ARM_CRM_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %83 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @KVM_REG_ARM_OPC1_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @KVM_REG_ARM_OPC1_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %90 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %92 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %91, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = load %struct.coproc_params*, %struct.coproc_params** %5, align 8
  %94 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %93, i32 0, i32 2
  store i32 0, i32* %94, align 4
  store i32 1, i32* %3, align 4
  br label %96

95:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %74, %73, %28, %27
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
