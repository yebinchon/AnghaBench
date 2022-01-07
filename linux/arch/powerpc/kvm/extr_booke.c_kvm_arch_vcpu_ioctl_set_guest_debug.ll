; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_guest_debug.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_guest_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_reg }
%struct.debug_reg = type { i32, i32, i32 }
%struct.kvm_guest_debug = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@MSR_DE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@DBCR0_IC = common dso_local global i32 0, align 4
@DBCR1_IAC1US = common dso_local global i32 0, align 4
@DBCR1_IAC2US = common dso_local global i32 0, align 4
@DBCR1_IAC3US = common dso_local global i32 0, align 4
@DBCR1_IAC4US = common dso_local global i32 0, align 4
@DBCR2_DAC1US = common dso_local global i32 0, align 4
@DBCR2_DAC2US = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVMPPC_BOOKE_IAC_NUM = common dso_local global i32 0, align 4
@KVMPPC_BOOKE_DAC_NUM = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_NONE = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_WATCH_READ = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_WATCH_WRITE = common dso_local global i32 0, align 4
@KVMPPC_DEBUG_BREAKPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_guest_debug(%struct.kvm_vcpu* %0, %struct.kvm_guest_debug* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_guest_debug*, align 8
  %5 = alloca %struct.debug_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_guest_debug* %1, %struct.kvm_guest_debug** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @vcpu_load(%struct.kvm_vcpu* %12)
  %14 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @MSR_DE, align 4
  %29 = call i32 @kvm_guest_protect_msr(%struct.kvm_vcpu* %27, i32 %28, i32 0)
  br label %156

30:                                               ; preds = %2
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* @MSR_DE, align 4
  %33 = call i32 @kvm_guest_protect_msr(%struct.kvm_vcpu* %31, i32 %32, i32 1)
  %34 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %30
  %50 = load i32, i32* @DBCR0_IDM, align 4
  %51 = load i32, i32* @DBCR0_IC, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %30
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.debug_reg* %62, %struct.debug_reg** %5, align 8
  %63 = load i32, i32* @DBCR1_IAC1US, align 4
  %64 = load i32, i32* @DBCR1_IAC2US, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DBCR1_IAC3US, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DBCR1_IAC4US, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %71 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @DBCR2_DAC1US, align 4
  %73 = load i32, i32* @DBCR2_DAC2US, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %76 = getelementptr inbounds %struct.debug_reg, %struct.debug_reg* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %59
  br label %156

84:                                               ; preds = %59
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %152, %84
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @KVMPPC_BOOKE_IAC_NUM, align 4
  %90 = load i32, i32* @KVMPPC_BOOKE_DAC_NUM, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %155

93:                                               ; preds = %87
  %94 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load %struct.kvm_guest_debug*, %struct.kvm_guest_debug** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_guest_debug, %struct.kvm_guest_debug* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @KVMPPC_DEBUG_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %93
  br label %152

116:                                              ; preds = %93
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @KVMPPC_DEBUG_WATCH_READ, align 4
  %119 = load i32, i32* @KVMPPC_DEBUG_WATCH_WRITE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @KVMPPC_DEBUG_BREAKPOINT, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = and i32 %117, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %156

127:                                              ; preds = %116
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @KVMPPC_DEBUG_BREAKPOINT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = call i64 @kvmppc_booke_add_breakpoint(%struct.debug_reg* %133, i32 %134, i32 %135)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %156

140:                                              ; preds = %132
  br label %151

141:                                              ; preds = %127
  %142 = load %struct.debug_reg*, %struct.debug_reg** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = call i64 @kvmppc_booke_add_watchpoint(%struct.debug_reg* %142, i32 %143, i32 %144, i32 %145)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %156

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %140
  br label %152

152:                                              ; preds = %151, %115
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %87

155:                                              ; preds = %87
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %149, %139, %126, %83, %20
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = call i32 @vcpu_put(%struct.kvm_vcpu* %157)
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_guest_protect_msr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i64 @kvmppc_booke_add_breakpoint(%struct.debug_reg*, i32, i32) #1

declare dso_local i64 @kvmppc_booke_add_watchpoint(%struct.debug_reg*, i32, i32, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
