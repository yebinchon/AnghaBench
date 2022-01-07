; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_sve_reg_to_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_guest.c_sve_reg_to_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sve_state_reg_region = type { i64, i64, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_one_reg = type { i32 }

@SVE_NUM_ZREGS = common dso_local global i64 0, align 8
@SVE_NUM_SLICES = common dso_local global i64 0, align 8
@SVE_NUM_PREGS = common dso_local global i64 0, align 8
@KVM_ARM64_SVE_MAX_SLICES = common dso_local global i64 0, align 8
@SVE_REG_ID_MASK = common dso_local global i32 0, align 4
@SVE_REG_ID_SHIFT = common dso_local global i32 0, align 4
@SVE_REG_SLICE_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SVE_SIG_REGS_OFFSET = common dso_local global i32 0, align 4
@KVM_SVE_ZREG_SIZE = common dso_local global i32 0, align 4
@KVM_SVE_PREG_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sve_state_reg_region*, %struct.kvm_vcpu*, %struct.kvm_one_reg*)* @sve_reg_to_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sve_reg_to_region(%struct.sve_state_reg_region* %0, %struct.kvm_vcpu* %1, %struct.kvm_one_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sve_state_reg_region*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_one_reg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.sve_state_reg_region* %0, %struct.sve_state_reg_region** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_one_reg* %2, %struct.kvm_one_reg** %7, align 8
  %19 = call i64 @KVM_REG_ARM64_SVE_ZREG(i64 0, i64 0)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @SVE_NUM_ZREGS, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load i64, i64* @SVE_NUM_SLICES, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i64 @KVM_REG_ARM64_SVE_ZREG(i64 %21, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = call i64 @KVM_REG_ARM64_SVE_PREG(i64 0, i64 0)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @SVE_NUM_SLICES, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i64 @KVM_REG_ARM64_SVE_FFR(i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* @SVE_NUM_PREGS, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load i64, i64* @SVE_NUM_SLICES, align 8
  %32 = sub nsw i64 %31, 1
  %33 = call i64 @KVM_REG_ARM64_SVE_PREG(i64 %30, i64 %32)
  store i64 %33, i64* %18, align 8
  %34 = call i64 @KVM_REG_ARM64_SVE_FFR(i64 0)
  %35 = load i64, i64* %18, align 8
  %36 = add nsw i64 %35, 1
  %37 = icmp ne i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUILD_BUG_ON(i32 %38)
  %40 = load i64, i64* @SVE_NUM_SLICES, align 8
  %41 = load i64, i64* @KVM_ARM64_SVE_MAX_SLICES, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUILD_BUG_ON(i32 %43)
  %45 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SVE_REG_ID_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SVE_REG_ID_SHIFT, align 4
  %51 = lshr i32 %49, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %53 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %3
  %59 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %60 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %67 = call i32 @vcpu_has_sve(%struct.kvm_vcpu* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %71 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SVE_REG_SLICE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %65
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %170

79:                                               ; preds = %69
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sve_vq_from_vl(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @SVE_SIG_ZREG_OFFSET(i32 %85, i32 %86)
  %88 = load i32, i32* @SVE_SIG_REGS_OFFSET, align 4
  %89 = sub i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @KVM_SVE_ZREG_SIZE, align 4
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @SVE_SIG_ZREG_SIZE(i32 %91)
  store i32 %92, i32* %16, align 4
  br label %139

93:                                               ; preds = %58, %3
  %94 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %95 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %93
  %101 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %102 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %11, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %100
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %109 = call i32 @vcpu_has_sve(%struct.kvm_vcpu* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %7, align 8
  %113 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SVE_REG_SLICE_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ugt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111, %107
  %119 = load i32, i32* @ENOENT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %170

121:                                              ; preds = %111
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sve_vq_from_vl(i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @SVE_SIG_PREG_OFFSET(i32 %127, i32 %128)
  %130 = load i32, i32* @SVE_SIG_REGS_OFFSET, align 4
  %131 = sub i32 %129, %130
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* @KVM_SVE_PREG_SIZE, align 4
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @SVE_SIG_PREG_SIZE(i32 %133)
  store i32 %134, i32* %16, align 4
  br label %138

135:                                              ; preds = %100, %93
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %170

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %79
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %141 = call i64 @vcpu_sve_state_size(%struct.kvm_vcpu* %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i64 @WARN_ON(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %170

151:                                              ; preds = %139
  %152 = load i32, i32* %14, align 4
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @array_index_nospec(i32 %152, i64 %153)
  %155 = load %struct.sve_state_reg_region*, %struct.sve_state_reg_region** %5, align 8
  %156 = getelementptr inbounds %struct.sve_state_reg_region, %struct.sve_state_reg_region* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = call i64 @min(i32 %157, i32 %158)
  %160 = load %struct.sve_state_reg_region*, %struct.sve_state_reg_region** %5, align 8
  %161 = getelementptr inbounds %struct.sve_state_reg_region, %struct.sve_state_reg_region* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = load %struct.sve_state_reg_region*, %struct.sve_state_reg_region** %5, align 8
  %165 = getelementptr inbounds %struct.sve_state_reg_region, %struct.sve_state_reg_region* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = load %struct.sve_state_reg_region*, %struct.sve_state_reg_region** %5, align 8
  %169 = getelementptr inbounds %struct.sve_state_reg_region, %struct.sve_state_reg_region* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %151, %148, %135, %118, %76
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @KVM_REG_ARM64_SVE_ZREG(i64, i64) #1

declare dso_local i64 @KVM_REG_ARM64_SVE_PREG(i64, i64) #1

declare dso_local i64 @KVM_REG_ARM64_SVE_FFR(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @vcpu_has_sve(%struct.kvm_vcpu*) #1

declare dso_local i32 @sve_vq_from_vl(i32) #1

declare dso_local i32 @SVE_SIG_ZREG_OFFSET(i32, i32) #1

declare dso_local i32 @SVE_SIG_ZREG_SIZE(i32) #1

declare dso_local i32 @SVE_SIG_PREG_OFFSET(i32, i32) #1

declare dso_local i32 @SVE_SIG_PREG_SIZE(i32) #1

declare dso_local i64 @vcpu_sve_state_size(%struct.kvm_vcpu*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @array_index_nospec(i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
