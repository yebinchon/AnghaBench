; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"mips\00", align 1
@PRID_IMP_UNKNOWN = common dso_local global i32 0, align 4
@FPIR_IMP_NONE = common dso_local global i32 0, align 4
@CPU_UNKNOWN = common dso_local global i64 0, align 8
@_CACHE_UNCACHED = common dso_local global i32 0, align 4
@FPU_CSR_RN = common dso_local global i32 0, align 4
@FPU_CSR_RSVD = common dso_local global i32 0, align 4
@FPU_CSR_ABS2008 = common dso_local global i32 0, align 4
@FPU_CSR_NAN2008 = common dso_local global i32 0, align 4
@PRID_COMP_MASK = common dso_local global i32 0, align 4
@__cpu_name = common dso_local global i32* null, align 8
@cpu_has_rixi = common dso_local global i64 0, align 8
@PG_IEC = common dso_local global i32 0, align 4
@MIPS_CPU_RIXIEX = common dso_local global i32 0, align 4
@mips_fpu_disabled = common dso_local global i64 0, align 8
@MIPS_CPU_FPU = common dso_local global i32 0, align 4
@mips_dsp_disabled = common dso_local global i64 0, align 8
@MIPS_ASE_DSP = common dso_local global i32 0, align 4
@MIPS_ASE_DSP2P = common dso_local global i32 0, align 4
@mips_htw_disabled = common dso_local global i64 0, align 8
@MIPS_CPU_HTW = common dso_local global i32 0, align 4
@MIPS_PWCTL_PWEN_SHIFT = common dso_local global i32 0, align 4
@cpu_has_bp_ghist = common dso_local global i64 0, align 8
@R10K_DIAG_E_GHIST = common dso_local global i32 0, align 4
@cpu_has_mips_r2_r6 = common dso_local global i64 0, align 8
@MIPS_CPU_PCI = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@HWCAP_MIPS_R6 = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4
@cpu_has_msa = common dso_local global i64 0, align 8
@MSA_IR_WRPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Vector register partitioning unimplemented!\00", align 1
@HWCAP_MIPS_MSA = common dso_local global i32 0, align 4
@cpu_has_mips16 = common dso_local global i64 0, align 8
@HWCAP_MIPS_MIPS16 = common dso_local global i32 0, align 4
@cpu_has_mdmx = common dso_local global i64 0, align 8
@HWCAP_MIPS_MDMX = common dso_local global i32 0, align 4
@cpu_has_mips3d = common dso_local global i64 0, align 8
@HWCAP_MIPS_MIPS3D = common dso_local global i32 0, align 4
@cpu_has_smartmips = common dso_local global i64 0, align 8
@HWCAP_MIPS_SMARTMIPS = common dso_local global i32 0, align 4
@cpu_has_dsp = common dso_local global i64 0, align 8
@HWCAP_MIPS_DSP = common dso_local global i32 0, align 4
@cpu_has_dsp2 = common dso_local global i64 0, align 8
@HWCAP_MIPS_DSP2 = common dso_local global i32 0, align 4
@cpu_has_dsp3 = common dso_local global i64 0, align 8
@HWCAP_MIPS_DSP3 = common dso_local global i32 0, align 4
@cpu_has_mips16e2 = common dso_local global i64 0, align 8
@HWCAP_MIPS_MIPS16E2 = common dso_local global i32 0, align 4
@cpu_has_loongson_mmi = common dso_local global i64 0, align 8
@HWCAP_LOONGSON_MMI = common dso_local global i32 0, align 4
@cpu_has_loongson_ext = common dso_local global i64 0, align 8
@HWCAP_LOONGSON_EXT = common dso_local global i32 0, align 4
@cpu_has_loongson_ext2 = common dso_local global i64 0, align 8
@HWCAP_LOONGSON_EXT2 = common dso_local global i32 0, align 4
@cpu_has_vz = common dso_local global i64 0, align 8
@__ua_limit = common dso_local global i64 0, align 8
@cpu_vmbits = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_probe() #0 {
  %1 = alloca %struct.cpuinfo_mips*, align 8
  %2 = alloca i32, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %1, align 8
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @set_elf_platform(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @PRID_IMP_UNKNOWN, align 4
  %7 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @FPIR_IMP_NONE, align 4
  %10 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i64, i64* @CPU_UNKNOWN, align 8
  %13 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @_CACHE_UNCACHED, align 4
  %16 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @FPU_CSR_RN, align 4
  %19 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %20 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @FPU_CSR_RSVD, align 4
  %22 = load i32, i32* @FPU_CSR_ABS2008, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FPU_CSR_NAN2008, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = call i32 (...) @read_c0_prid()
  %29 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PRID_COMP_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %80 [
    i32 134, label %36
    i32 132, label %40
    i32 140, label %44
    i32 128, label %48
    i32 139, label %52
    i32 129, label %56
    i32 130, label %60
    i32 138, label %64
    i32 133, label %68
    i32 137, label %72
    i32 136, label %72
    i32 135, label %72
    i32 131, label %76
  ]

36:                                               ; preds = %0
  %37 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @cpu_probe_legacy(%struct.cpuinfo_mips* %37, i32 %38)
  br label %80

40:                                               ; preds = %0
  %41 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @cpu_probe_mips(%struct.cpuinfo_mips* %41, i32 %42)
  br label %80

44:                                               ; preds = %0
  %45 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @cpu_probe_alchemy(%struct.cpuinfo_mips* %45, i32 %46)
  br label %80

48:                                               ; preds = %0
  %49 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @cpu_probe_sibyte(%struct.cpuinfo_mips* %49, i32 %50)
  br label %80

52:                                               ; preds = %0
  %53 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @cpu_probe_broadcom(%struct.cpuinfo_mips* %53, i32 %54)
  br label %80

56:                                               ; preds = %0
  %57 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @cpu_probe_sandcraft(%struct.cpuinfo_mips* %57, i32 %58)
  br label %80

60:                                               ; preds = %0
  %61 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @cpu_probe_nxp(%struct.cpuinfo_mips* %61, i32 %62)
  br label %80

64:                                               ; preds = %0
  %65 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @cpu_probe_cavium(%struct.cpuinfo_mips* %65, i32 %66)
  br label %80

68:                                               ; preds = %0
  %69 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @cpu_probe_loongson(%struct.cpuinfo_mips* %69, i32 %70)
  br label %80

72:                                               ; preds = %0, %0, %0
  %73 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @cpu_probe_ingenic(%struct.cpuinfo_mips* %73, i32 %74)
  br label %80

76:                                               ; preds = %0
  %77 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @cpu_probe_netlogic(%struct.cpuinfo_mips* %77, i32 %78)
  br label %80

80:                                               ; preds = %0, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36
  %81 = load i32*, i32** @__cpu_name, align 8
  %82 = load i32, i32* %2, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @BUG_ON(i32 %88)
  %90 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %91 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CPU_UNKNOWN, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = call i64 (...) @current_cpu_type()
  %98 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %99 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load i64, i64* @cpu_has_rixi, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %80
  %107 = load i32, i32* @PG_IEC, align 4
  %108 = call i32 @set_c0_pagegrain(i32 %107)
  %109 = call i32 (...) @back_to_back_c0_hazard()
  %110 = call i32 (...) @read_c0_pagegrain()
  %111 = load i32, i32* @PG_IEC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load i32, i32* @MIPS_CPU_RIXIEX, align 4
  %116 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %117 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %106
  br label %121

121:                                              ; preds = %120, %80
  %122 = load i64, i64* @mips_fpu_disabled, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* @MIPS_CPU_FPU, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %128 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i64, i64* @mips_dsp_disabled, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* @MIPS_ASE_DSP, align 4
  %136 = load i32, i32* @MIPS_ASE_DSP2P, align 4
  %137 = or i32 %135, %136
  %138 = xor i32 %137, -1
  %139 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %140 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %134, %131
  %144 = load i64, i64* @mips_htw_disabled, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* @MIPS_CPU_HTW, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %150 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = call i32 (...) @read_c0_pwctl()
  %154 = load i32, i32* @MIPS_PWCTL_PWEN_SHIFT, align 4
  %155 = shl i32 1, %154
  %156 = xor i32 %155, -1
  %157 = and i32 %153, %156
  %158 = call i32 @write_c0_pwctl(i32 %157)
  br label %159

159:                                              ; preds = %146, %143
  %160 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %161 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MIPS_CPU_FPU, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %168 = call i32 @cpu_set_fpu_opts(%struct.cpuinfo_mips* %167)
  br label %172

169:                                              ; preds = %159
  %170 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %171 = call i32 @cpu_set_nofpu_opts(%struct.cpuinfo_mips* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i64, i64* @cpu_has_bp_ghist, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = call i32 (...) @read_c0_r10k_diag()
  %177 = load i32, i32* @R10K_DIAG_E_GHIST, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @write_c0_r10k_diag(i32 %178)
  br label %180

180:                                              ; preds = %175, %172
  %181 = load i64, i64* @cpu_has_mips_r2_r6, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = call i32 (...) @read_c0_srsctl()
  %185 = ashr i32 %184, 26
  %186 = and i32 %185, 15
  %187 = add nsw i32 %186, 1
  %188 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %189 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @MIPS_CPU_PCI, align 4
  %191 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %192 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %198

195:                                              ; preds = %180
  %196 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %197 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %196, i32 0, i32 5
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %183
  %199 = load i64, i64* @cpu_has_mips_r6, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* @HWCAP_MIPS_R6, align 4
  %203 = load i32, i32* @elf_hwcap, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* @elf_hwcap, align 4
  br label %205

205:                                              ; preds = %201, %198
  %206 = load i64, i64* @cpu_has_msa, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %205
  %209 = call i32 (...) @cpu_get_msa_id()
  %210 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %211 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 8
  %212 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %213 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MSA_IR_WRPF, align 4
  %216 = and i32 %214, %215
  %217 = call i32 @WARN(i32 %216, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i32, i32* @HWCAP_MIPS_MSA, align 4
  %219 = load i32, i32* @elf_hwcap, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* @elf_hwcap, align 4
  br label %221

221:                                              ; preds = %208, %205
  %222 = load i64, i64* @cpu_has_mips16, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32, i32* @HWCAP_MIPS_MIPS16, align 4
  %226 = load i32, i32* @elf_hwcap, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* @elf_hwcap, align 4
  br label %228

228:                                              ; preds = %224, %221
  %229 = load i64, i64* @cpu_has_mdmx, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* @HWCAP_MIPS_MDMX, align 4
  %233 = load i32, i32* @elf_hwcap, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* @elf_hwcap, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i64, i64* @cpu_has_mips3d, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32, i32* @HWCAP_MIPS_MIPS3D, align 4
  %240 = load i32, i32* @elf_hwcap, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* @elf_hwcap, align 4
  br label %242

242:                                              ; preds = %238, %235
  %243 = load i64, i64* @cpu_has_smartmips, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* @HWCAP_MIPS_SMARTMIPS, align 4
  %247 = load i32, i32* @elf_hwcap, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* @elf_hwcap, align 4
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i64, i64* @cpu_has_dsp, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, i32* @HWCAP_MIPS_DSP, align 4
  %254 = load i32, i32* @elf_hwcap, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* @elf_hwcap, align 4
  br label %256

256:                                              ; preds = %252, %249
  %257 = load i64, i64* @cpu_has_dsp2, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i32, i32* @HWCAP_MIPS_DSP2, align 4
  %261 = load i32, i32* @elf_hwcap, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* @elf_hwcap, align 4
  br label %263

263:                                              ; preds = %259, %256
  %264 = load i64, i64* @cpu_has_dsp3, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32, i32* @HWCAP_MIPS_DSP3, align 4
  %268 = load i32, i32* @elf_hwcap, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* @elf_hwcap, align 4
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i64, i64* @cpu_has_mips16e2, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* @HWCAP_MIPS_MIPS16E2, align 4
  %275 = load i32, i32* @elf_hwcap, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* @elf_hwcap, align 4
  br label %277

277:                                              ; preds = %273, %270
  %278 = load i64, i64* @cpu_has_loongson_mmi, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i32, i32* @HWCAP_LOONGSON_MMI, align 4
  %282 = load i32, i32* @elf_hwcap, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* @elf_hwcap, align 4
  br label %284

284:                                              ; preds = %280, %277
  %285 = load i64, i64* @cpu_has_loongson_ext, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* @HWCAP_LOONGSON_EXT, align 4
  %289 = load i32, i32* @elf_hwcap, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* @elf_hwcap, align 4
  br label %291

291:                                              ; preds = %287, %284
  %292 = load i64, i64* @cpu_has_loongson_ext2, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32, i32* @HWCAP_LOONGSON_EXT2, align 4
  %296 = load i32, i32* @elf_hwcap, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* @elf_hwcap, align 4
  br label %298

298:                                              ; preds = %294, %291
  %299 = load i64, i64* @cpu_has_vz, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %303 = call i32 @cpu_probe_vz(%struct.cpuinfo_mips* %302)
  br label %304

304:                                              ; preds = %301, %298
  %305 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %1, align 8
  %306 = call i32 @cpu_probe_vmbits(%struct.cpuinfo_mips* %305)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_elf_platform(i32, i8*) #1

declare dso_local i32 @read_c0_prid(...) #1

declare dso_local i32 @cpu_probe_legacy(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_mips(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_alchemy(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_sibyte(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_broadcom(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_sandcraft(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_nxp(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_cavium(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_loongson(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_ingenic(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @cpu_probe_netlogic(%struct.cpuinfo_mips*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @set_c0_pagegrain(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @read_c0_pagegrain(...) #1

declare dso_local i32 @write_c0_pwctl(i32) #1

declare dso_local i32 @read_c0_pwctl(...) #1

declare dso_local i32 @cpu_set_fpu_opts(%struct.cpuinfo_mips*) #1

declare dso_local i32 @cpu_set_nofpu_opts(%struct.cpuinfo_mips*) #1

declare dso_local i32 @write_c0_r10k_diag(i32) #1

declare dso_local i32 @read_c0_r10k_diag(...) #1

declare dso_local i32 @read_c0_srsctl(...) #1

declare dso_local i32 @cpu_get_msa_id(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @cpu_probe_vz(%struct.cpuinfo_mips*) #1

declare dso_local i32 @cpu_probe_vmbits(%struct.cpuinfo_mips*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
