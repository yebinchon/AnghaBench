; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_early_init_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_early_init_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE_LIMIT_CPUID_BIT = common dso_local global i32 0, align 4
@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_IA64 = common dso_local global i32 0, align 4
@X86_FEATURE_SPEC_CTRL = common dso_local global i32 0, align 4
@X86_FEATURE_INTEL_STIBP = common dso_local global i32 0, align 4
@X86_FEATURE_IBRS = common dso_local global i32 0, align 4
@X86_FEATURE_IBPB = common dso_local global i32 0, align 4
@X86_FEATURE_STIBP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Intel Spectre v2 broken microcode detected; disabling Speculation Control\0A\00", align 1
@X86_FEATURE_MSR_SPEC_CTRL = common dso_local global i32 0, align 4
@X86_FEATURE_SSBD = common dso_local global i32 0, align 4
@X86_FEATURE_SPEC_CTRL_SSBD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Atom PSE erratum detected, BIOS microcode update recommended\0A\00", align 1
@X86_FEATURE_PSE = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC_S3 = common dso_local global i32 0, align 4
@X86_FEATURE_PAT = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE_FAST_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Disabled fast string operations\0A\00", align 1
@X86_FEATURE_REP_GOOD = common dso_local global i32 0, align 4
@X86_FEATURE_ERMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Disabling PGE capability bit\0A\00", align 1
@X86_FEATURE_PGE = common dso_local global i32 0, align 4
@X86_FEATURE_SYSENTER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @early_init_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @early_init_intel(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 6
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 13
  br i1 %21, label %22, label %34

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %24 = load i32, i32* @MSR_IA32_MISC_ENABLE_LIMIT_CPUID_BIT, align 4
  %25 = call i64 @msr_clear_bit(i32 %23, i32 %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = call i32 @cpuid_eax(i32 0)
  %29 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %32 = call i32 @get_cpu_cap(%struct.cpuinfo_x86* %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %34

34:                                               ; preds = %33, %17, %12
  %35 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %36 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 15
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 3
  br i1 %43, label %54, label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %46 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 6
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %51 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 14
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %39
  %55 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %56 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %57 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49, %44
  %59 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %60 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 6
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %65 = load i32, i32* @X86_FEATURE_IA64, align 4
  %66 = call i64 @cpu_has(%struct.cpuinfo_x86* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = call i32 (...) @intel_get_microcode_revision()
  %70 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %63, %58
  %73 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %74 = load i32, i32* @X86_FEATURE_SPEC_CTRL, align 4
  %75 = call i64 @cpu_has(%struct.cpuinfo_x86* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %72
  %78 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %79 = load i32, i32* @X86_FEATURE_INTEL_STIBP, align 4
  %80 = call i64 @cpu_has(%struct.cpuinfo_x86* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %77
  %83 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %84 = load i32, i32* @X86_FEATURE_IBRS, align 4
  %85 = call i64 @cpu_has(%struct.cpuinfo_x86* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %89 = load i32, i32* @X86_FEATURE_IBPB, align 4
  %90 = call i64 @cpu_has(%struct.cpuinfo_x86* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %94 = load i32, i32* @X86_FEATURE_STIBP, align 4
  %95 = call i64 @cpu_has(%struct.cpuinfo_x86* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92, %87, %82, %77, %72
  %98 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %99 = call i64 @bad_spectre_microcode(%struct.cpuinfo_x86* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @X86_FEATURE_IBRS, align 4
  %104 = call i32 @setup_clear_cpu_cap(i32 %103)
  %105 = load i32, i32* @X86_FEATURE_IBPB, align 4
  %106 = call i32 @setup_clear_cpu_cap(i32 %105)
  %107 = load i32, i32* @X86_FEATURE_STIBP, align 4
  %108 = call i32 @setup_clear_cpu_cap(i32 %107)
  %109 = load i32, i32* @X86_FEATURE_SPEC_CTRL, align 4
  %110 = call i32 @setup_clear_cpu_cap(i32 %109)
  %111 = load i32, i32* @X86_FEATURE_MSR_SPEC_CTRL, align 4
  %112 = call i32 @setup_clear_cpu_cap(i32 %111)
  %113 = load i32, i32* @X86_FEATURE_INTEL_STIBP, align 4
  %114 = call i32 @setup_clear_cpu_cap(i32 %113)
  %115 = load i32, i32* @X86_FEATURE_SSBD, align 4
  %116 = call i32 @setup_clear_cpu_cap(i32 %115)
  %117 = load i32, i32* @X86_FEATURE_SPEC_CTRL_SSBD, align 4
  %118 = call i32 @setup_clear_cpu_cap(i32 %117)
  br label %119

119:                                              ; preds = %101, %97, %92
  %120 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %121 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 6
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %126 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 28
  br i1 %128, label %129, label %144

129:                                              ; preds = %124
  %130 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %132, 2
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %136 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 526
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = call i32 @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %142 = load i32, i32* @X86_FEATURE_PSE, align 4
  %143 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %134, %129, %124, %119
  %145 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %146 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 15
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %151 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 64
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %156 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %155, i32 0, i32 5
  store i32 128, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %149, %144
  %158 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %159 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 15
  br i1 %161, label %162, label %180

162:                                              ; preds = %157
  %163 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %164 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 3
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %169 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 3
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %174 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %180

177:                                              ; preds = %172, %167
  %178 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %179 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %178, i32 0, i32 6
  store i32 36, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %172, %162, %157
  %181 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %182 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 256
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %188 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %189 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %187, i32 %188)
  %190 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %191 = load i32, i32* @X86_FEATURE_NONSTOP_TSC, align 4
  %192 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %190, i32 %191)
  br label %193

193:                                              ; preds = %186, %180
  %194 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %195 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 6
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %200 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %206 [
    i32 130, label %202
    i32 129, label %202
    i32 128, label %202
    i32 131, label %202
  ]

202:                                              ; preds = %198, %198, %198, %198
  %203 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %204 = load i32, i32* @X86_FEATURE_NONSTOP_TSC_S3, align 4
  %205 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %203, i32 %204)
  br label %207

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %202
  br label %208

208:                                              ; preds = %207, %193
  %209 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %210 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 6
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %215 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %216, 15
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %220 = load i32, i32* @X86_FEATURE_PAT, align 4
  %221 = call i32 @clear_cpu_cap(%struct.cpuinfo_x86* %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %213, %208
  %223 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %224 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %225, 6
  br i1 %226, label %237, label %227

227:                                              ; preds = %222
  %228 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %229 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 6
  br i1 %231, label %232, label %252

232:                                              ; preds = %227
  %233 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %234 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp sge i32 %235, 13
  br i1 %236, label %237, label %252

237:                                              ; preds = %232, %222
  %238 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @rdmsrl(i32 %238, i32 %239)
  %241 = load i32, i32* %3, align 4
  %242 = load i32, i32* @MSR_IA32_MISC_ENABLE_FAST_STRING, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %237
  %246 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %247 = load i32, i32* @X86_FEATURE_REP_GOOD, align 4
  %248 = call i32 @setup_clear_cpu_cap(i32 %247)
  %249 = load i32, i32* @X86_FEATURE_ERMS, align 4
  %250 = call i32 @setup_clear_cpu_cap(i32 %249)
  br label %251

251:                                              ; preds = %245, %237
  br label %252

252:                                              ; preds = %251, %232, %227
  %253 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %254 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 5
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %259 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 9
  br i1 %261, label %262, label %266

262:                                              ; preds = %257
  %263 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %264 = load i32, i32* @X86_FEATURE_PGE, align 4
  %265 = call i32 @setup_clear_cpu_cap(i32 %264)
  br label %266

266:                                              ; preds = %262, %257, %252
  %267 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %268 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = icmp sge i32 %269, 1
  br i1 %270, label %271, label %284

271:                                              ; preds = %266
  %272 = call i32 @cpuid(i32 1, i32* %4, i32* %5, i32* %6, i32* %7)
  %273 = load i32, i32* %7, align 4
  %274 = and i32 %273, 268435456
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %271
  %277 = load i32, i32* %5, align 4
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  %280 = call i32 @get_count_order(i32 %279)
  %281 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %282 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %281, i32 0, i32 8
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %276, %271
  br label %284

284:                                              ; preds = %283, %266
  %285 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %286 = call i32 @check_mpx_erratum(%struct.cpuinfo_x86* %285)
  %287 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %288 = call i32 @check_memory_type_self_snoop_errata(%struct.cpuinfo_x86* %287)
  %289 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %290 = call i64 @detect_extended_topology_early(%struct.cpuinfo_x86* %289)
  %291 = icmp slt i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %284
  %293 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %294 = call i32 @detect_ht_early(%struct.cpuinfo_x86* %293)
  br label %295

295:                                              ; preds = %292, %284
  ret void
}

declare dso_local i64 @msr_clear_bit(i32, i32) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @get_cpu_cap(%struct.cpuinfo_x86*) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @intel_get_microcode_revision(...) #1

declare dso_local i64 @bad_spectre_microcode(%struct.cpuinfo_x86*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @setup_clear_cpu_cap(i32) #1

declare dso_local i32 @clear_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @check_mpx_erratum(%struct.cpuinfo_x86*) #1

declare dso_local i32 @check_memory_type_self_snoop_errata(%struct.cpuinfo_x86*) #1

declare dso_local i64 @detect_extended_topology_early(%struct.cpuinfo_x86*) #1

declare dso_local i32 @detect_ht_early(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
