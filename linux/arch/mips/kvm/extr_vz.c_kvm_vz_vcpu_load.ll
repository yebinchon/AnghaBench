; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32** }
%struct.TYPE_4__ = type { i32 }

@last_vcpu = common dso_local global %struct.kvm_vcpu** null, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_VCPU = common dso_local global i32 0, align 4
@kvm_trace_guest_mode_change = common dso_local global i64 0, align 8
@MIPS_GCTL0_MC = common dso_local global i32 0, align 4
@cpu_guest_has_conf1 = common dso_local global i64 0, align 8
@cpu_guest_has_conf2 = common dso_local global i64 0, align 8
@cpu_guest_has_conf3 = common dso_local global i64 0, align 8
@cpu_guest_has_conf4 = common dso_local global i64 0, align 8
@cpu_guest_has_conf5 = common dso_local global i64 0, align 8
@cpu_guest_has_conf6 = common dso_local global i64 0, align 8
@cpu_guest_has_conf7 = common dso_local global i64 0, align 8
@cpu_guest_has_contextconfig = common dso_local global i64 0, align 8
@cpu_guest_has_userlocal = common dso_local global i64 0, align 8
@cpu_guest_has_badinstr = common dso_local global i64 0, align 8
@cpu_guest_has_badinstrp = common dso_local global i64 0, align 8
@cpu_guest_has_segments = common dso_local global i64 0, align 8
@cpu_guest_has_htw = common dso_local global i64 0, align 8
@cpu_has_guestctl2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2_SEL = common dso_local global i64 0, align 8
@cpu_guest_has_rw_llb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvm_vz_vcpu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_vcpu_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_coproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  store %struct.mips_coproc* %12, %struct.mips_coproc** %6, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** @last_vcpu, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %23, i64 %25
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %26, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = icmp ne %struct.kvm_vcpu* %27, %28
  br label %30

30:                                               ; preds = %22, %2
  %31 = phi i1 [ true, %2 ], [ %29, %22 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** @last_vcpu, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %34, i64 %36
  store %struct.kvm_vcpu* %33, %struct.kvm_vcpu** %37, align 8
  %38 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %39 = call i32 @kvm_restore_gc0_wired(%struct.mips_coproc* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PF_VCPU, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = call i32 (...) @tlbw_use_hazard()
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @kvm_vz_vcpu_load_tlb(%struct.kvm_vcpu* %48, i32 %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = call i32 @kvm_vz_vcpu_load_wired(%struct.kvm_vcpu* %51)
  br label %53

53:                                               ; preds = %46, %30
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = call i32 @kvm_vz_restore_timer(%struct.kvm_vcpu* %54)
  %56 = load i64, i64* @kvm_trace_guest_mode_change, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @MIPS_GCTL0_MC, align 4
  %60 = call i32 @set_c0_guestctl0(i32 %59)
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @MIPS_GCTL0_MC, align 4
  %63 = call i32 @clear_c0_guestctl0(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %247

68:                                               ; preds = %64
  %69 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %70 = call i32 @kvm_restore_gc0_config(%struct.mips_coproc* %69)
  %71 = load i64, i64* @cpu_guest_has_conf1, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %75 = call i32 @kvm_restore_gc0_config1(%struct.mips_coproc* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i64, i64* @cpu_guest_has_conf2, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %81 = call i32 @kvm_restore_gc0_config2(%struct.mips_coproc* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* @cpu_guest_has_conf3, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %87 = call i32 @kvm_restore_gc0_config3(%struct.mips_coproc* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i64, i64* @cpu_guest_has_conf4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %93 = call i32 @kvm_restore_gc0_config4(%struct.mips_coproc* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i64, i64* @cpu_guest_has_conf5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %99 = call i32 @kvm_restore_gc0_config5(%struct.mips_coproc* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i64, i64* @cpu_guest_has_conf6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %105 = call i32 @kvm_restore_gc0_config6(%struct.mips_coproc* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* @cpu_guest_has_conf7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %111 = call i32 @kvm_restore_gc0_config7(%struct.mips_coproc* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %114 = call i32 @kvm_restore_gc0_index(%struct.mips_coproc* %113)
  %115 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %116 = call i32 @kvm_restore_gc0_entrylo0(%struct.mips_coproc* %115)
  %117 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %118 = call i32 @kvm_restore_gc0_entrylo1(%struct.mips_coproc* %117)
  %119 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %120 = call i32 @kvm_restore_gc0_context(%struct.mips_coproc* %119)
  %121 = load i64, i64* @cpu_guest_has_contextconfig, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %125 = call i32 @kvm_restore_gc0_contextconfig(%struct.mips_coproc* %124)
  br label %126

126:                                              ; preds = %123, %112
  %127 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %128 = call i32 @kvm_restore_gc0_pagemask(%struct.mips_coproc* %127)
  %129 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %130 = call i32 @kvm_restore_gc0_pagegrain(%struct.mips_coproc* %129)
  %131 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %132 = call i32 @kvm_restore_gc0_hwrena(%struct.mips_coproc* %131)
  %133 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %134 = call i32 @kvm_restore_gc0_badvaddr(%struct.mips_coproc* %133)
  %135 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %136 = call i32 @kvm_restore_gc0_entryhi(%struct.mips_coproc* %135)
  %137 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %138 = call i32 @kvm_restore_gc0_status(%struct.mips_coproc* %137)
  %139 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %140 = call i32 @kvm_restore_gc0_intctl(%struct.mips_coproc* %139)
  %141 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %142 = call i32 @kvm_restore_gc0_epc(%struct.mips_coproc* %141)
  %143 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %144 = call i32 @kvm_read_sw_gc0_ebase(%struct.mips_coproc* %143)
  %145 = call i32 @kvm_vz_write_gc0_ebase(i32 %144)
  %146 = load i64, i64* @cpu_guest_has_userlocal, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %126
  %149 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %150 = call i32 @kvm_restore_gc0_userlocal(%struct.mips_coproc* %149)
  br label %151

151:                                              ; preds = %148, %126
  %152 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %153 = call i32 @kvm_restore_gc0_errorepc(%struct.mips_coproc* %152)
  %154 = load i64, i64* @cpu_guest_has_conf4, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %193

156:                                              ; preds = %151
  %157 = call i64 @cpu_guest_has_kscr(i32 2)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %161 = call i32 @kvm_restore_gc0_kscratch1(%struct.mips_coproc* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = call i64 @cpu_guest_has_kscr(i32 3)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %167 = call i32 @kvm_restore_gc0_kscratch2(%struct.mips_coproc* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = call i64 @cpu_guest_has_kscr(i32 4)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %173 = call i32 @kvm_restore_gc0_kscratch3(%struct.mips_coproc* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i64 @cpu_guest_has_kscr(i32 5)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %179 = call i32 @kvm_restore_gc0_kscratch4(%struct.mips_coproc* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = call i64 @cpu_guest_has_kscr(i32 6)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %185 = call i32 @kvm_restore_gc0_kscratch5(%struct.mips_coproc* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = call i64 @cpu_guest_has_kscr(i32 7)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %191 = call i32 @kvm_restore_gc0_kscratch6(%struct.mips_coproc* %190)
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %151
  %194 = load i64, i64* @cpu_guest_has_badinstr, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %198 = call i32 @kvm_restore_gc0_badinstr(%struct.mips_coproc* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i64, i64* @cpu_guest_has_badinstrp, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %204 = call i32 @kvm_restore_gc0_badinstrp(%struct.mips_coproc* %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i64, i64* @cpu_guest_has_segments, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %210 = call i32 @kvm_restore_gc0_segctl0(%struct.mips_coproc* %209)
  %211 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %212 = call i32 @kvm_restore_gc0_segctl1(%struct.mips_coproc* %211)
  %213 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %214 = call i32 @kvm_restore_gc0_segctl2(%struct.mips_coproc* %213)
  br label %215

215:                                              ; preds = %208, %205
  %216 = load i64, i64* @cpu_guest_has_htw, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %220 = call i32 @kvm_restore_gc0_pwbase(%struct.mips_coproc* %219)
  %221 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %222 = call i32 @kvm_restore_gc0_pwfield(%struct.mips_coproc* %221)
  %223 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %224 = call i32 @kvm_restore_gc0_pwsize(%struct.mips_coproc* %223)
  %225 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %226 = call i32 @kvm_restore_gc0_pwctl(%struct.mips_coproc* %225)
  br label %227

227:                                              ; preds = %218, %215
  %228 = load i64, i64* @cpu_has_guestctl2, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %227
  %231 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %232 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i64, i64* @MIPS_CP0_GUESTCTL2, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @MIPS_CP0_GUESTCTL2_SEL, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @write_c0_guestctl2(i32 %239)
  br label %241

241:                                              ; preds = %230, %227
  %242 = load i64, i64* @cpu_guest_has_rw_llb, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 @write_gc0_lladdr(i32 0)
  br label %246

246:                                              ; preds = %244, %241
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %67
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @kvm_restore_gc0_wired(%struct.mips_coproc*) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @kvm_vz_vcpu_load_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vz_vcpu_load_wired(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vz_restore_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_c0_guestctl0(i32) #1

declare dso_local i32 @clear_c0_guestctl0(i32) #1

declare dso_local i32 @kvm_restore_gc0_config(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config6(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_config7(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_index(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_entrylo0(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_entrylo1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_context(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_contextconfig(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pagemask(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pagegrain(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_hwrena(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_badvaddr(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_entryhi(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_intctl(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_epc(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_vz_write_gc0_ebase(i32) #1

declare dso_local i32 @kvm_read_sw_gc0_ebase(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_userlocal(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_errorepc(%struct.mips_coproc*) #1

declare dso_local i64 @cpu_guest_has_kscr(i32) #1

declare dso_local i32 @kvm_restore_gc0_kscratch1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_kscratch2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_kscratch3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_kscratch4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_kscratch5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_kscratch6(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_badinstr(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_badinstrp(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_segctl0(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_segctl1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_segctl2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pwbase(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pwfield(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pwsize(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_restore_gc0_pwctl(%struct.mips_coproc*) #1

declare dso_local i32 @write_c0_guestctl2(i32) #1

declare dso_local i32 @write_gc0_lladdr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
