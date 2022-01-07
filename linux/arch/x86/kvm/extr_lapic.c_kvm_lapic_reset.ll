; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64, %struct.TYPE_6__, %struct.kvm_lapic* }
%struct.TYPE_6__ = type { i64 }
%struct.kvm_lapic = type { i32, i32, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@KVM_APIC_LVT_NUM = common dso_local global i32 0, align 4
@APIC_LVTT = common dso_local global i64 0, align 8
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@KVM_X86_QUIRK_LINT0_REENABLED = common dso_local global i32 0, align 4
@APIC_LVT0 = common dso_local global i64 0, align 8
@APIC_MODE_EXTINT = common dso_local global i32 0, align 4
@APIC_DFR = common dso_local global i64 0, align 8
@APIC_TASKPRI = common dso_local global i64 0, align 8
@APIC_ESR = common dso_local global i64 0, align 8
@APIC_ICR = common dso_local global i64 0, align 8
@APIC_ICR2 = common dso_local global i64 0, align 8
@APIC_TDCR = common dso_local global i64 0, align 8
@APIC_TMICT = common dso_local global i64 0, align 8
@APIC_IRR = common dso_local global i64 0, align 8
@APIC_ISR = common dso_local global i64 0, align 8
@APIC_TMR = common dso_local global i64 0, align 8
@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_lapic_reset(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_lapic*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %9, align 8
  store %struct.kvm_lapic* %10, %struct.kvm_lapic** %5, align 8
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %12 = icmp ne %struct.kvm_lapic* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %207

14:                                               ; preds = %2
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = call i32 @hrtimer_cancel(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %24 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @kvm_lapic_set_base(%struct.kvm_vcpu* %22, i32 %25)
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic* %27, i32 %30)
  br label %32

32:                                               ; preds = %21, %14
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kvm_apic_set_version(i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %50, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @KVM_APIC_LVT_NUM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %43 = load i64, i64* @APIC_LVTT, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 16, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* @APIC_LVT_MASKED, align 4
  %49 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %42, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %55 = call i32 @apic_update_lvtt(%struct.kvm_lapic* %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @KVM_X86_QUIRK_LINT0_REENABLED, align 4
  %64 = call i64 @kvm_check_has_quirk(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %68 = load i64, i64* @APIC_LVT0, align 8
  %69 = load i32, i32* @APIC_MODE_EXTINT, align 4
  %70 = call i32 @SET_APIC_DELIVERY_MODE(i32 0, i32 %69)
  %71 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %67, i64 %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %59, %53
  %73 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %74 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %75 = load i64, i64* @APIC_LVT0, align 8
  %76 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %74, i64 %75)
  %77 = call i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic* %73, i32 %76)
  %78 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %79 = load i64, i64* @APIC_DFR, align 8
  %80 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %78, i64 %79, i32 -1)
  %81 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %82 = call i32 @apic_set_spiv(%struct.kvm_lapic* %81, i32 255)
  %83 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %84 = load i64, i64* @APIC_TASKPRI, align 8
  %85 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %83, i64 %84, i32 0)
  %86 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %87 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %72
  %90 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %91 = call i32 @kvm_apic_set_ldr(%struct.kvm_lapic* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %72
  %93 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %94 = load i64, i64* @APIC_ESR, align 8
  %95 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %93, i64 %94, i32 0)
  %96 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %97 = load i64, i64* @APIC_ICR, align 8
  %98 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %96, i64 %97, i32 0)
  %99 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %100 = load i64, i64* @APIC_ICR2, align 8
  %101 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %99, i64 %100, i32 0)
  %102 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %103 = load i64, i64* @APIC_TDCR, align 8
  %104 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %102, i64 %103, i32 0)
  %105 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %106 = load i64, i64* @APIC_TMICT, align 8
  %107 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %105, i64 %106, i32 0)
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %133, %92
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %136

111:                                              ; preds = %108
  %112 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %113 = load i64, i64* @APIC_IRR, align 8
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 16, %114
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %112, i64 %117, i32 0)
  %119 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %120 = load i64, i64* @APIC_ISR, align 8
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 16, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %119, i64 %124, i32 0)
  %126 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %127 = load i64, i64* @APIC_TMR, align 8
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 16, %128
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %127, %130
  %132 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %126, i64 %131, i32 0)
  br label %133

133:                                              ; preds = %111
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %108

136:                                              ; preds = %108
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %142 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 1, i32 0
  %150 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %151 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %153 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %152, i32 0, i32 1
  store i32 -1, i32* %153, align 4
  %154 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %155 = call i32 @update_divide_count(%struct.kvm_lapic* %154)
  %156 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %157 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = call i32 @atomic_set(i32* %158, i32 0)
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %161 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %136
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %166 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @kvm_lapic_set_base(%struct.kvm_vcpu* %164, i32 %170)
  br label %172

172:                                              ; preds = %163, %136
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  %177 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %178 = call i32 @apic_update_ppr(%struct.kvm_lapic* %177)
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %180 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %172
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %186, align 8
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %189 = call i32 %187(%struct.kvm_vcpu* %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %191, align 8
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = call i32 %192(%struct.kvm_vcpu* %193, i32 -1)
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %196, align 8
  %198 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %199 = call i32 %197(%struct.kvm_vcpu* %198, i32 -1)
  br label %200

200:                                              ; preds = %184, %172
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %202 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %205 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  store i64 0, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %13
  ret void
}

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @kvm_lapic_set_base(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_set_version(i32) #1

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i64, i32) #1

declare dso_local i32 @apic_update_lvtt(%struct.kvm_lapic*) #1

declare dso_local i64 @kvm_vcpu_is_reset_bsp(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_check_has_quirk(i32, i32) #1

declare dso_local i32 @SET_APIC_DELIVERY_MODE(i32, i32) #1

declare dso_local i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i64) #1

declare dso_local i32 @apic_set_spiv(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_apic_set_ldr(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @update_divide_count(%struct.kvm_lapic*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
