; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/math-emu/extr_math.c_record_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/math-emu/extr_math.c_record_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@__FPU_FPSCR = common dso_local global i32 0, align 4
@FPSCR_FX = common dso_local global i32 0, align 4
@EFLAG_OVERFLOW = common dso_local global i32 0, align 4
@FPSCR_OX = common dso_local global i32 0, align 4
@EFLAG_UNDERFLOW = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@EFLAG_DIVZERO = common dso_local global i32 0, align 4
@FPSCR_ZX = common dso_local global i32 0, align 4
@EFLAG_INEXACT = common dso_local global i32 0, align 4
@FPSCR_XX = common dso_local global i32 0, align 4
@EFLAG_INVALID = common dso_local global i32 0, align 4
@FPSCR_VX = common dso_local global i32 0, align 4
@EFLAG_VXSNAN = common dso_local global i32 0, align 4
@FPSCR_VXSNAN = common dso_local global i32 0, align 4
@EFLAG_VXISI = common dso_local global i32 0, align 4
@FPSCR_VXISI = common dso_local global i32 0, align 4
@EFLAG_VXIDI = common dso_local global i32 0, align 4
@FPSCR_VXIDI = common dso_local global i32 0, align 4
@EFLAG_VXZDZ = common dso_local global i32 0, align 4
@FPSCR_VXZDZ = common dso_local global i32 0, align 4
@EFLAG_VXIMZ = common dso_local global i32 0, align 4
@FPSCR_VXIMZ = common dso_local global i32 0, align 4
@EFLAG_VXVC = common dso_local global i32 0, align 4
@FPSCR_VXVC = common dso_local global i32 0, align 4
@EFLAG_VXSOFT = common dso_local global i32 0, align 4
@FPSCR_VXSOFT = common dso_local global i32 0, align 4
@EFLAG_VXSQRT = common dso_local global i32 0, align 4
@FPSCR_VXSQRT = common dso_local global i32 0, align 4
@EFLAG_VXCVI = common dso_local global i32 0, align 4
@FPSCR_VXCVI = common dso_local global i32 0, align 4
@FPSCR_FEX = common dso_local global i32 0, align 4
@FPSCR_VE = common dso_local global i32 0, align 4
@FPSCR_OE = common dso_local global i32 0, align 4
@FPSCR_UE = common dso_local global i32 0, align 4
@FPSCR_ZE = common dso_local global i32 0, align 4
@FPSCR_XE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @record_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_exception(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @__FPU_FPSCR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %139

9:                                                ; preds = %2
  %10 = load i32, i32* @FPSCR_FX, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EFLAG_OVERFLOW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @FPSCR_OX, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EFLAG_UNDERFLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @FPSCR_UX, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EFLAG_DIVZERO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @FPSCR_ZX, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @EFLAG_INEXACT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @FPSCR_XX, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @EFLAG_INVALID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @FPSCR_VX, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EFLAG_VXSNAN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @FPSCR_VXSNAN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @EFLAG_VXISI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @FPSCR_VXISI, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EFLAG_VXIDI, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @FPSCR_VXIDI, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @EFLAG_VXZDZ, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @FPSCR_VXZDZ, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @EFLAG_VXIMZ, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @FPSCR_VXIMZ, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @EFLAG_VXVC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @FPSCR_VXVC, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @EFLAG_VXSOFT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @FPSCR_VXSOFT, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @EFLAG_VXSQRT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @FPSCR_VXSQRT, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @EFLAG_VXCVI, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @FPSCR_VXCVI, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %2
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @FPSCR_VXSNAN, align 4
  %142 = load i32, i32* @FPSCR_VXISI, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @FPSCR_VXIDI, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @FPSCR_VXZDZ, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @FPSCR_VXIMZ, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @FPSCR_VXVC, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @FPSCR_VXSOFT, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @FPSCR_VXSQRT, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @FPSCR_VXCVI, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %140, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %139
  %161 = load i32, i32* @FPSCR_VX, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %139
  %165 = load i32, i32* @FPSCR_FEX, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @FPSCR_VX, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @FPSCR_VE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %218, label %178

178:                                              ; preds = %173, %164
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @FPSCR_OX, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @FPSCR_OE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %218, label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @FPSCR_UX, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @FPSCR_UE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %218, label %198

198:                                              ; preds = %193, %188
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @FPSCR_ZX, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @FPSCR_ZE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @FPSCR_XX, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @FPSCR_XE, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213, %203, %193, %183, %173
  %219 = load i32, i32* @FPSCR_FEX, align 4
  %220 = load i32, i32* %5, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %218, %213, %208
  %223 = load i32, i32* %5, align 4
  store i32 %223, i32* @__FPU_FPSCR, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @FPSCR_FEX, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 1, i32 0
  ret i32 %229
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
