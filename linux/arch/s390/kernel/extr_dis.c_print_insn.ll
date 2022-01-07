; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_print_insn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_operand = type { i32 }
%struct.s390_insn = type { i64, i64, i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%.7s\09\00", align 1
@long_insn_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%.5s\09\00", align 1
@formats = common dso_local global i8** null, align 8
@operands = common dso_local global %struct.s390_operand* null, align 8
@OPERAND_INDEX = common dso_local global i32 0, align 4
@OPERAND_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@OPERAND_GPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%%r%i\00", align 1
@OPERAND_FPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%%f%i\00", align 1
@OPERAND_AR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%%a%i\00", align 1
@OPERAND_CR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%%c%i\00", align 1
@OPERAND_VR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%%v%i\00", align 1
@OPERAND_PCREL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@OPERAND_SIGNED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OPERAND_DISP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.s390_insn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.s390_operand*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.s390_insn* @find_insn(i8* %15)
  store %struct.s390_insn* %16, %struct.s390_insn** %7, align 8
  %17 = load %struct.s390_insn*, %struct.s390_insn** %7, align 8
  %18 = icmp ne %struct.s390_insn* %17, null
  br i1 %18, label %19, label %252

19:                                               ; preds = %3
  %20 = load %struct.s390_insn*, %struct.s390_insn** %7, align 8
  %21 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %12, align 8
  %26 = load i8**, i8*** @long_insn_name, align 8
  %27 = load %struct.s390_insn*, %struct.s390_insn** %7, align 8
  %28 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %12, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %12, align 8
  br label %45

36:                                               ; preds = %19
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.s390_insn*, %struct.s390_insn** %7, align 8
  %39 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %12, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %36, %24
  store i8 0, i8* %11, align 1
  %46 = load i8**, i8*** @formats, align 8
  %47 = load %struct.s390_insn*, %struct.s390_insn** %7, align 8
  %48 = getelementptr inbounds %struct.s390_insn, %struct.s390_insn* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %246, %45
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 6
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i1 [ false, %52 ], [ %59, %57 ]
  br i1 %61, label %62, label %251

62:                                               ; preds = %60
  %63 = load %struct.s390_operand*, %struct.s390_operand** @operands, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %63, i64 %67
  store %struct.s390_operand* %68, %struct.s390_operand** %9, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %71 = call i32 @extract_operand(i8* %69, %struct.s390_operand* %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %73 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @OPERAND_INDEX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %62
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %246

82:                                               ; preds = %78, %62
  %83 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %84 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @OPERAND_BASE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8, i8* %11, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 40
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8 44, i8* %11, align 1
  br label %246

97:                                               ; preds = %92, %89, %82
  %98 = load i8, i8* %11, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = load i8, i8* %11, align 1
  %103 = sext i8 %102 to i32
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %12, align 8
  br label %108

108:                                              ; preds = %100, %97
  %109 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %110 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @OPERAND_GPR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %12, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %12, align 8
  br label %222

122:                                              ; preds = %108
  %123 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %124 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @OPERAND_FPR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  br label %221

136:                                              ; preds = %122
  %137 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %138 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @OPERAND_AR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load i8*, i8** %12, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** %12, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %12, align 8
  br label %220

150:                                              ; preds = %136
  %151 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %152 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @OPERAND_CR, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = load i8*, i8** %12, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** %12, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %12, align 8
  br label %219

164:                                              ; preds = %150
  %165 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %166 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @OPERAND_VR, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load i8*, i8** %12, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, i8*, ...) @sprintf(i8* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  %175 = load i8*, i8** %12, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %12, align 8
  br label %218

178:                                              ; preds = %164
  %179 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %180 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @OPERAND_PCREL, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load i8*, i8** %12, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %188, %189
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %186, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %190)
  %192 = load i8*, i8** %12, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %12, align 8
  br label %217

195:                                              ; preds = %178
  %196 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %197 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @OPERAND_SIGNED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %195
  %203 = load i8*, i8** %12, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i32 (i8*, i8*, ...) @sprintf(i8* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  %206 = load i8*, i8** %12, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %12, align 8
  br label %216

209:                                              ; preds = %195
  %210 = load i8*, i8** %12, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 (i8*, i8*, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %211)
  %213 = load i8*, i8** %12, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %12, align 8
  br label %216

216:                                              ; preds = %209, %202
  br label %217

217:                                              ; preds = %216, %185
  br label %218

218:                                              ; preds = %217, %171
  br label %219

219:                                              ; preds = %218, %157
  br label %220

220:                                              ; preds = %219, %143
  br label %221

221:                                              ; preds = %220, %129
  br label %222

222:                                              ; preds = %221, %115
  %223 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %224 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @OPERAND_DISP, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  store i8 40, i8* %11, align 1
  br label %245

230:                                              ; preds = %222
  %231 = load %struct.s390_operand*, %struct.s390_operand** %9, align 8
  %232 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @OPERAND_BASE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %230
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 (i8*, i8*, ...) @sprintf(i8* %238, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %240 = load i8*, i8** %12, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  store i8* %242, i8** %12, align 8
  store i8 44, i8* %11, align 1
  br label %244

243:                                              ; preds = %230
  store i8 44, i8* %11, align 1
  br label %244

244:                                              ; preds = %243, %237
  br label %245

245:                                              ; preds = %244, %229
  br label %246

246:                                              ; preds = %245, %96, %81
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %8, align 8
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %13, align 4
  br label %52

251:                                              ; preds = %60
  br label %258

252:                                              ; preds = %3
  %253 = load i8*, i8** %12, align 8
  %254 = call i32 (i8*, i8*, ...) @sprintf(i8* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %255 = load i8*, i8** %12, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %12, align 8
  br label %258

258:                                              ; preds = %252, %251
  %259 = load i8*, i8** %12, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = trunc i64 %263 to i32
  ret i32 %264
}

declare dso_local %struct.s390_insn* @find_insn(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @extract_operand(i8*, %struct.s390_operand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
