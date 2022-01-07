; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_normaliseround.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_normaliseround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"pack: in\00", align 1
@VFP_DOUBLE_LOW_BITS = common dso_local global i32 0, align 4
@FPSCR_RMODE_MASK = common dso_local global i32 0, align 4
@FPSCR_ROUND_NEAREST = common dso_local global i32 0, align 4
@FPSCR_ROUND_TOZERO = common dso_local global i32 0, align 4
@FPSCR_ROUND_PLUSINF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VFP: rounding increment = 0x%08llx\0A\00", align 1
@FPSCR_IXC = common dso_local global i32 0, align 4
@FPSCR_OFC = common dso_local global i32 0, align 4
@FPSCR_UFC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pack: final\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"VFP: %s: d(d%d)=%016llx exceptions=%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfp_double_normaliseround(i32 %0, %struct.vfp_double* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vfp_double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.vfp_double* %1, %struct.vfp_double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %18 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %19 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.vfp_double* %18)
  %20 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %21 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 2047
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %26 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  br label %226

33:                                               ; preds = %29, %5
  %34 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %35 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %40 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %226

41:                                               ; preds = %33
  %42 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %43 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %46 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 32
  %50 = call i32 @fls(i32 %49)
  %51 = sub nsw i32 32, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @fls(i32 %55)
  %57 = sub nsw i32 64, %56
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %41
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 @vfp_shiftright64jamming(i32 %75, i32 %77)
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %82 = add nsw i32 %81, 1
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = sub i64 %84, 1
  %86 = and i64 %80, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89, %68
  store i32 0, i32* %12, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FPSCR_RMODE_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @FPSCR_ROUND_NEAREST, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %99 = zext i32 %98 to i64
  %100 = shl i64 1, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %105 = add nsw i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = shl i64 1, %106
  %108 = and i64 %103, %107
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110, %97
  br label %140

114:                                              ; preds = %90
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @FPSCR_ROUND_TOZERO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %139

119:                                              ; preds = %114
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @FPSCR_ROUND_PLUSINF, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %125 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = xor i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %119
  %132 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %133 = add nsw i32 %132, 1
  %134 = zext i32 %133 to i64
  %135 = shl i64 1, %134
  %136 = sub i64 %135, 1
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %131, %119
  br label %139

139:                                              ; preds = %138, %118
  br label %140

140:                                              ; preds = %139, %113
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %140
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %11, align 4
  %152 = ashr i32 %151, 1
  %153 = load i32, i32* %11, align 4
  %154 = and i32 %153, 1
  %155 = or i32 %152, %154
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = ashr i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %148, %140
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %161 = add nsw i32 %160, 1
  %162 = shl i32 1, %161
  %163 = sub nsw i32 %162, 1
  %164 = and i32 %159, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load i32, i32* @FPSCR_IXC, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %166, %158
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp sge i32 %174, 2046
  br i1 %175, label %176, label %195

176:                                              ; preds = %170
  %177 = load i32, i32* @FPSCR_OFC, align 4
  %178 = load i32, i32* @FPSCR_IXC, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %186 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %185, i32 0, i32 0
  store i32 2045, i32* %186, align 8
  %187 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %188 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %187, i32 0, i32 1
  store i32 -1, i32* %188, align 4
  br label %194

189:                                              ; preds = %176
  %190 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %191 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %190, i32 0, i32 0
  store i32 2047, i32* %191, align 8
  %192 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %193 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %192, i32 0, i32 1
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %189, %184
  br label %225

195:                                              ; preds = %170
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @VFP_DOUBLE_LOW_BITS, align 4
  %198 = add nsw i32 %197, 1
  %199 = ashr i32 %196, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %201, %195
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp ugt i64 %207, -9223372036854775808
  br i1 %208, label %209, label %210

209:                                              ; preds = %205, %202
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %209, %205
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* @FPSCR_UFC, align 4
  %215 = load i32, i32* %9, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %220 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %11, align 4
  %222 = ashr i32 %221, 1
  %223 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %224 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %217, %194
  br label %226

226:                                              ; preds = %225, %38, %32
  %227 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %228 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.vfp_double* %227)
  %229 = load %struct.vfp_double*, %struct.vfp_double** %7, align 8
  %230 = call i32 @vfp_double_pack(%struct.vfp_double* %229)
  store i32 %230, i32* %17, align 4
  %231 = load i8*, i8** %10, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %9, align 4
  %235 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @vfp_put_double(i32 %236, i32 %237)
  %239 = load i32, i32* %9, align 4
  ret i32 %239
}

declare dso_local i32 @vfp_double_dump(i8*, %struct.vfp_double*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @vfp_shiftright64jamming(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @vfp_double_pack(%struct.vfp_double*) #1

declare dso_local i32 @vfp_put_double(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
