; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_usage_with_options_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_usage_with_options_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32 }
%struct.option = type { i64, i8*, i32, i32, i8*, i64 }

@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@PARSE_OPT_HELP = common dso_local global i32 0, align 4
@PARSE_OPT_SHELL_EVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"cat <<\\EOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"usage: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"   or: %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@OPTION_END = common dso_local global i64 0, align 8
@OPTION_GROUP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@PARSE_OPT_NODASH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-%c\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@OPTION_NUMBER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"-NUM\00", align 1
@PARSE_OPT_LITERAL_ARGHELP = common dso_local global i32 0, align 4
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@USAGE_OPTS_WIDTH = common dso_local global i64 0, align 8
@OPTION_ALIAS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@USAGE_GAP = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"alias of --%s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, i8**, %struct.option*, i32, i32)* @usage_with_options_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage_with_options_internal(%struct.parse_opt_ctx_t* %0, i8** %1, %struct.option* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.parse_opt_ctx_t*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.option* %2, %struct.option** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** @stderr, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load i32*, i32** @stdout, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32* [ %19, %18 ], [ %21, %20 ]
  store i32* %23, i32** %12, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %27, i32* %6, align 4
  br label %300

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %33 = icmp ne %struct.parse_opt_ctx_t* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %36 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PARSE_OPT_SHELL_EVAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %12, align 8
  %43 = call i64 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %34, %31, %28
  %45 = load i32*, i32** %12, align 8
  %46 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %8, align 8
  %49 = load i8*, i8** %47, align 8
  %50 = call i8* @_(i8* %49)
  %51 = call i32 @fprintf_ln(i32* %45, i8* %46, i8* %50)
  br label %52

52:                                               ; preds = %64, %44
  %53 = load i8**, i8*** %8, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = load i32*, i32** %12, align 8
  %66 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8**, i8*** %8, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %8, align 8
  %69 = load i8*, i8** %67, align 8
  %70 = call i8* @_(i8* %69)
  %71 = call i32 @fprintf_ln(i32* %65, i8* %66, i8* %70)
  br label %52

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load i8**, i8*** %8, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %12, align 8
  %84 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i8**, i8*** %8, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @_(i8* %86)
  %88 = call i32 @fprintf_ln(i32* %83, i8* %84, i8* %87)
  br label %92

89:                                               ; preds = %77
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @fputc(i8 signext 10, i32* %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load i8**, i8*** %8, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %8, align 8
  br label %73

95:                                               ; preds = %73
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %277, %95
  %97 = load %struct.option*, %struct.option** %9, align 8
  %98 = getelementptr inbounds %struct.option, %struct.option* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @OPTION_END, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %280

102:                                              ; preds = %96
  %103 = load %struct.option*, %struct.option** %9, align 8
  %104 = getelementptr inbounds %struct.option, %struct.option* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OPTION_GROUP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %102
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @fputc(i8 signext 10, i32* %109)
  store i32 0, i32* %13, align 4
  %111 = load %struct.option*, %struct.option** %9, align 8
  %112 = getelementptr inbounds %struct.option, %struct.option* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load i32*, i32** %12, align 8
  %118 = load %struct.option*, %struct.option** %9, align 8
  %119 = getelementptr inbounds %struct.option, %struct.option* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @_(i8* %120)
  %122 = call i64 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %116, %108
  br label %277

124:                                              ; preds = %102
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load %struct.option*, %struct.option** %9, align 8
  %129 = getelementptr inbounds %struct.option, %struct.option* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %277

135:                                              ; preds = %127, %124
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @fputc(i8 signext 10, i32* %139)
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32*, i32** %12, align 8
  %143 = call i64 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i64 %143, i64* %14, align 8
  %144 = load %struct.option*, %struct.option** %9, align 8
  %145 = getelementptr inbounds %struct.option, %struct.option* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %141
  %149 = load %struct.option*, %struct.option** %9, align 8
  %150 = getelementptr inbounds %struct.option, %struct.option* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PARSE_OPT_NODASH, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load i32*, i32** %12, align 8
  %157 = load %struct.option*, %struct.option** %9, align 8
  %158 = getelementptr inbounds %struct.option, %struct.option* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i64 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i64, i64* %14, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %14, align 8
  br label %171

163:                                              ; preds = %148
  %164 = load i32*, i32** %12, align 8
  %165 = load %struct.option*, %struct.option** %9, align 8
  %166 = getelementptr inbounds %struct.option, %struct.option* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i64 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %167)
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %163, %155
  br label %172

172:                                              ; preds = %171, %141
  %173 = load %struct.option*, %struct.option** %9, align 8
  %174 = getelementptr inbounds %struct.option, %struct.option* %173, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.option*, %struct.option** %9, align 8
  %179 = getelementptr inbounds %struct.option, %struct.option* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i32*, i32** %12, align 8
  %184 = call i64 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %185 = load i64, i64* %14, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %14, align 8
  br label %187

187:                                              ; preds = %182, %177, %172
  %188 = load %struct.option*, %struct.option** %9, align 8
  %189 = getelementptr inbounds %struct.option, %struct.option* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load i32*, i32** %12, align 8
  %194 = load %struct.option*, %struct.option** %9, align 8
  %195 = getelementptr inbounds %struct.option, %struct.option* %194, i32 0, i32 4
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  %198 = load i64, i64* %14, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %14, align 8
  br label %200

200:                                              ; preds = %192, %187
  %201 = load %struct.option*, %struct.option** %9, align 8
  %202 = getelementptr inbounds %struct.option, %struct.option* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @OPTION_NUMBER, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load i32*, i32** %12, align 8
  %208 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %209 = call i64 @utf8_fprintf(i32* %207, i8* %208)
  %210 = load i64, i64* %14, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %14, align 8
  br label %212

212:                                              ; preds = %206, %200
  %213 = load %struct.option*, %struct.option** %9, align 8
  %214 = getelementptr inbounds %struct.option, %struct.option* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @PARSE_OPT_LITERAL_ARGHELP, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %212
  %220 = load %struct.option*, %struct.option** %9, align 8
  %221 = getelementptr inbounds %struct.option, %struct.option* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.option*, %struct.option** %9, align 8
  %228 = load i32*, i32** %12, align 8
  %229 = call i64 @usage_argh(%struct.option* %227, i32* %228)
  %230 = load i64, i64* %14, align 8
  %231 = add i64 %230, %229
  store i64 %231, i64* %14, align 8
  br label %232

232:                                              ; preds = %226, %219
  %233 = load i64, i64* %14, align 8
  %234 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %235 = icmp ule i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %238 = load i64, i64* %14, align 8
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %15, align 4
  br label %246

241:                                              ; preds = %232
  %242 = load i32*, i32** %12, align 8
  %243 = call i32 @fputc(i8 signext 10, i32* %242)
  %244 = load i64, i64* @USAGE_OPTS_WIDTH, align 8
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %15, align 4
  br label %246

246:                                              ; preds = %241, %236
  %247 = load %struct.option*, %struct.option** %9, align 8
  %248 = getelementptr inbounds %struct.option, %struct.option* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @OPTION_ALIAS, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %266

252:                                              ; preds = %246
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %15, align 4
  %255 = load i8*, i8** @USAGE_GAP, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = call i64 (i32*, i8*, ...) @fprintf(i32* %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %257, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %259 = load i32*, i32** %12, align 8
  %260 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %261 = load %struct.option*, %struct.option** %9, align 8
  %262 = getelementptr inbounds %struct.option, %struct.option* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i8*
  %265 = call i32 @fprintf_ln(i32* %259, i8* %260, i8* %264)
  br label %277

266:                                              ; preds = %246
  %267 = load i32*, i32** %12, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load i8*, i8** @USAGE_GAP, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  %272 = load %struct.option*, %struct.option** %9, align 8
  %273 = getelementptr inbounds %struct.option, %struct.option* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* @_(i8* %274)
  %276 = call i64 (i32*, i8*, ...) @fprintf(i32* %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %271, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %275)
  br label %277

277:                                              ; preds = %266, %252, %134, %123
  %278 = load %struct.option*, %struct.option** %9, align 8
  %279 = getelementptr inbounds %struct.option, %struct.option* %278, i32 1
  store %struct.option* %279, %struct.option** %9, align 8
  br label %96

280:                                              ; preds = %96
  %281 = load i32*, i32** %12, align 8
  %282 = call i32 @fputc(i8 signext 10, i32* %281)
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %298, label %285

285:                                              ; preds = %280
  %286 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %287 = icmp ne %struct.parse_opt_ctx_t* %286, null
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %7, align 8
  %290 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @PARSE_OPT_SHELL_EVAL, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = load i32*, i32** %12, align 8
  %297 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %296)
  br label %298

298:                                              ; preds = %295, %288, %285, %280
  %299 = load i32, i32* @PARSE_OPT_HELP, align 4
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %298, %26
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fprintf_ln(i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i64 @utf8_fprintf(i32*, i8*) #1

declare dso_local i64 @usage_argh(%struct.option*, i32*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
