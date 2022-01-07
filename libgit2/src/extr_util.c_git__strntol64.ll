; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__strntol64.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__strntol64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to convert string to long: not a number\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to convert string to long: overflow error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__strntol64(i32* %0, i8* %1, i64 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %31, %5
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @git__isspace(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %9, align 8
  br label %21

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %229

40:                                               ; preds = %36
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %12, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 45
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %18, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %56, %45
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %229

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i8*, i8** %12, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 48
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 10, i32* %11, align 4
  br label %92

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  %76 = icmp ugt i64 %75, 2
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 120
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 88
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77
  store i32 16, i32* %11, align 4
  br label %91

90:                                               ; preds = %83, %74
  store i32 8, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %65
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 36, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %93
  br label %229

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load i64, i64* %9, align 8
  %105 = icmp ugt i64 %104, 2
  br i1 %105, label %106, label %129

106:                                              ; preds = %103
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 48
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 120
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 88
  br i1 %123, label %124, label %129

124:                                              ; preds = %118, %112
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  store i8* %126, i8** %12, align 8
  %127 = load i64, i64* %9, align 8
  %128 = sub i64 %127, 2
  store i64 %128, i64* %9, align 8
  br label %129

129:                                              ; preds = %124, %118, %106, %103, %100
  br label %130

130:                                              ; preds = %221, %129
  %131 = load i64, i64* %9, align 8
  %132 = icmp ugt i64 %131, 0
  br i1 %132, label %133, label %228

133:                                              ; preds = %130
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp sle i32 48, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* %15, align 4
  %142 = icmp sle i32 %141, 57
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %144, 48
  store i32 %145, i32* %17, align 4
  br label %168

146:                                              ; preds = %140, %133
  %147 = load i32, i32* %15, align 4
  %148 = icmp sle i32 97, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* %15, align 4
  %151 = icmp sle i32 %150, 122
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, 97
  %155 = add nsw i32 %154, 10
  store i32 %155, i32* %17, align 4
  br label %167

156:                                              ; preds = %149, %146
  %157 = load i32, i32* %15, align 4
  %158 = icmp sle i32 65, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = icmp sle i32 %160, 90
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %15, align 4
  %164 = sub nsw i32 %163, 65
  %165 = add nsw i32 %164, 10
  store i32 %165, i32* %17, align 4
  br label %166

166:                                              ; preds = %162, %159, %156
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %143
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %228

173:                                              ; preds = %168
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %17, align 4
  %178 = sub nsw i32 0, %177
  br label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %17, align 4
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i32 [ %178, %176 ], [ %180, %179 ]
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* @INT64_MAX, align 4
  %185 = load i32, i32* %11, align 4
  %186 = sdiv i32 %184, %185
  %187 = icmp sgt i32 %183, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @INT64_MIN, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sdiv i32 %190, %191
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %188, %181
  store i32 1, i32* %16, align 4
  br label %221

195:                                              ; preds = %188
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %11, align 4
  %198 = mul nsw i32 %196, %197
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @INT64_MAX, align 4
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 %203, %204
  %206 = icmp sgt i32 %202, %205
  br i1 %206, label %216, label %207

207:                                              ; preds = %201, %195
  %208 = load i32, i32* %17, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @INT64_MIN, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sub nsw i32 %212, %213
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210, %201
  store i32 1, i32* %16, align 4
  br label %221

217:                                              ; preds = %210, %207
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %217, %216, %194
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %12, align 8
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %19, align 4
  %226 = load i64, i64* %9, align 8
  %227 = add i64 %226, -1
  store i64 %227, i64* %9, align 8
  br label %130

228:                                              ; preds = %172, %130
  br label %229

229:                                              ; preds = %228, %99, %64, %39
  %230 = load i32, i32* %19, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %234 = call i32 @git_error_set(i32 %233, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %250

235:                                              ; preds = %229
  %236 = load i8**, i8*** %10, align 8
  %237 = icmp ne i8** %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i8*, i8** %12, align 8
  %240 = load i8**, i8*** %10, align 8
  store i8* %239, i8** %240, align 8
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* %16, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %246 = call i32 @git_error_set(i32 %245, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %13, align 4
  %249 = load i32*, i32** %7, align 8
  store i32 %248, i32* %249, align 4
  store i32 0, i32* %6, align 4
  br label %250

250:                                              ; preds = %247, %244, %232
  %251 = load i32, i32* %6, align 4
  ret i32 %251
}

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
