; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_dr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_dr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@DEBUG_REG_ACCESS_NUM = common dso_local global i64 0, align 8
@GUEST_DR7 = common dso_local global i32 0, align 4
@DR7_GD = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@KVM_EXIT_DEBUG = common dso_local global i32 0, align 4
@DR_TRAP_BITS = common dso_local global i32 0, align 4
@DR6_BD = common dso_local global i32 0, align 4
@DR6_RTM = common dso_local global i32 0, align 4
@CPU_BASED_MOV_DR_EXITING = common dso_local global i32 0, align 4
@KVM_DEBUGREG_WONT_EXIT = common dso_local global i32 0, align 4
@TYPE_MOV_FROM_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_dr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %10 = call i8* @vmcs_readl(i32 %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @DEBUG_REG_ACCESS_NUM, align 8
  %14 = and i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @kvm_require_dr(%struct.kvm_vcpu* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %145

21:                                               ; preds = %1
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvm_require_cpl(%struct.kvm_vcpu* %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %145

26:                                               ; preds = %21
  %27 = load i32, i32* @GUEST_DR7, align 4
  %28 = call i8* @vmcs_readl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DR7_GD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %26
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %34
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = call i32 @kvm_get_linear_rip(%struct.kvm_vcpu* %59)
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* @DB_VECTOR, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* @KVM_EXIT_DEBUG, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %145

79:                                               ; preds = %34
  %80 = load i32, i32* @DR_TRAP_BITS, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %81
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @DR6_BD, align 4
  %88 = load i32, i32* @DR6_RTM, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %96 = load i32, i32* @DB_VECTOR, align 4
  %97 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %95, i32 %96)
  store i32 1, i32* %2, align 4
  br label %145

98:                                               ; preds = %26
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = call i32 @to_vmx(%struct.kvm_vcpu* %104)
  %106 = load i32, i32* @CPU_BASED_MOV_DR_EXITING, align 4
  %107 = call i32 @exec_controls_clearbit(i32 %105, i32 %106)
  %108 = load i32, i32* @KVM_DEBUGREG_WONT_EXIT, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  store i32 1, i32* %2, align 4
  br label %145

114:                                              ; preds = %98
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @DEBUG_REG_ACCESS_REG(i64 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @TYPE_MOV_FROM_DR, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @kvm_get_dr(%struct.kvm_vcpu* %122, i32 %123, i64* %8)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 1, i32* %2, align 4
  br label %145

127:                                              ; preds = %121
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @kvm_register_write(%struct.kvm_vcpu* %128, i32 %129, i64 %130)
  br label %142

132:                                              ; preds = %114
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @kvm_register_readl(%struct.kvm_vcpu* %135, i32 %136)
  %138 = call i64 @kvm_set_dr(%struct.kvm_vcpu* %133, i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 1, i32* %2, align 4
  br label %145

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %127
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = call i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %143)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %140, %126, %103, %79, %41, %25, %20
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @vmcs_readl(i32) #1

declare dso_local i32 @kvm_require_dr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_require_cpl(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_get_linear_rip(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @exec_controls_clearbit(i32, i32) #1

declare dso_local i32 @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @DEBUG_REG_ACCESS_REG(i64) #1

declare dso_local i64 @kvm_get_dr(%struct.kvm_vcpu*, i32, i64*) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i64 @kvm_set_dr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_register_readl(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
