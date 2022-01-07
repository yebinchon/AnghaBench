; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_step.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_options_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i8*, i32, i8**, i32, i8**, i32 }
%struct.option = type { i32 }

@PARSE_OPT_NO_INTERNAL_HELP = common dso_local global i32 0, align 4
@PARSE_OPT_ONE_SHOT = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"-git-completion-helper\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"parse_short_opt() cannot return these\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"end-of-options\00", align 1
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"help-all\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"parse_long_opt() cannot return these\00", align 1
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_options_step(%struct.parse_opt_ctx_t* %0, %struct.option* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca %struct.option*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store %struct.option* %1, %struct.option** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %11 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PARSE_OPT_NO_INTERNAL_HELP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %19 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %18, i32 0, i32 1
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %300, %3
  %21 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %22 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %309

25:                                               ; preds = %20
  %26 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %27 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %32 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %39 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %42 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %309

46:                                               ; preds = %37, %25
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 45
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.option*, %struct.option** %6, align 8
  %60 = call i64 @parse_nodash_opt(%struct.parse_opt_ctx_t* %57, i8* %58, %struct.option* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %300

63:                                               ; preds = %56
  %64 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %65 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 129, i32* %4, align 4
  br label %315

71:                                               ; preds = %63
  %72 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %73 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %78 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %77, i32 0, i32 5
  %79 = load i8**, i8*** %78, align 8
  %80 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %81 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %79, i64 %84
  store i8* %76, i8** %85, align 8
  br label %300

86:                                               ; preds = %51
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %91 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %310

100:                                              ; preds = %94, %89, %86
  %101 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %102 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load %struct.option*, %struct.option** %6, align 8
  %112 = call i32 @show_gitcomp(%struct.option* %111)
  store i32 %112, i32* %4, align 4
  br label %315

113:                                              ; preds = %105, %100
  %114 = load i8*, i8** %9, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 45
  br i1 %118, label %119, label %205

119:                                              ; preds = %113
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %123 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %125 = load %struct.option*, %struct.option** %6, align 8
  %126 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %124, %struct.option* %125)
  switch i32 %126, label %153 [
    i32 131, label %127
    i32 128, label %128
    i32 129, label %150
    i32 130, label %150
    i32 133, label %150
    i32 132, label %152
  ]

127:                                              ; preds = %119
  store i32 131, i32* %4, align 4
  br label %315

128:                                              ; preds = %119
  %129 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %130 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load %struct.option*, %struct.option** %6, align 8
  %137 = call i32 @check_typos(i8* %135, %struct.option* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %143 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 104
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %310

149:                                              ; preds = %141, %138
  br label %267

150:                                              ; preds = %119, %119, %119
  %151 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %152

152:                                              ; preds = %119, %150
  br label %153

153:                                              ; preds = %119, %152
  %154 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %155 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load %struct.option*, %struct.option** %6, align 8
  %162 = call i32 @check_typos(i8* %160, %struct.option* %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %203, %163
  %165 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %166 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %204

169:                                              ; preds = %164
  %170 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %171 = load %struct.option*, %struct.option** %6, align 8
  %172 = call i32 @parse_short_opt(%struct.parse_opt_ctx_t* %170, %struct.option* %171)
  switch i32 %172, label %203 [
    i32 131, label %173
    i32 128, label %174
    i32 129, label %200
    i32 133, label %200
    i32 130, label %200
    i32 132, label %202
  ]

173:                                              ; preds = %169
  store i32 131, i32* %4, align 4
  br label %315

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %179 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 104
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %310

185:                                              ; preds = %177, %174
  %186 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %187 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 -1
  %190 = call i8* @xstrdup(i8* %189)
  %191 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %192 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %191, i32 0, i32 3
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  store i8* %190, i8** %194, align 8
  %195 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %196 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %195, i32 0, i32 3
  %197 = load i8**, i8*** %196, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  store i8 45, i8* %199, align 1
  br label %267

200:                                              ; preds = %169, %169, %169
  %201 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %202

202:                                              ; preds = %169, %200
  br label %203

203:                                              ; preds = %169, %202
  br label %164

204:                                              ; preds = %164
  br label %300

205:                                              ; preds = %113
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %232, label %215

215:                                              ; preds = %210, %205
  %216 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %217 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %215
  %223 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %224 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %224, align 8
  %227 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %228 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %227, i32 0, i32 3
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i32 1
  store i8** %230, i8*** %228, align 8
  br label %231

231:                                              ; preds = %222, %215
  br label %309

232:                                              ; preds = %210
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %245

235:                                              ; preds = %232
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 2
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %235
  %241 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %242 = load i8**, i8*** %7, align 8
  %243 = load %struct.option*, %struct.option** %6, align 8
  %244 = call i32 @usage_with_options_internal(%struct.parse_opt_ctx_t* %241, i8** %242, %struct.option* %243, i32 1, i32 0)
  store i32 %244, i32* %4, align 4
  br label %315

245:                                              ; preds = %235, %232
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load i8*, i8** %9, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  br label %310

254:                                              ; preds = %248, %245
  %255 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %256 = load i8*, i8** %9, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = load %struct.option*, %struct.option** %6, align 8
  %259 = call i32 @parse_long_opt(%struct.parse_opt_ctx_t* %255, i8* %257, %struct.option* %258)
  switch i32 %259, label %266 [
    i32 131, label %260
    i32 128, label %261
    i32 130, label %262
    i32 129, label %263
    i32 133, label %263
    i32 132, label %265
  ]

260:                                              ; preds = %254
  store i32 131, i32* %4, align 4
  br label %315

261:                                              ; preds = %254
  br label %267

262:                                              ; preds = %254
  br label %310

263:                                              ; preds = %254, %254
  %264 = call i32 @BUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %265

265:                                              ; preds = %254, %263
  br label %266

266:                                              ; preds = %254, %265
  br label %300

267:                                              ; preds = %261, %185, %149
  %268 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %269 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @PARSE_OPT_ONE_SHOT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %309

275:                                              ; preds = %267
  %276 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %277 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %275
  store i32 128, i32* %4, align 4
  br label %315

283:                                              ; preds = %275
  %284 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %285 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %284, i32 0, i32 3
  %286 = load i8**, i8*** %285, align 8
  %287 = getelementptr inbounds i8*, i8** %286, i64 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %290 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %289, i32 0, i32 5
  %291 = load i8**, i8*** %290, align 8
  %292 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %293 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i8*, i8** %291, i64 %296
  store i8* %288, i8** %297, align 8
  %298 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %299 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %298, i32 0, i32 1
  store i8* null, i8** %299, align 8
  br label %300

300:                                              ; preds = %283, %266, %204, %71, %62
  %301 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %302 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %302, align 8
  %305 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %306 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %305, i32 0, i32 3
  %307 = load i8**, i8*** %306, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i32 1
  store i8** %308, i8*** %306, align 8
  br label %20

309:                                              ; preds = %274, %231, %45, %20
  store i32 132, i32* %4, align 4
  br label %315

310:                                              ; preds = %262, %253, %184, %148, %99
  %311 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %312 = load i8**, i8*** %7, align 8
  %313 = load %struct.option*, %struct.option** %6, align 8
  %314 = call i32 @usage_with_options_internal(%struct.parse_opt_ctx_t* %311, i8** %312, %struct.option* %313, i32 0, i32 0)
  store i32 %314, i32* %4, align 4
  br label %315

315:                                              ; preds = %310, %309, %282, %260, %240, %173, %127, %110, %70
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i64 @parse_nodash_opt(%struct.parse_opt_ctx_t*, i8*, %struct.option*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @show_gitcomp(%struct.option*) #1

declare dso_local i32 @parse_short_opt(%struct.parse_opt_ctx_t*, %struct.option*) #1

declare dso_local i32 @check_typos(i8*, %struct.option*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @usage_with_options_internal(%struct.parse_opt_ctx_t*, i8**, %struct.option*, i32, i32) #1

declare dso_local i32 @parse_long_opt(%struct.parse_opt_ctx_t*, i8*, %struct.option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
