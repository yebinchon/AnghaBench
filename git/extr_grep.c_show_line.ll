; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_show_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_show_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i64, i8**, i32 (%struct.grep_opt*, i8*, i32)*, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@GREP_COLOR_SEP = common dso_local global i64 0, align 8
@GREP_CONTEXT_BODY = common dso_local global i32 0, align 4
@GREP_COLOR_MATCH_SELECTED = common dso_local global i64 0, align 8
@GREP_COLOR_MATCH_CONTEXT = common dso_local global i64 0, align 8
@GREP_COLOR_SELECTED = common dso_local global i64 0, align 8
@GREP_COLOR_CONTEXT = common dso_local global i64 0, align 8
@GREP_COLOR_FUNCTION = common dso_local global i64 0, align 8
@REG_NOTBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, i8*, i8*, i8*, i32, i32, i8)* @show_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_line(%struct.grep_opt* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8 signext %6) #0 {
  %8 = alloca %struct.grep_opt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_3__, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 %6, i8* %14, align 1
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %28 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %29 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %7
  %33 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %34 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %39 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %44 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %43, i32 0, i32 2
  %45 = load i32 (%struct.grep_opt*, i8*, i32)*, i32 (%struct.grep_opt*, i8*, i32)** %44, align 8
  %46 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %47 = call i32 %45(%struct.grep_opt* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %48

48:                                               ; preds = %42, %37
  br label %114

49:                                               ; preds = %32, %7
  %50 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %51 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %56 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %61 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %59, %54, %49
  %65 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %66 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %71 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %76 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %77 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* @GREP_COLOR_SEP, align 8
  %80 = getelementptr inbounds i8*, i8** %78, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @output_color(%struct.grep_opt* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i8* %81)
  %83 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %84 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %83, i32 0, i32 2
  %85 = load i32 (%struct.grep_opt*, i8*, i32)*, i32 (%struct.grep_opt*, i8*, i32)** %84, align 8
  %86 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %87 = call i32 %85(%struct.grep_opt* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %88

88:                                               ; preds = %74, %69
  br label %112

89:                                               ; preds = %64
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %93 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = icmp sgt i64 %91, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %99 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %100 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i64, i64* @GREP_COLOR_SEP, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @output_color(%struct.grep_opt* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i8* %104)
  %106 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %107 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %106, i32 0, i32 2
  %108 = load i32 (%struct.grep_opt*, i8*, i32)*, i32 (%struct.grep_opt*, i8*, i32)** %107, align 8
  %109 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %110 = call i32 %108(%struct.grep_opt* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %111

111:                                              ; preds = %97, %89
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %59
  br label %114

114:                                              ; preds = %113, %48
  %115 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %116 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i8, i8* %14, align 1
  %125 = call i32 @show_line_header(%struct.grep_opt* %120, i8* %121, i32 %122, i32 %123, i8 signext %124)
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %128 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %133 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %278

136:                                              ; preds = %131, %126
  %137 = load i32, i32* @GREP_CONTEXT_BODY, align 4
  store i32 %137, i32* %19, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  store i32 %140, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %141 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %142 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %199

145:                                              ; preds = %136
  %146 = load i8, i8* %14, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 58
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %151 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %150, i32 0, i32 1
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* @GREP_COLOR_MATCH_SELECTED, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %16, align 8
  br label %163

156:                                              ; preds = %145
  %157 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %158 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = load i64, i64* @GREP_COLOR_MATCH_CONTEXT, align 8
  %161 = getelementptr inbounds i8*, i8** %159, i64 %160
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %16, align 8
  br label %163

163:                                              ; preds = %156, %149
  %164 = load i8, i8* %14, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 58
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %169 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = load i64, i64* @GREP_COLOR_SELECTED, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  %173 = load i8*, i8** %172, align 8
  store i8* %173, i8** %17, align 8
  br label %198

174:                                              ; preds = %163
  %175 = load i8, i8* %14, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 45
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %180 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %179, i32 0, i32 1
  %181 = load i8**, i8*** %180, align 8
  %182 = load i64, i64* @GREP_COLOR_CONTEXT, align 8
  %183 = getelementptr inbounds i8*, i8** %181, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %17, align 8
  br label %197

185:                                              ; preds = %174
  %186 = load i8, i8* %14, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 61
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %191 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %190, i32 0, i32 1
  %192 = load i8**, i8*** %191, align 8
  %193 = load i64, i64* @GREP_COLOR_FUNCTION, align 8
  %194 = getelementptr inbounds i8*, i8** %192, i64 %193
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %17, align 8
  br label %196

196:                                              ; preds = %189, %185
  br label %197

197:                                              ; preds = %196, %178
  br label %198

198:                                              ; preds = %197, %167
  br label %199

199:                                              ; preds = %198, %136
  %200 = load i8*, i8** %10, align 8
  store i8 0, i8* %200, align 1
  br label %201

201:                                              ; preds = %259, %199
  %202 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %21, align 4
  %207 = call i64 @next_match(%struct.grep_opt* %202, i8* %203, i8* %204, i32 %205, %struct.TYPE_3__* %18, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %274

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %274

216:                                              ; preds = %209
  %217 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %218 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %216
  %222 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %223 = load i8*, i8** %11, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i8, i8* %14, align 1
  %227 = call i32 @show_line_header(%struct.grep_opt* %222, i8* %223, i32 %224, i32 %225, i8 signext %226)
  br label %235

228:                                              ; preds = %216
  %229 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i8*, i8** %17, align 8
  %234 = call i32 @output_color(%struct.grep_opt* %229, i8* %230, i32 %232, i8* %233)
  br label %235

235:                                              ; preds = %228, %221
  %236 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %243, %245
  %247 = load i8*, i8** %16, align 8
  %248 = call i32 @output_color(%struct.grep_opt* %236, i8* %241, i32 %246, i8* %247)
  %249 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %250 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %235
  %254 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %255 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %254, i32 0, i32 2
  %256 = load i32 (%struct.grep_opt*, i8*, i32)*, i32 (%struct.grep_opt*, i8*, i32)** %255, align 8
  %257 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %258 = call i32 %256(%struct.grep_opt* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %259

259:                                              ; preds = %253, %235
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i8*, i8** %9, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8, i8* %262, i64 %263
  store i8* %264, i8** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %13, align 4
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %15, align 4
  %272 = sub nsw i32 %271, %270
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* @REG_NOTBOL, align 4
  store i32 %273, i32* %21, align 4
  br label %201

274:                                              ; preds = %215, %201
  %275 = load i32, i32* %20, align 4
  %276 = trunc i32 %275 to i8
  %277 = load i8*, i8** %10, align 8
  store i8 %276, i8* %277, align 1
  br label %278

278:                                              ; preds = %274, %131
  %279 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %280 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %278
  %284 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %285 = load i8*, i8** %9, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load i8*, i8** %17, align 8
  %288 = call i32 @output_color(%struct.grep_opt* %284, i8* %285, i32 %286, i8* %287)
  %289 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %290 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %289, i32 0, i32 2
  %291 = load i32 (%struct.grep_opt*, i8*, i32)*, i32 (%struct.grep_opt*, i8*, i32)** %290, align 8
  %292 = load %struct.grep_opt*, %struct.grep_opt** %8, align 8
  %293 = call i32 %291(%struct.grep_opt* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %294

294:                                              ; preds = %283, %278
  ret void
}

declare dso_local i32 @output_color(%struct.grep_opt*, i8*, i32, i8*) #1

declare dso_local i32 @show_line_header(%struct.grep_opt*, i8*, i32, i32, i8 signext) #1

declare dso_local i64 @next_match(%struct.grep_opt*, i8*, i8*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
