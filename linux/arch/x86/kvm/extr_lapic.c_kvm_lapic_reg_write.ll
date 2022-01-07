; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_lapic_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@APIC_LDR_MASK = common dso_local global i32 0, align 4
@APIC_LVR = common dso_local global i32 0, align 4
@APIC_LVR_DIRECTED_EOI = common dso_local global i32 0, align 4
@APIC_SPIV_DIRECTED_EOI = common dso_local global i32 0, align 4
@APIC_SPIV_APIC_ENABLED = common dso_local global i32 0, align 4
@KVM_APIC_LVT_NUM = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@apic_lvt_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @trace_kvm_apic_write(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %256 [
    i32 140, label %16
    i32 130, label %27
    i32 144, label %34
    i32 139, label %37
    i32 145, label %49
    i32 131, label %66
    i32 142, label %117
    i32 141, label %128
    i32 138, label %139
    i32 133, label %143
    i32 135, label %143
    i32 137, label %143
    i32 136, label %143
    i32 134, label %165
    i32 128, label %189
    i32 129, label %204
    i32 143, label %235
    i32 132, label %244
  ]

16:                                               ; preds = %3
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %18 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 24
  %24 = call i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic* %21, i32 %23)
  br label %26

25:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %20
  br label %257

27:                                               ; preds = %3
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %29 = call i32 @report_tpr_access(%struct.kvm_lapic* %28, i32 1)
  %30 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @apic_set_tpr(%struct.kvm_lapic* %30, i32 %32)
  br label %257

34:                                               ; preds = %3
  %35 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %36 = call i32 @apic_set_eoi(%struct.kvm_lapic* %35)
  br label %257

37:                                               ; preds = %3
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %39 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @APIC_LDR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @kvm_apic_set_ldr(%struct.kvm_lapic* %42, i32 %45)
  br label %48

47:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %41
  br label %257

49:                                               ; preds = %3
  %50 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %51 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 268435455
  %57 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %54, i32 145, i32 %56)
  %58 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @recalculate_apic_map(i32 %62)
  br label %65

64:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %53
  br label %257

66:                                               ; preds = %3
  store i32 1023, i32* %8, align 4
  %67 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %68 = load i32, i32* @APIC_LVR, align 4
  %69 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %67, i32 %68)
  %70 = load i32, i32* @APIC_LVR_DIRECTED_EOI, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @APIC_SPIV_DIRECTED_EOI, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @apic_set_spiv(%struct.kvm_lapic* %78, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @APIC_SPIV_APIC_ENABLED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @KVM_APIC_LVT_NUM, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 16, %94
  %96 = add nsw i32 134, %95
  %97 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %93, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 16, %99
  %101 = add nsw i32 134, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @APIC_LVT_MASKED, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %98, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %88

109:                                              ; preds = %88
  %110 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %111 = call i32 @apic_update_lvtt(%struct.kvm_lapic* %110)
  %112 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = call i32 @atomic_set(i32* %114, i32 0)
  br label %116

116:                                              ; preds = %109, %77
  br label %257

117:                                              ; preds = %3
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, -4097
  store i32 %119, i32* %6, align 4
  %120 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %123 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %122, i32 141)
  %124 = call i32 @apic_send_ipi(%struct.kvm_lapic* %120, i32 %121, i32 %123)
  %125 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %125, i32 142, i32 %126)
  br label %257

128:                                              ; preds = %3
  %129 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %130 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, -16777216
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %128
  %136 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %136, i32 141, i32 %137)
  br label %257

139:                                              ; preds = %3
  %140 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic* %140, i32 %141)
  br label %143

143:                                              ; preds = %3, %3, %3, %3, %139
  %144 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %145 = call i32 @kvm_apic_sw_enabled(%struct.kvm_lapic* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @APIC_LVT_MASKED, align 4
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32*, i32** @apic_lvt_mask, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sub nsw i32 %153, 134
  %155 = ashr i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %6, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %161, i32 %162, i32 %163)
  br label %257

165:                                              ; preds = %3
  %166 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %167 = call i32 @kvm_apic_sw_enabled(%struct.kvm_lapic* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @APIC_LVT_MASKED, align 4
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i32*, i32** @apic_lvt_mask, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %178 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %176, %180
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %6, align 4
  %184 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %185 = load i32, i32* %6, align 4
  %186 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %184, i32 134, i32 %185)
  %187 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %188 = call i32 @apic_update_lvtt(%struct.kvm_lapic* %187)
  br label %257

189:                                              ; preds = %3
  %190 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %191 = call i32 @apic_lvtt_tscdeadline(%struct.kvm_lapic* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %257

194:                                              ; preds = %189
  %195 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %196 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = call i32 @hrtimer_cancel(i32* %197)
  %199 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %199, i32 128, i32 %200)
  %202 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %203 = call i32 @start_apic_timer(%struct.kvm_lapic* %202)
  br label %257

204:                                              ; preds = %3
  %205 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %206 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %11, align 4
  %208 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %208, i32 129, i32 %209)
  %211 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %212 = call i32 @update_divide_count(%struct.kvm_lapic* %211)
  %213 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %214 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %204
  %219 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %220 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %226 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = call i32 @hrtimer_cancel(i32* %227)
  %229 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @update_target_expiration(%struct.kvm_lapic* %229, i32 %230)
  %232 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %233 = call i32 @restart_apic_timer(%struct.kvm_lapic* %232)
  br label %234

234:                                              ; preds = %224, %218, %204
  br label %257

235:                                              ; preds = %3
  %236 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %237 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 1, i32* %7, align 4
  br label %243

243:                                              ; preds = %242, %239, %235
  br label %257

244:                                              ; preds = %3
  %245 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %246 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %250 = load i32, i32* %6, align 4
  %251 = and i32 %250, 255
  %252 = or i32 262144, %251
  %253 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %249, i32 142, i32 %252)
  br label %255

254:                                              ; preds = %244
  store i32 1, i32* %7, align 4
  br label %255

255:                                              ; preds = %254, %248
  br label %257

256:                                              ; preds = %3
  store i32 1, i32* %7, align 4
  br label %257

257:                                              ; preds = %256, %255, %243, %234, %194, %193, %173, %151, %135, %117, %116, %65, %48, %34, %27, %26
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @trace_kvm_apic_write(i32, i32) #1

declare dso_local i32 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_apic_set_xapic_id(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @report_tpr_access(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_set_tpr(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_set_eoi(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_apic_set_ldr(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i32, i32) #1

declare dso_local i32 @recalculate_apic_map(i32) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_set_spiv(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_update_lvtt(%struct.kvm_lapic*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @apic_send_ipi(%struct.kvm_lapic*, i32, i32) #1

declare dso_local i32 @apic_manage_nmi_watchdog(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_sw_enabled(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_lvtt_tscdeadline(%struct.kvm_lapic*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @start_apic_timer(%struct.kvm_lapic*) #1

declare dso_local i32 @update_divide_count(%struct.kvm_lapic*) #1

declare dso_local i32 @update_target_expiration(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @restart_apic_timer(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
