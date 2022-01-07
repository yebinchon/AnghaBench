; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i64** }

@mips_hpt_frequency = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@PG_RIE = common dso_local global i32 0, align 4
@PG_XIE = common dso_local global i32 0, align 4
@PG_IEC = common dso_local global i32 0, align 4
@MIPSR6_WIRED_LIMIT = common dso_local global i32 0, align 4
@ST0_BEV = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@ST0_FR = common dso_local global i32 0, align 4
@INTCTLF_IPFDC = common dso_local global i32 0, align 4
@INTCTLF_IPPCI = common dso_local global i32 0, align 4
@INTCTLF_IPTI = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CONF_CM_CMASK = common dso_local global i32 0, align 4
@_page_cachable_default = common dso_local global i32 0, align 4
@_CACHE_SHIFT = common dso_local global i32 0, align 4
@MIPS_CONF_MT = common dso_local global i32 0, align 4
@cpu_guest_has_conf1 = common dso_local global i64 0, align 8
@MIPS_CONF_M = common dso_local global i32 0, align 4
@MIPS_CONF1_C2 = common dso_local global i32 0, align 4
@MIPS_CONF1_MD = common dso_local global i32 0, align 4
@MIPS_CONF1_PC = common dso_local global i32 0, align 4
@MIPS_CONF1_WR = common dso_local global i32 0, align 4
@MIPS_CONF1_CA = common dso_local global i32 0, align 4
@MIPS_CONF1_FP = common dso_local global i32 0, align 4
@cpu_guest_has_conf2 = common dso_local global i64 0, align 8
@cpu_guest_has_conf3 = common dso_local global i64 0, align 8
@MIPS_CONF3_ISA_OE = common dso_local global i32 0, align 4
@MIPS_CONF3_MSA = common dso_local global i32 0, align 4
@MIPS_CONF3_BPG = common dso_local global i32 0, align 4
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF3_DSP = common dso_local global i32 0, align 4
@MIPS_CONF3_CTXTC = common dso_local global i32 0, align 4
@MIPS_CONF3_ITL = common dso_local global i32 0, align 4
@MIPS_CONF3_LPA = common dso_local global i32 0, align 4
@MIPS_CONF3_VEIC = common dso_local global i32 0, align 4
@MIPS_CONF3_VINT = common dso_local global i32 0, align 4
@MIPS_CONF3_SP = common dso_local global i32 0, align 4
@MIPS_CONF3_CDMM = common dso_local global i32 0, align 4
@MIPS_CONF3_MT = common dso_local global i32 0, align 4
@MIPS_CONF3_SM = common dso_local global i32 0, align 4
@MIPS_CONF3_TL = common dso_local global i32 0, align 4
@cpu_guest_has_conf4 = common dso_local global i64 0, align 8
@cpu_guest_has_conf5 = common dso_local global i64 0, align 8
@MIPS_CONF5_K = common dso_local global i32 0, align 4
@MIPS_CONF5_CV = common dso_local global i32 0, align 4
@MIPS_CONF5_MSAEN = common dso_local global i32 0, align 4
@MIPS_CONF5_UFE = common dso_local global i32 0, align 4
@MIPS_CONF5_FRE = common dso_local global i32 0, align 4
@MIPS_CONF5_SBRI = common dso_local global i32 0, align 4
@MIPS_CONF5_UFR = common dso_local global i32 0, align 4
@MIPS_CONF5_MRP = common dso_local global i32 0, align 4
@cpu_guest_has_contextconfig = common dso_local global i64 0, align 8
@cpu_guest_has_segments = common dso_local global i64 0, align 8
@MIPS_SEGCFG_C_SHIFT = common dso_local global i32 0, align 4
@cpu_guest_has_htw = common dso_local global i64 0, align 8
@MIPS_PWSIZE_PTW_SHIFT = common dso_local global i32 0, align 4
@cpu_has_guestctl2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2_SEL = common dso_local global i64 0, align 8
@cpu_vmbits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_vz_vcpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_vcpu_setup(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.mips_coproc*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.mips_coproc*, %struct.mips_coproc** %7, align 8
  store %struct.mips_coproc* %8, %struct.mips_coproc** %3, align 8
  store i64 100000000, i64* %4, align 8
  %9 = load i64, i64* @mips_hpt_frequency, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* @mips_hpt_frequency, align 8
  %13 = load i64, i64* @NSEC_PER_SEC, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @mips_hpt_frequency, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @kvm_mips_init_count(%struct.kvm_vcpu* %18, i64 %19)
  %21 = load i64, i64* @cpu_has_mips_r6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %25 = load i32, i32* @PG_RIE, align 4
  %26 = load i32, i32* @PG_XIE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PG_IEC, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @kvm_write_sw_gc0_pagegrain(%struct.mips_coproc* %24, i32 %29)
  br label %31

31:                                               ; preds = %23, %17
  %32 = load i64, i64* @cpu_has_mips_r6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %36 = call i32 (...) @read_gc0_wired()
  %37 = load i32, i32* @MIPSR6_WIRED_LIMIT, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @kvm_write_sw_gc0_wired(%struct.mips_coproc* %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  %41 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %42 = load i32, i32* @ST0_BEV, align 4
  %43 = load i32, i32* @ST0_ERL, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @kvm_write_sw_gc0_status(%struct.mips_coproc* %41, i32 %44)
  %46 = load i64, i64* @cpu_has_mips_r6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %50 = load i32, i32* @ST0_FR, align 4
  %51 = call i32 (...) @read_gc0_status()
  %52 = call i32 @kvm_change_sw_gc0_status(%struct.mips_coproc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %55 = call i32 (...) @read_gc0_intctl()
  %56 = load i32, i32* @INTCTLF_IPFDC, align 4
  %57 = load i32, i32* @INTCTLF_IPPCI, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @INTCTLF_IPTI, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = call i32 @kvm_write_sw_gc0_intctl(%struct.mips_coproc* %54, i32 %61)
  %63 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %65 = call i32 @kvm_write_sw_gc0_prid(%struct.mips_coproc* %63, i32 %64)
  %66 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 -2147483648, %69
  %71 = call i32 @kvm_write_sw_gc0_ebase(%struct.mips_coproc* %66, i32 %70)
  %72 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %73 = call i32 @kvm_save_gc0_config(%struct.mips_coproc* %72)
  %74 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %75 = load i32, i32* @CONF_CM_CMASK, align 4
  %76 = load i32, i32* @_page_cachable_default, align 4
  %77 = load i32, i32* @_CACHE_SHIFT, align 4
  %78 = ashr i32 %76, %77
  %79 = call i32 @kvm_change_sw_gc0_config(%struct.mips_coproc* %74, i32 %75, i32 %78)
  %80 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %81 = load i32, i32* @MIPS_CONF_MT, align 4
  %82 = call i32 (...) @read_c0_config()
  %83 = call i32 @kvm_change_sw_gc0_config(%struct.mips_coproc* %80, i32 %81, i32 %82)
  %84 = load i64, i64* @cpu_guest_has_conf1, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %53
  %87 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %88 = load i32, i32* @MIPS_CONF_M, align 4
  %89 = call i32 @kvm_set_sw_gc0_config(%struct.mips_coproc* %87, i32 %88)
  %90 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %91 = call i32 @kvm_save_gc0_config1(%struct.mips_coproc* %90)
  %92 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %93 = load i32, i32* @MIPS_CONF1_C2, align 4
  %94 = load i32, i32* @MIPS_CONF1_MD, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @MIPS_CONF1_PC, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MIPS_CONF1_WR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MIPS_CONF1_CA, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MIPS_CONF1_FP, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @kvm_clear_sw_gc0_config1(%struct.mips_coproc* %92, i32 %103)
  br label %105

105:                                              ; preds = %86, %53
  %106 = load i64, i64* @cpu_guest_has_conf2, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %110 = load i32, i32* @MIPS_CONF_M, align 4
  %111 = call i32 @kvm_set_sw_gc0_config1(%struct.mips_coproc* %109, i32 %110)
  %112 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %113 = call i32 @kvm_save_gc0_config2(%struct.mips_coproc* %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i64, i64* @cpu_guest_has_conf3, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %114
  %118 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %119 = load i32, i32* @MIPS_CONF_M, align 4
  %120 = call i32 @kvm_set_sw_gc0_config2(%struct.mips_coproc* %118, i32 %119)
  %121 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %122 = call i32 @kvm_save_gc0_config3(%struct.mips_coproc* %121)
  %123 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %124 = load i32, i32* @MIPS_CONF3_ISA_OE, align 4
  %125 = call i32 @kvm_clear_sw_gc0_config3(%struct.mips_coproc* %123, i32 %124)
  %126 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %127 = load i32, i32* @MIPS_CONF3_MSA, align 4
  %128 = load i32, i32* @MIPS_CONF3_BPG, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @MIPS_CONF3_DSP, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @MIPS_CONF3_CTXTC, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MIPS_CONF3_ITL, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @MIPS_CONF3_LPA, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @MIPS_CONF3_VEIC, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MIPS_CONF3_VINT, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MIPS_CONF3_SP, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MIPS_CONF3_CDMM, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @MIPS_CONF3_MT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @MIPS_CONF3_SM, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @MIPS_CONF3_TL, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @kvm_clear_sw_gc0_config3(%struct.mips_coproc* %126, i32 %153)
  br label %155

155:                                              ; preds = %117, %114
  %156 = load i64, i64* @cpu_guest_has_conf4, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %160 = load i32, i32* @MIPS_CONF_M, align 4
  %161 = call i32 @kvm_set_sw_gc0_config3(%struct.mips_coproc* %159, i32 %160)
  %162 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %163 = call i32 @kvm_save_gc0_config4(%struct.mips_coproc* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i64, i64* @cpu_guest_has_conf5, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %164
  %168 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %169 = load i32, i32* @MIPS_CONF_M, align 4
  %170 = call i32 @kvm_set_sw_gc0_config4(%struct.mips_coproc* %168, i32 %169)
  %171 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %172 = call i32 @kvm_save_gc0_config5(%struct.mips_coproc* %171)
  %173 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %174 = load i32, i32* @MIPS_CONF5_K, align 4
  %175 = load i32, i32* @MIPS_CONF5_CV, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @MIPS_CONF5_MSAEN, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MIPS_CONF5_UFE, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @MIPS_CONF5_FRE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @MIPS_CONF5_SBRI, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @MIPS_CONF5_UFR, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @kvm_clear_sw_gc0_config5(%struct.mips_coproc* %173, i32 %186)
  %188 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %189 = load i32, i32* @MIPS_CONF5_MRP, align 4
  %190 = call i32 @kvm_clear_sw_gc0_config5(%struct.mips_coproc* %188, i32 %189)
  br label %191

191:                                              ; preds = %167, %164
  %192 = load i64, i64* @cpu_guest_has_contextconfig, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %196 = call i32 @kvm_write_sw_gc0_contextconfig(%struct.mips_coproc* %195, i32 8388592)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i64, i64* @cpu_guest_has_segments, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %202 = call i32 @kvm_write_sw_gc0_segctl0(%struct.mips_coproc* %201, i32 2097168)
  %203 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %204 = load i32, i32* @_page_cachable_default, align 4
  %205 = load i32, i32* @_CACHE_SHIFT, align 4
  %206 = ashr i32 %204, %205
  %207 = load i32, i32* @MIPS_SEGCFG_C_SHIFT, align 4
  %208 = add nsw i32 16, %207
  %209 = shl i32 %206, %208
  %210 = or i32 2, %209
  %211 = call i32 @kvm_write_sw_gc0_segctl1(%struct.mips_coproc* %203, i32 %210)
  %212 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %213 = call i32 @kvm_write_sw_gc0_segctl2(%struct.mips_coproc* %212, i32 3671096)
  br label %214

214:                                              ; preds = %200, %197
  %215 = load i64, i64* @cpu_guest_has_htw, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load i64, i64* @cpu_has_mips_r6, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %222 = call i32 @kvm_write_sw_gc0_pwfield(%struct.mips_coproc* %221, i32 204522242)
  %223 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %224 = load i32, i32* @MIPS_PWSIZE_PTW_SHIFT, align 4
  %225 = shl i32 1, %224
  %226 = call i32 @kvm_write_sw_gc0_pwsize(%struct.mips_coproc* %223, i32 %225)
  br label %227

227:                                              ; preds = %220, %217, %214
  %228 = load i64, i64* @cpu_has_guestctl2, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %232 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %231, i32 0, i32 0
  %233 = load i64**, i64*** %232, align 8
  %234 = load i64, i64* @MIPS_CP0_GUESTCTL2, align 8
  %235 = getelementptr inbounds i64*, i64** %233, i64 %234
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* @MIPS_CP0_GUESTCTL2_SEL, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %230, %227
  %240 = call i32 @CKSEG1ADDR(i32 532676608)
  %241 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %242 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  ret i32 0
}

declare dso_local i32 @kvm_mips_init_count(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_write_sw_gc0_pagegrain(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_wired(%struct.mips_coproc*, i32) #1

declare dso_local i32 @read_gc0_wired(...) #1

declare dso_local i32 @kvm_write_sw_gc0_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_change_sw_gc0_status(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @read_gc0_status(...) #1

declare dso_local i32 @kvm_write_sw_gc0_intctl(%struct.mips_coproc*, i32) #1

declare dso_local i32 @read_gc0_intctl(...) #1

declare dso_local i32 @kvm_write_sw_gc0_prid(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_ebase(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_change_sw_gc0_config(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @kvm_set_sw_gc0_config(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_clear_sw_gc0_config1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_sw_gc0_config1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_set_sw_gc0_config2(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_clear_sw_gc0_config3(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_sw_gc0_config3(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_set_sw_gc0_config4(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_save_gc0_config5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_clear_sw_gc0_config5(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_contextconfig(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_segctl0(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_segctl1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_segctl2(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_pwfield(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_sw_gc0_pwsize(%struct.mips_coproc*, i32) #1

declare dso_local i32 @CKSEG1ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
