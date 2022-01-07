; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_parse_long_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_parse_long_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i8**, i32, i8*, i32 }
%struct.option = type { i64, i8*, i32, i32, i64 }

@OPTION_END = common dso_local global i64 0, align 8
@OPTION_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s takes no value\00", align 1
@PARSE_OPT_DONE = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@OPT_UNSET = common dso_local global i32 0, align 4
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@disallow_abbreviated_options = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"disallowed abbreviated or ambiguous option '%.*s'\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ambiguous option: %s (could be --%s%s or --%s%s)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PARSE_OPT_HELP = common dso_local global i32 0, align 4
@PARSE_OPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, i8*, %struct.option*)* @parse_long_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_long_opt(%struct.parse_opt_ctx_t* %0, i8* %1, %struct.option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca %struct.option*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.option* %2, %struct.option** %7, align 8
  %18 = load %struct.option*, %struct.option** %7, align 8
  store %struct.option* %18, %struct.option** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchrnul(i8* %19, i8 signext 61)
  store i8* %20, i8** %9, align 8
  store %struct.option* null, %struct.option** %10, align 8
  store %struct.option* null, %struct.option** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %221, %3
  %22 = load %struct.option*, %struct.option** %7, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPTION_END, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %224

27:                                               ; preds = %21
  %28 = load %struct.option*, %struct.option** %7, align 8
  %29 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %221

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %173, %34
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @skip_prefix(i8* %36, i8* %37, i8** %14)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i8* null, i8** %14, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.option*, %struct.option** %7, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OPTION_ARGUMENT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %41
  %48 = load i8*, i8** %14, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %221

51:                                               ; preds = %47
  %52 = load i8*, i8** %14, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 61
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.option*, %struct.option** %7, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @optname(%struct.option* %58, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i32, i8*, ...) @error(i32 %57, i8* %62)
  store i32 %63, i32* %4, align 4
  br label %279

64:                                               ; preds = %51
  %65 = load i8*, i8** %14, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %221

69:                                               ; preds = %64
  %70 = load %struct.option*, %struct.option** %7, align 8
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.option*, %struct.option** %7, align 8
  %76 = getelementptr inbounds %struct.option, %struct.option* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.option*, %struct.option** %7, align 8
  %79 = getelementptr inbounds %struct.option, %struct.option* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %69
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -2
  %85 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %86 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %89 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %87, i64 %92
  store i8* %84, i8** %93, align 8
  %94 = load i32, i32* @PARSE_OPT_DONE, align 4
  store i32 %94, i32* %4, align 4
  br label %279

95:                                               ; preds = %41
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %198, label %98

98:                                               ; preds = %95
  %99 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %100 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %149, label %105

105:                                              ; preds = %98
  %106 = load i8*, i8** %15, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @strncmp(i8* %106, i8* %107, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %149, label %116

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %195, %161, %116
  %118 = load %struct.option*, %struct.option** %10, align 8
  %119 = icmp ne %struct.option* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %122 = load %struct.option*, %struct.option** %10, align 8
  %123 = load %struct.option*, %struct.option** %7, align 8
  %124 = call i32 @is_alias(%struct.parse_opt_ctx_t* %121, %struct.option* %122, %struct.option* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %120
  %127 = load %struct.option*, %struct.option** %10, align 8
  store %struct.option* %127, %struct.option** %11, align 8
  %128 = load i32, i32* %12, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %120, %117
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @OPT_UNSET, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %143 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %144

144:                                              ; preds = %139, %134, %129
  %145 = load %struct.option*, %struct.option** %7, align 8
  store %struct.option* %145, %struct.option** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = xor i32 %146, %147
  store i32 %148, i32* %12, align 4
  br label %221

149:                                              ; preds = %105, %98
  %150 = load %struct.option*, %struct.option** %7, align 8
  %151 = getelementptr inbounds %struct.option, %struct.option* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %221

157:                                              ; preds = %149
  %158 = load i8*, i8** %6, align 8
  %159 = call i64 @starts_with(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* @OPT_UNSET, align 4
  %163 = load i32, i32* %16, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %16, align 4
  br label %117

165:                                              ; preds = %157
  %166 = load i8*, i8** %6, align 8
  %167 = call i64 @starts_with(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %165
  %170 = load i8*, i8** %15, align 8
  %171 = call i64 @starts_with(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  store i8* %175, i8** %15, align 8
  %176 = load i32, i32* @OPT_UNSET, align 4
  %177 = load i32, i32* %17, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %17, align 4
  br label %35

179:                                              ; preds = %169
  br label %221

180:                                              ; preds = %165
  %181 = load i32, i32* @OPT_UNSET, align 4
  %182 = load i32, i32* %16, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %16, align 4
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  %186 = load i8*, i8** %15, align 8
  %187 = call i32 @skip_prefix(i8* %185, i8* %186, i8** %14)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %180
  %190 = load i8*, i8** %15, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  %193 = call i64 @starts_with(i8* %190, i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %117

196:                                              ; preds = %189
  br label %221

197:                                              ; preds = %180
  br label %198

198:                                              ; preds = %197, %95
  %199 = load i8*, i8** %14, align 8
  %200 = load i8, i8* %199, align 1
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load i8*, i8** %14, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 61
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %221

208:                                              ; preds = %202
  %209 = load i8*, i8** %14, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %212 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  br label %213

213:                                              ; preds = %208, %198
  %214 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %215 = load %struct.option*, %struct.option** %7, align 8
  %216 = load %struct.option*, %struct.option** %8, align 8
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = xor i32 %217, %218
  %220 = call i32 @get_value(%struct.parse_opt_ctx_t* %214, %struct.option* %215, %struct.option* %216, i32 %219)
  store i32 %220, i32* %4, align 4
  br label %279

221:                                              ; preds = %207, %196, %179, %156, %144, %68, %50, %33
  %222 = load %struct.option*, %struct.option** %7, align 8
  %223 = getelementptr inbounds %struct.option, %struct.option* %222, i32 1
  store %struct.option* %223, %struct.option** %7, align 8
  br label %21

224:                                              ; preds = %21
  %225 = load i64, i64* @disallow_abbreviated_options, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load %struct.option*, %struct.option** %11, align 8
  %229 = icmp ne %struct.option* %228, null
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load %struct.option*, %struct.option** %10, align 8
  %232 = icmp ne %struct.option* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %230, %227
  %234 = load i8*, i8** %9, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @die(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %239, i8* %240)
  br label %242

242:                                              ; preds = %233, %230, %224
  %243 = load %struct.option*, %struct.option** %11, align 8
  %244 = icmp ne %struct.option* %243, null
  br i1 %244, label %245, label %268

245:                                              ; preds = %242
  %246 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %247 = load i8*, i8** %6, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* @OPT_UNSET, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %254 = load %struct.option*, %struct.option** %11, align 8
  %255 = getelementptr inbounds %struct.option, %struct.option* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @OPT_UNSET, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %263 = load %struct.option*, %struct.option** %10, align 8
  %264 = getelementptr inbounds %struct.option, %struct.option* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 (i32, i8*, ...) @error(i32 %246, i8* %247, i8* %253, i8* %256, i8* %262, i8* %265)
  %267 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %267, i32* %4, align 4
  br label %279

268:                                              ; preds = %242
  %269 = load %struct.option*, %struct.option** %10, align 8
  %270 = icmp ne %struct.option* %269, null
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %273 = load %struct.option*, %struct.option** %10, align 8
  %274 = load %struct.option*, %struct.option** %8, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @get_value(%struct.parse_opt_ctx_t* %272, %struct.option* %273, %struct.option* %274, i32 %275)
  store i32 %276, i32* %4, align 4
  br label %279

277:                                              ; preds = %268
  %278 = load i32, i32* @PARSE_OPT_UNKNOWN, align 4
  store i32 %278, i32* %4, align 4
  br label %279

279:                                              ; preds = %277, %271, %245, %213, %82, %56
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @optname(%struct.option*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @is_alias(%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*, i32) #1

declare dso_local i32 @die(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
