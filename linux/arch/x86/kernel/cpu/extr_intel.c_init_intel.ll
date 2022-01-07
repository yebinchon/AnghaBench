; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_init_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_intel.c_init_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@X86_FEATURE_XTOPOLOGY = common dso_local global i32 0, align 4
@X86_FEATURE_ARCH_PERFMON = common dso_local global i32 0, align 4
@X86_FEATURE_XMM2 = common dso_local global i32 0, align 4
@X86_FEATURE_LFENCE_RDTSC = common dso_local global i32 0, align 4
@X86_FEATURE_DS = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@X86_FEATURE_BTS = common dso_local global i32 0, align 4
@X86_FEATURE_PEBS = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH = common dso_local global i32 0, align 4
@X86_BUG_CLFLUSH_MONITOR = common dso_local global i32 0, align 4
@X86_FEATURE_MWAIT = common dso_local global i32 0, align 4
@INTEL_FAM6_ATOM_GOLDMONT = common dso_local global i32 0, align 4
@X86_BUG_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Celeron (Covington)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Mobile Pentium II (Dixon)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Celeron (Mendocino)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Celeron-A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Celeron (Coppermine)\00", align 1
@X86_FEATURE_P4 = common dso_local global i32 0, align 4
@X86_FEATURE_P3 = common dso_local global i32 0, align 4
@X86_FEATURE_VMX = common dso_local global i32 0, align 4
@X86_FEATURE_TME = common dso_local global i32 0, align 4
@tsx_ctrl_state = common dso_local global i64 0, align 8
@TSX_CTRL_ENABLE = common dso_local global i64 0, align 8
@TSX_CTRL_DISABLE = common dso_local global i64 0, align 8
@X86_FEATURE_REP_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @init_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_intel(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %9 = call i32 @early_init_intel(%struct.cpuinfo_x86* %8)
  %10 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %11 = call i32 @intel_workarounds(%struct.cpuinfo_x86* %10)
  %12 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %13 = call i32 @detect_extended_topology(%struct.cpuinfo_x86* %12)
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = load i32, i32* @X86_FEATURE_XTOPOLOGY, align 4
  %16 = call i64 @cpu_has(%struct.cpuinfo_x86* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %20 = call i32 @detect_num_cpu_cores(%struct.cpuinfo_x86* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %23 = call i32 @init_intel_cacheinfo(%struct.cpuinfo_x86* %22)
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 9
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = call i32 @cpuid_eax(i32 10)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 255
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %40 = load i32, i32* @X86_FEATURE_ARCH_PERFMON, align 4
  %41 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %33, %28
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %45 = load i32, i32* @X86_FEATURE_XMM2, align 4
  %46 = call i64 @cpu_has(%struct.cpuinfo_x86* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %50 = load i32, i32* @X86_FEATURE_LFENCE_RDTSC, align 4
  %51 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* @X86_FEATURE_DS, align 4
  %54 = call i64 @boot_cpu_has(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @rdmsr(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 2048
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %66 = load i32, i32* @X86_FEATURE_BTS, align 4
  %67 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 4096
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %74 = load i32, i32* @X86_FEATURE_PEBS, align 4
  %75 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %79 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 6
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = load i32, i32* @X86_FEATURE_CLFLUSH, align 4
  %84 = call i64 @boot_cpu_has(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 29
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %93 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %98 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %91, %86
  %102 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %103 = load i32, i32* @X86_BUG_CLFLUSH_MONITOR, align 4
  %104 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %96, %82, %77
  %106 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %107 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 6
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load i32, i32* @X86_FEATURE_MWAIT, align 4
  %112 = call i64 @boot_cpu_has(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %116 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @INTEL_FAM6_ATOM_GOLDMONT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %122 = load i32, i32* @X86_BUG_MONITOR, align 4
  %123 = call i32 @set_cpu_bug(%struct.cpuinfo_x86* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %114, %110, %105
  %125 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %126 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 6
  br i1 %128, label %129, label %178

129:                                              ; preds = %124
  %130 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %131 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %133 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %134 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %168 [
    i32 5, label %136
    i32 6, label %146
    i32 8, label %163
  ]

136:                                              ; preds = %129
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %145

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 256
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %144

144:                                              ; preds = %143, %140
  br label %145

145:                                              ; preds = %144, %139
  br label %168

146:                                              ; preds = %129
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %162

150:                                              ; preds = %146
  %151 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %152 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %157 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 5
  br i1 %159, label %160, label %161

160:                                              ; preds = %155, %150
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %161

161:                                              ; preds = %160, %155
  br label %162

162:                                              ; preds = %161, %149
  br label %168

163:                                              ; preds = %129
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %167

167:                                              ; preds = %166, %163
  br label %168

168:                                              ; preds = %129, %167, %162, %145
  %169 = load i8*, i8** %7, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %173 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @strcpy(i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %171, %168
  br label %178

178:                                              ; preds = %177, %124
  %179 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %180 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 15
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %185 = load i32, i32* @X86_FEATURE_P4, align 4
  %186 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %178
  %188 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %189 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 6
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %194 = load i32, i32* @X86_FEATURE_P3, align 4
  %195 = call i32 @set_cpu_cap(%struct.cpuinfo_x86* %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %198 = call i32 @srat_detect_node(%struct.cpuinfo_x86* %197)
  %199 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %200 = load i32, i32* @X86_FEATURE_VMX, align 4
  %201 = call i64 @cpu_has(%struct.cpuinfo_x86* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %205 = call i32 @detect_vmx_virtcap(%struct.cpuinfo_x86* %204)
  br label %206

206:                                              ; preds = %203, %196
  %207 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %208 = load i32, i32* @X86_FEATURE_TME, align 4
  %209 = call i64 @cpu_has(%struct.cpuinfo_x86* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %213 = call i32 @detect_tme(%struct.cpuinfo_x86* %212)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %216 = call i32 @init_intel_misc_features(%struct.cpuinfo_x86* %215)
  %217 = load i64, i64* @tsx_ctrl_state, align 8
  %218 = load i64, i64* @TSX_CTRL_ENABLE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = call i32 (...) @tsx_enable()
  br label %222

222:                                              ; preds = %220, %214
  %223 = load i64, i64* @tsx_ctrl_state, align 8
  %224 = load i64, i64* @TSX_CTRL_DISABLE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = call i32 (...) @tsx_disable()
  br label %228

228:                                              ; preds = %226, %222
  ret void
}

declare dso_local i32 @early_init_intel(%struct.cpuinfo_x86*) #1

declare dso_local i32 @intel_workarounds(%struct.cpuinfo_x86*) #1

declare dso_local i32 @detect_extended_topology(%struct.cpuinfo_x86*) #1

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @detect_num_cpu_cores(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_intel_cacheinfo(%struct.cpuinfo_x86*) #1

declare dso_local i32 @cpuid_eax(i32) #1

declare dso_local i32 @set_cpu_cap(%struct.cpuinfo_x86*, i32) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @set_cpu_bug(%struct.cpuinfo_x86*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @srat_detect_node(%struct.cpuinfo_x86*) #1

declare dso_local i32 @detect_vmx_virtcap(%struct.cpuinfo_x86*) #1

declare dso_local i32 @detect_tme(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_intel_misc_features(%struct.cpuinfo_x86*) #1

declare dso_local i32 @tsx_enable(...) #1

declare dso_local i32 @tsx_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
