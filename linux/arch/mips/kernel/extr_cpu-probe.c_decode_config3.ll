; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_decode_config3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i64, i32 }

@MIPS_CONF3_SM = common dso_local global i32 0, align 4
@MIPS_ASE_SMARTMIPS = common dso_local global i32 0, align 4
@MIPS_CPU_RIXI = common dso_local global i32 0, align 4
@MIPS_CPU_CTXTC = common dso_local global i32 0, align 4
@MIPS_CONF3_RXI = common dso_local global i32 0, align 4
@MIPS_CONF3_CTXTC = common dso_local global i32 0, align 4
@MIPS_CONF3_DSP = common dso_local global i32 0, align 4
@MIPS_ASE_DSP = common dso_local global i32 0, align 4
@MIPS_CONF3_DSP2P = common dso_local global i32 0, align 4
@MIPS_ASE_DSP2P = common dso_local global i32 0, align 4
@cpu_has_mips_r6 = common dso_local global i64 0, align 8
@MIPS_ASE_DSP3 = common dso_local global i32 0, align 4
@MIPS_CONF3_VINT = common dso_local global i32 0, align 4
@MIPS_CPU_VINT = common dso_local global i32 0, align 4
@MIPS_CONF3_VEIC = common dso_local global i32 0, align 4
@MIPS_CPU_VEIC = common dso_local global i32 0, align 4
@MIPS_CONF3_LPA = common dso_local global i32 0, align 4
@MIPS_CPU_LPA = common dso_local global i32 0, align 4
@MIPS_CONF3_MT = common dso_local global i32 0, align 4
@MIPS_ASE_MIPSMT = common dso_local global i32 0, align 4
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_CPU_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF3_ISA = common dso_local global i32 0, align 4
@MIPS_CPU_MICROMIPS = common dso_local global i32 0, align 4
@MIPS_CONF3_VZ = common dso_local global i32 0, align 4
@MIPS_ASE_VZ = common dso_local global i32 0, align 4
@MIPS_CONF3_SC = common dso_local global i32 0, align 4
@MIPS_CPU_SEGMENTS = common dso_local global i32 0, align 4
@MIPS_CONF3_BI = common dso_local global i32 0, align 4
@MIPS_CPU_BADINSTR = common dso_local global i32 0, align 4
@MIPS_CONF3_BP = common dso_local global i32 0, align 4
@MIPS_CPU_BADINSTRP = common dso_local global i32 0, align 4
@MIPS_CONF3_MSA = common dso_local global i32 0, align 4
@MIPS_ASE_MSA = common dso_local global i32 0, align 4
@MIPS_CONF3_PW = common dso_local global i32 0, align 4
@MIPS_CPU_HTW = common dso_local global i32 0, align 4
@MIPS_CONF3_CDMM = common dso_local global i32 0, align 4
@MIPS_CPU_CDMM = common dso_local global i32 0, align 4
@MIPS_CONF3_SP = common dso_local global i32 0, align 4
@MIPS_CPU_SP = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_mips*)* @decode_config3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_config3(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %4 = call i32 (...) @read_c0_config3()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MIPS_CONF3_SM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @MIPS_ASE_SMARTMIPS, align 4
  %11 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %12 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* @MIPS_CPU_RIXI, align 4
  %16 = load i32, i32* @MIPS_CPU_CTXTC, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %9, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MIPS_CONF3_RXI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @MIPS_CPU_RIXI, align 4
  %29 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MIPS_CONF3_CTXTC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @MIPS_CPU_CTXTC, align 4
  %40 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MIPS_CONF3_DSP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @MIPS_ASE_DSP, align 4
  %51 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MIPS_CONF3_DSP2P, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i32, i32* @MIPS_ASE_DSP2P, align 4
  %62 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %63 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @cpu_has_mips_r6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @MIPS_ASE_DSP3, align 4
  %70 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %71 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @MIPS_CONF3_VINT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* @MIPS_CPU_VINT, align 4
  %82 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %83 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MIPS_CONF3_VEIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* @MIPS_CPU_VEIC, align 4
  %93 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %94 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @MIPS_CONF3_LPA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @MIPS_CPU_LPA, align 4
  %104 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %105 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @MIPS_CONF3_MT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @MIPS_ASE_MIPSMT, align 4
  %115 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %116 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @MIPS_CPU_ULRI, align 4
  %126 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %127 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @MIPS_CONF3_ISA, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* @MIPS_CPU_MICROMIPS, align 4
  %137 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %138 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %130
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @MIPS_CONF3_VZ, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* @MIPS_ASE_VZ, align 4
  %148 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %149 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @MIPS_CONF3_SC, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load i32, i32* @MIPS_CPU_SEGMENTS, align 4
  %159 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %160 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %152
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @MIPS_CONF3_BI, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* @MIPS_CPU_BADINSTR, align 4
  %170 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %171 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @MIPS_CONF3_BP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @MIPS_CPU_BADINSTRP, align 4
  %181 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %182 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* @MIPS_CONF3_MSA, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = load i32, i32* @MIPS_ASE_MSA, align 4
  %192 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %193 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %185
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @MIPS_CONF3_PW, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %196
  %202 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %203 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* @MIPS_CPU_HTW, align 4
  %205 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %206 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %201, %196
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* @MIPS_CONF3_CDMM, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @MIPS_CPU_CDMM, align 4
  %216 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %217 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %209
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @MIPS_CONF3_SP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* @MIPS_CPU_SP, align 4
  %227 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %228 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %220
  %232 = load i32, i32* %3, align 4
  %233 = load i32, i32* @MIPS_CONF_M, align 4
  %234 = and i32 %232, %233
  ret i32 %234
}

declare dso_local i32 @read_c0_config3(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
