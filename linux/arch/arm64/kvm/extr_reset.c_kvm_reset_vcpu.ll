; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_reset_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_reset_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_regs = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_ARM_VCPU_SVE = common dso_local global i32 0, align 4
@KVM_ARM_VCPU_PTRAUTH_ADDRESS = common dso_local global i32 0, align 4
@KVM_ARM_VCPU_PTRAUTH_GENERIC = common dso_local global i32 0, align 4
@KVM_ARM_VCPU_EL1_32BIT = common dso_local global i32 0, align 4
@default_regs_reset32 = common dso_local global %struct.kvm_regs zeroinitializer, align 4
@default_regs_reset = common dso_local global %struct.kvm_regs zeroinitializer, align 4
@KVM_SSBD_KERNEL = common dso_local global i64 0, align 8
@VCPU_WORKAROUND_2_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_reset_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call i32 @kvm_pmu_vcpu_reset(%struct.kvm_vcpu* %9)
  %11 = call i32 (...) @preempt_disable()
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = call i32 @kvm_arch_vcpu_put(%struct.kvm_vcpu* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = call i32 @kvm_arm_vcpu_sve_finalized(%struct.kvm_vcpu* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @KVM_ARM_VCPU_SVE, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @test_bit(i32 %27, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = call i32 @kvm_vcpu_enable_sve(%struct.kvm_vcpu* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %157

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %26
  br label %45

42:                                               ; preds = %22
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = call i32 @kvm_vcpu_reset_sve(%struct.kvm_vcpu* %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* @KVM_ARM_VCPU_PTRAUTH_ADDRESS, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @test_bit(i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @KVM_ARM_VCPU_PTRAUTH_GENERIC, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @test_bit(i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53, %45
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = call i64 @kvm_vcpu_enable_ptrauth(%struct.kvm_vcpu* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %157

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %72 [
  ]

72:                                               ; preds = %67
  %73 = load i32, i32* @KVM_ARM_VCPU_EL1_32BIT, align 4
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @test_bit(i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = call i32 (...) @cpu_has_32bit_el1()
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %157

84:                                               ; preds = %80
  store %struct.kvm_regs* @default_regs_reset32, %struct.kvm_regs** %3, align 8
  br label %86

85:                                               ; preds = %72
  store %struct.kvm_regs* @default_regs_reset, %struct.kvm_regs** %3, align 8
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = call i32 @vcpu_gp_regs(%struct.kvm_vcpu* %88)
  %90 = load %struct.kvm_regs*, %struct.kvm_regs** %3, align 8
  %91 = call i32 @memcpy(i32 %89, %struct.kvm_regs* %90, i32 4)
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %93 = call i32 @kvm_reset_sys_regs(%struct.kvm_vcpu* %92)
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %87
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %6, align 8
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %107 = call i64 @vcpu_mode_is_32bit(%struct.kvm_vcpu* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = load i64, i64* %6, align 8
  %111 = and i64 %110, 1
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i64, i64* %6, align 8
  %115 = and i64 %114, -2
  store i64 %115, i64* %6, align 8
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %117 = call i32 @vcpu_set_thumb(%struct.kvm_vcpu* %116)
  br label %118

118:                                              ; preds = %113, %109, %100
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %127 = call i32 @kvm_vcpu_set_be(%struct.kvm_vcpu* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %131 = call i64* @vcpu_pc(%struct.kvm_vcpu* %130)
  store i64 %129, i64* %131, align 8
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @vcpu_set_reg(%struct.kvm_vcpu* %132, i32 0, i32 %137)
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %128, %87
  %144 = call i64 (...) @kvm_arm_have_ssbd()
  %145 = load i64, i64* @KVM_SSBD_KERNEL, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* @VCPU_WORKAROUND_2_FLAG, align 4
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %147, %143
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %156 = call i32 @kvm_timer_vcpu_reset(%struct.kvm_vcpu* %155)
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %154, %83, %65, %39
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %162 = call i32 (...) @smp_processor_id()
  %163 = call i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %157
  %165 = call i32 (...) @preempt_enable()
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @kvm_pmu_vcpu_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @kvm_arch_vcpu_put(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arm_vcpu_sve_finalized(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @kvm_vcpu_enable_sve(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_reset_sve(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_enable_ptrauth(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpu_has_32bit_el1(...) #1

declare dso_local i32 @memcpy(i32, %struct.kvm_regs*, i32) #1

declare dso_local i32 @vcpu_gp_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_reset_sys_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @vcpu_mode_is_32bit(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_set_thumb(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_set_be(%struct.kvm_vcpu*) #1

declare dso_local i64* @vcpu_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_set_reg(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i64 @kvm_arm_have_ssbd(...) #1

declare dso_local i32 @kvm_timer_vcpu_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
