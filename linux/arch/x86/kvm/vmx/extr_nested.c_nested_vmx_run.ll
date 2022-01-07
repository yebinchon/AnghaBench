; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.vcpu_vmx = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@enable_shadow_vmcs = common dso_local global i64 0, align 8
@KVM_X86_SHADOW_INT_MOV_SS = common dso_local global i32 0, align 4
@VMXERR_ENTRY_EVENTS_BLOCKED_BY_MOV_SS = common dso_local global i32 0, align 4
@VMXERR_VMLAUNCH_NONCLEAR_VMCS = common dso_local global i32 0, align 4
@VMXERR_VMRESUME_NONLAUNCHED_VMCS = common dso_local global i32 0, align 4
@VMXERR_ENTRY_INVALID_CONTROL_FIELD = common dso_local global i32 0, align 4
@VMXERR_ENTRY_INVALID_HOST_STATE_FIELD = common dso_local global i32 0, align 4
@NVMX_VMENTRY_SUCCESS = common dso_local global i32 0, align 4
@GUEST_ACTIVITY_HLT = common dso_local global i64 0, align 8
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_NMI_PENDING = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_INTR_PENDING = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@NVMX_VMENTRY_KVM_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NVMX_VMENTRY_VMEXIT = common dso_local global i32 0, align 4
@NVMX_VMENTRY_VMFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @nested_vmx_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_run(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmcs12*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vcpu_vmx*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %8, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i32 @vmx_get_interrupt_shadow(%struct.kvm_vcpu* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = call i32 @nested_vmx_check_permission(%struct.kvm_vcpu* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %199

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nested_vmx_handle_enlightened_vmptrld(%struct.kvm_vcpu* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %199

24:                                               ; preds = %18
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %32 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %3, align 4
  br label %199

39:                                               ; preds = %30, %24
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %40)
  store %struct.vmcs12* %41, %struct.vmcs12** %6, align 8
  %42 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %43 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %48)
  store i32 %49, i32* %3, align 4
  br label %199

50:                                               ; preds = %39
  %51 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %52 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %58 = call i32 @copy_enlightened_to_vmcs12(%struct.vcpu_vmx* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %64 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %72

65:                                               ; preds = %50
  %66 = load i64, i64* @enable_shadow_vmcs, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %70 = call i32 @copy_shadow_to_vmcs12(%struct.vcpu_vmx* %69)
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @KVM_X86_SHADOW_INT_MOV_SS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = load i32, i32* @VMXERR_ENTRY_EVENTS_BLOCKED_BY_MOV_SS, align 4
  %80 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %199

81:                                               ; preds = %72
  %82 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %83 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @VMXERR_VMLAUNCH_NONCLEAR_VMCS, align 4
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @VMXERR_VMRESUME_NONLAUNCHED_VMCS, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %88, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %199

98:                                               ; preds = %81
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %100 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %101 = call i64 @nested_vmx_check_controls(%struct.kvm_vcpu* %99, %struct.vmcs12* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %105 = load i32, i32* @VMXERR_ENTRY_INVALID_CONTROL_FIELD, align 4
  %106 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %199

107:                                              ; preds = %98
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %109 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %110 = call i64 @nested_vmx_check_host_state(%struct.kvm_vcpu* %108, %struct.vmcs12* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = load i32, i32* @VMXERR_ENTRY_INVALID_HOST_STATE_FIELD, align 4
  %115 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %199

116:                                              ; preds = %107
  %117 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %118 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %121 = call i32 @nested_vmx_enter_non_root_mode(%struct.kvm_vcpu* %120, i32 1)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @NVMX_VMENTRY_SUCCESS, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %177

129:                                              ; preds = %116
  %130 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %131 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %135 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %136 = call i32 @nested_cache_shadow_vmcs12(%struct.kvm_vcpu* %134, %struct.vmcs12* %135)
  %137 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %138 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @GUEST_ACTIVITY_HLT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %129
  %143 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %144 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %176, label %149

149:                                              ; preds = %142
  %150 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %151 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CPU_BASED_VIRTUAL_NMI_PENDING, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %176, label %156

156:                                              ; preds = %149
  %157 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %158 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CPU_BASED_VIRTUAL_INTR_PENDING, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.vmcs12*, %struct.vmcs12** %6, align 8
  %165 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @X86_EFLAGS_IF, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %163, %156
  %171 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %172 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 8
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %175 = call i32 @kvm_vcpu_halt(%struct.kvm_vcpu* %174)
  store i32 %175, i32* %3, align 4
  br label %199

176:                                              ; preds = %163, %149, %142, %129
  store i32 1, i32* %3, align 4
  br label %199

177:                                              ; preds = %128
  %178 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %8, align 8
  %179 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i32 0, i32* %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @NVMX_VMENTRY_KVM_INTERNAL_ERROR, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %199

185:                                              ; preds = %177
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @NVMX_VMENTRY_VMEXIT, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 1, i32* %3, align 4
  br label %199

190:                                              ; preds = %185
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @NVMX_VMENTRY_VMFAIL, align 4
  %193 = icmp ne i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @WARN_ON_ONCE(i32 %194)
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %197 = load i32, i32* @VMXERR_ENTRY_INVALID_CONTROL_FIELD, align 4
  %198 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %196, i32 %197)
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %190, %189, %184, %176, %170, %112, %103, %95, %77, %47, %36, %23, %17
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_get_interrupt_shadow(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_check_permission(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_handle_enlightened_vmptrld(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_vmx_failInvalid(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @copy_enlightened_to_vmcs12(%struct.vcpu_vmx*) #1

declare dso_local i32 @copy_shadow_to_vmcs12(%struct.vcpu_vmx*) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @nested_vmx_check_controls(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i64 @nested_vmx_check_host_state(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_enter_non_root_mode(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nested_cache_shadow_vmcs12(%struct.kvm_vcpu*, %struct.vmcs12*) #1

declare dso_local i32 @kvm_vcpu_halt(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
