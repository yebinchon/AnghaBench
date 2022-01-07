; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_set_one_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_set_one_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }
%struct.kvm_one_reg = type { i32 }

@MIPS_EBASE_CPUNUM = common dso_local global i32 0, align 4
@CAUSEF_DC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_one_reg*, i32)* @kvm_trap_emul_set_one_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_emul_set_one_reg(%struct.kvm_vcpu* %0, %struct.kvm_one_reg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_one_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mips_coproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_one_reg* %1, %struct.kvm_one_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mips_coproc*, %struct.mips_coproc** %14, align 8
  store %struct.mips_coproc* %15, %struct.mips_coproc** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %240 [
    i32 140, label %19
    i32 145, label %23
    i32 144, label %27
    i32 149, label %31
    i32 129, label %35
    i32 132, label %39
    i32 128, label %43
    i32 141, label %47
    i32 159, label %51
    i32 146, label %55
    i32 130, label %59
    i32 139, label %63
    i32 143, label %64
    i32 131, label %68
    i32 147, label %72
    i32 148, label %78
    i32 157, label %82
    i32 158, label %86
    i32 156, label %121
    i32 155, label %122
    i32 154, label %141
    i32 153, label %142
    i32 152, label %161
    i32 151, label %180
    i32 150, label %199
    i32 162, label %200
    i32 160, label %204
    i32 161, label %208
    i32 142, label %212
    i32 138, label %216
    i32 137, label %220
    i32 136, label %224
    i32 135, label %228
    i32 134, label %232
    i32 133, label %236
  ]

19:                                               ; preds = %3
  %20 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @kvm_write_c0_guest_index(%struct.mips_coproc* %20, i32 %21)
  br label %243

23:                                               ; preds = %3
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @kvm_write_c0_guest_entrylo0(%struct.mips_coproc* %24, i32 %25)
  br label %243

27:                                               ; preds = %3
  %28 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @kvm_write_c0_guest_entrylo1(%struct.mips_coproc* %28, i32 %29)
  br label %243

31:                                               ; preds = %3
  %32 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @kvm_write_c0_guest_context(%struct.mips_coproc* %32, i32 %33)
  br label %243

35:                                               ; preds = %3
  %36 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @kvm_write_c0_guest_userlocal(%struct.mips_coproc* %36, i32 %37)
  br label %243

39:                                               ; preds = %3
  %40 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @kvm_write_c0_guest_pagemask(%struct.mips_coproc* %40, i32 %41)
  br label %243

43:                                               ; preds = %3
  %44 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @kvm_write_c0_guest_wired(%struct.mips_coproc* %44, i32 %45)
  br label %243

47:                                               ; preds = %3
  %48 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @kvm_write_c0_guest_hwrena(%struct.mips_coproc* %48, i32 %49)
  br label %243

51:                                               ; preds = %3
  %52 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc* %52, i32 %53)
  br label %243

55:                                               ; preds = %3
  %56 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @kvm_write_c0_guest_entryhi(%struct.mips_coproc* %56, i32 %57)
  br label %243

59:                                               ; preds = %3
  %60 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @kvm_write_c0_guest_status(%struct.mips_coproc* %60, i32 %61)
  br label %243

63:                                               ; preds = %3
  br label %243

64:                                               ; preds = %3
  %65 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %65, i32 %66)
  br label %243

68:                                               ; preds = %3
  %69 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @kvm_write_c0_guest_prid(%struct.mips_coproc* %69, i32 %70)
  br label %243

72:                                               ; preds = %3
  %73 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %74 = load i32, i32* @MIPS_EBASE_CPUNUM, align 4
  %75 = or i32 536866816, %74
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @kvm_change_c0_guest_ebase(%struct.mips_coproc* %73, i32 %75, i32 %76)
  br label %243

78:                                               ; preds = %3
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @kvm_mips_write_count(%struct.kvm_vcpu* %79, i32 %80)
  br label %243

82:                                               ; preds = %3
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @kvm_mips_write_compare(%struct.kvm_vcpu* %83, i32 %84, i32 0)
  br label %243

86:                                               ; preds = %3
  %87 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %88 = call i32 @kvm_read_c0_guest_cause(%struct.mips_coproc* %87)
  %89 = load i32, i32* %7, align 4
  %90 = xor i32 %88, %89
  %91 = load i32, i32* @CAUSEF_DC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @CAUSEF_DC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %101 = call i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu* %100)
  %102 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %103 = load i32, i32* @CAUSEF_DC, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %102, i32 %104, i32 %105)
  br label %115

107:                                              ; preds = %94
  %108 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %109 = load i32, i32* @CAUSEF_DC, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %108, i32 %110, i32 %111)
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %114 = call i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu* %113)
  br label %115

115:                                              ; preds = %107, %99
  br label %120

116:                                              ; preds = %86
  %117 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @kvm_write_c0_guest_cause(%struct.mips_coproc* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %115
  br label %243

121:                                              ; preds = %3
  br label %243

122:                                              ; preds = %3
  %123 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %124 = call i32 @kvm_read_c0_guest_config1(%struct.mips_coproc* %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %7, align 4
  %127 = xor i32 %125, %126
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %129 = call i32 @kvm_mips_config1_wrmask(%struct.kvm_vcpu* %128)
  %130 = and i32 %127, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = xor i32 %134, %135
  store i32 %136, i32* %7, align 4
  %137 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @kvm_write_c0_guest_config1(%struct.mips_coproc* %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %122
  br label %243

141:                                              ; preds = %3
  br label %243

142:                                              ; preds = %3
  %143 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %144 = call i32 @kvm_read_c0_guest_config3(%struct.mips_coproc* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = xor i32 %145, %146
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %149 = call i32 @kvm_mips_config3_wrmask(%struct.kvm_vcpu* %148)
  %150 = and i32 %147, %149
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %142
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = xor i32 %154, %155
  store i32 %156, i32* %7, align 4
  %157 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @kvm_write_c0_guest_config3(%struct.mips_coproc* %157, i32 %158)
  br label %160

160:                                              ; preds = %153, %142
  br label %243

161:                                              ; preds = %3
  %162 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %163 = call i32 @kvm_read_c0_guest_config4(%struct.mips_coproc* %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %7, align 4
  %166 = xor i32 %164, %165
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %168 = call i32 @kvm_mips_config4_wrmask(%struct.kvm_vcpu* %167)
  %169 = and i32 %166, %168
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %161
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = xor i32 %173, %174
  store i32 %175, i32* %7, align 4
  %176 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @kvm_write_c0_guest_config4(%struct.mips_coproc* %176, i32 %177)
  br label %179

179:                                              ; preds = %172, %161
  br label %243

180:                                              ; preds = %3
  %181 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %182 = call i32 @kvm_read_c0_guest_config5(%struct.mips_coproc* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %7, align 4
  %185 = xor i32 %183, %184
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %187 = call i32 @kvm_mips_config5_wrmask(%struct.kvm_vcpu* %186)
  %188 = and i32 %185, %187
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %180
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = xor i32 %192, %193
  store i32 %194, i32* %7, align 4
  %195 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @kvm_write_c0_guest_config5(%struct.mips_coproc* %195, i32 %196)
  br label %198

198:                                              ; preds = %191, %180
  br label %243

199:                                              ; preds = %3
  br label %243

200:                                              ; preds = %3
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @kvm_mips_set_count_ctl(%struct.kvm_vcpu* %201, i32 %202)
  store i32 %203, i32* %9, align 4
  br label %243

204:                                              ; preds = %3
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @kvm_mips_set_count_resume(%struct.kvm_vcpu* %205, i32 %206)
  store i32 %207, i32* %9, align 4
  br label %243

208:                                              ; preds = %3
  %209 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @kvm_mips_set_count_hz(%struct.kvm_vcpu* %209, i32 %210)
  store i32 %211, i32* %9, align 4
  br label %243

212:                                              ; preds = %3
  %213 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @kvm_write_c0_guest_errorepc(%struct.mips_coproc* %213, i32 %214)
  br label %243

216:                                              ; preds = %3
  %217 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @kvm_write_c0_guest_kscratch1(%struct.mips_coproc* %217, i32 %218)
  br label %243

220:                                              ; preds = %3
  %221 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @kvm_write_c0_guest_kscratch2(%struct.mips_coproc* %221, i32 %222)
  br label %243

224:                                              ; preds = %3
  %225 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @kvm_write_c0_guest_kscratch3(%struct.mips_coproc* %225, i32 %226)
  br label %243

228:                                              ; preds = %3
  %229 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @kvm_write_c0_guest_kscratch4(%struct.mips_coproc* %229, i32 %230)
  br label %243

232:                                              ; preds = %3
  %233 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @kvm_write_c0_guest_kscratch5(%struct.mips_coproc* %233, i32 %234)
  br label %243

236:                                              ; preds = %3
  %237 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @kvm_write_c0_guest_kscratch6(%struct.mips_coproc* %237, i32 %238)
  br label %243

240:                                              ; preds = %3
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %4, align 4
  br label %245

243:                                              ; preds = %236, %232, %228, %224, %220, %216, %212, %208, %204, %200, %199, %198, %179, %160, %141, %140, %121, %120, %82, %78, %72, %68, %64, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  %244 = load i32, i32* %9, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %243, %240
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @kvm_write_c0_guest_index(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_entrylo0(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_entrylo1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_context(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_userlocal(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_pagemask(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_wired(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_hwrena(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_entryhi(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_prid(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_change_c0_guest_ebase(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @kvm_mips_write_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_write_compare(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_count_disable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @kvm_mips_count_enable_cause(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_config1_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_config1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_config3_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_config3(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_config4_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_config4(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_read_c0_guest_config5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_config5_wrmask(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_config5(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_mips_set_count_ctl(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_set_count_resume(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_set_count_hz(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_errorepc(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch2(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch3(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch4(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch5(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_kscratch6(%struct.mips_coproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
