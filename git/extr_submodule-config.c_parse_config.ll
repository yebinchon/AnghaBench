; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.parse_config_parameter = type { i32, i32, i32, i32 }
%struct.submodule = type { i32, i8*, i32, %struct.TYPE_2__, i8*, i8*, i32, i8* }
%struct.TYPE_2__ = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"fetchrecursesubmodules\00", align 1
@RECURSE_SUBMODULES_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"untracked\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Invalid parameter '%s' for config option 'submodule.%s.ignore'\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@SM_UPDATE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid value for %s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.parse_config_parameter*, align 8
  %9 = alloca %struct.submodule*, align 8
  %10 = alloca %struct.strbuf, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.parse_config_parameter*
  store %struct.parse_config_parameter* %15, %struct.parse_config_parameter** %8, align 8
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %17 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @name_and_item_from_var(i8* %18, %struct.strbuf* %10, %struct.strbuf* %11)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %360

22:                                               ; preds = %3
  %23 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %24 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %27 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.submodule* @lookup_or_create_by_name(i32 %25, i32 %28, i8* %30)
  store %struct.submodule* %31, %struct.submodule** %9, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @config_error_nonbool(i8* %40)
  store i32 %41, i32* %12, align 4
  br label %95

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @looks_like_command_line_option(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @warn_command_line_option(i8* %47, i8* %48)
  br label %94

50:                                               ; preds = %42
  %51 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %52 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %50
  %56 = load %struct.submodule*, %struct.submodule** %9, align 8
  %57 = getelementptr inbounds %struct.submodule, %struct.submodule* %56, i32 0, i32 7
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %62 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.submodule*, %struct.submodule** %9, align 8
  %65 = getelementptr inbounds %struct.submodule, %struct.submodule* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @warn_multiple_config(i32 %63, i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %93

68:                                               ; preds = %55, %50
  %69 = load %struct.submodule*, %struct.submodule** %9, align 8
  %70 = getelementptr inbounds %struct.submodule, %struct.submodule* %69, i32 0, i32 7
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %75 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.submodule*, %struct.submodule** %9, align 8
  %78 = call i32 @cache_remove_path(i32 %76, %struct.submodule* %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.submodule*, %struct.submodule** %9, align 8
  %81 = getelementptr inbounds %struct.submodule, %struct.submodule* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @xstrdup(i8* %84)
  %86 = load %struct.submodule*, %struct.submodule** %9, align 8
  %87 = getelementptr inbounds %struct.submodule, %struct.submodule* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %89 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.submodule*, %struct.submodule** %9, align 8
  %92 = call i32 @cache_put_path(i32 %90, %struct.submodule* %91)
  br label %93

93:                                               ; preds = %79, %60
  br label %94

94:                                               ; preds = %93, %46
  br label %95

95:                                               ; preds = %94, %39
  br label %356

96:                                               ; preds = %22
  %97 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %132, label %101

101:                                              ; preds = %96
  %102 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %103 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @is_null_oid(i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %107 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %101
  %111 = load %struct.submodule*, %struct.submodule** %9, align 8
  %112 = getelementptr inbounds %struct.submodule, %struct.submodule* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RECURSE_SUBMODULES_NONE, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %118 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.submodule*, %struct.submodule** %9, align 8
  %121 = getelementptr inbounds %struct.submodule, %struct.submodule* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @warn_multiple_config(i32 %119, i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %131

124:                                              ; preds = %110, %101
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @parse_fetch_recurse(i8* %125, i8* %126, i32 %127)
  %129 = load %struct.submodule*, %struct.submodule** %9, align 8
  %130 = getelementptr inbounds %struct.submodule, %struct.submodule* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %124, %116
  br label %355

132:                                              ; preds = %96
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %194, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @config_error_nonbool(i8* %141)
  store i32 %142, i32* %12, align 4
  br label %193

143:                                              ; preds = %137
  %144 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %145 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %161, label %148

148:                                              ; preds = %143
  %149 = load %struct.submodule*, %struct.submodule** %9, align 8
  %150 = getelementptr inbounds %struct.submodule, %struct.submodule* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %155 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.submodule*, %struct.submodule** %9, align 8
  %158 = getelementptr inbounds %struct.submodule, %struct.submodule* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @warn_multiple_config(i32 %156, i32 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %192

161:                                              ; preds = %148, %143
  %162 = load i8*, i8** %6, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load i8*, i8** %6, align 8
  %171 = call i64 @strcmp(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i8*, i8** %6, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %178, i8* %180)
  br label %191

182:                                              ; preds = %173, %169, %165, %161
  %183 = load %struct.submodule*, %struct.submodule** %9, align 8
  %184 = getelementptr inbounds %struct.submodule, %struct.submodule* %183, i32 0, i32 5
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %6, align 8
  %188 = call i8* @xstrdup(i8* %187)
  %189 = load %struct.submodule*, %struct.submodule** %9, align 8
  %190 = getelementptr inbounds %struct.submodule, %struct.submodule* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %182, %177
  br label %192

192:                                              ; preds = %191, %153
  br label %193

193:                                              ; preds = %192, %140
  br label %354

194:                                              ; preds = %132
  %195 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %243, label %199

199:                                              ; preds = %194
  %200 = load i8*, i8** %6, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 @config_error_nonbool(i8* %203)
  store i32 %204, i32* %12, align 4
  br label %242

205:                                              ; preds = %199
  %206 = load i8*, i8** %6, align 8
  %207 = call i64 @looks_like_command_line_option(i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i8*, i8** %5, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = call i32 @warn_command_line_option(i8* %210, i8* %211)
  br label %241

213:                                              ; preds = %205
  %214 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %215 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %231, label %218

218:                                              ; preds = %213
  %219 = load %struct.submodule*, %struct.submodule** %9, align 8
  %220 = getelementptr inbounds %struct.submodule, %struct.submodule* %219, i32 0, i32 4
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %225 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.submodule*, %struct.submodule** %9, align 8
  %228 = getelementptr inbounds %struct.submodule, %struct.submodule* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @warn_multiple_config(i32 %226, i32 %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %240

231:                                              ; preds = %218, %213
  %232 = load %struct.submodule*, %struct.submodule** %9, align 8
  %233 = getelementptr inbounds %struct.submodule, %struct.submodule* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @free(i8* %234)
  %236 = load i8*, i8** %6, align 8
  %237 = call i8* @xstrdup(i8* %236)
  %238 = load %struct.submodule*, %struct.submodule** %9, align 8
  %239 = getelementptr inbounds %struct.submodule, %struct.submodule* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %231, %223
  br label %241

241:                                              ; preds = %240, %209
  br label %242

242:                                              ; preds = %241, %202
  br label %353

243:                                              ; preds = %194
  %244 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %287, label %248

248:                                              ; preds = %243
  %249 = load i8*, i8** %6, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %5, align 8
  %253 = call i32 @config_error_nonbool(i8* %252)
  store i32 %253, i32* %12, align 4
  br label %286

254:                                              ; preds = %248
  %255 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %256 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %274, label %259

259:                                              ; preds = %254
  %260 = load %struct.submodule*, %struct.submodule** %9, align 8
  %261 = getelementptr inbounds %struct.submodule, %struct.submodule* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SM_UPDATE_UNSPECIFIED, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %259
  %267 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %268 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.submodule*, %struct.submodule** %9, align 8
  %271 = getelementptr inbounds %struct.submodule, %struct.submodule* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @warn_multiple_config(i32 %269, i32 %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %285

274:                                              ; preds = %259, %254
  %275 = load i8*, i8** %6, align 8
  %276 = load %struct.submodule*, %struct.submodule** %9, align 8
  %277 = getelementptr inbounds %struct.submodule, %struct.submodule* %276, i32 0, i32 3
  %278 = call i64 @parse_submodule_update_strategy(i8* %275, %struct.TYPE_2__* %277)
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %282 = load i8*, i8** %5, align 8
  %283 = call i32 @die(i32 %281, i8* %282)
  br label %284

284:                                              ; preds = %280, %274
  br label %285

285:                                              ; preds = %284, %266
  br label %286

286:                                              ; preds = %285, %251
  br label %352

287:                                              ; preds = %243
  %288 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i64 @strcmp(i8* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %317, label %292

292:                                              ; preds = %287
  %293 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %294 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %310, label %297

297:                                              ; preds = %292
  %298 = load %struct.submodule*, %struct.submodule** %9, align 8
  %299 = getelementptr inbounds %struct.submodule, %struct.submodule* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, -1
  br i1 %301, label %302, label %310

302:                                              ; preds = %297
  %303 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %304 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.submodule*, %struct.submodule** %9, align 8
  %307 = getelementptr inbounds %struct.submodule, %struct.submodule* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @warn_multiple_config(i32 %305, i32 %308, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %316

310:                                              ; preds = %297, %292
  %311 = load i8*, i8** %5, align 8
  %312 = load i8*, i8** %6, align 8
  %313 = call i32 @git_config_bool(i8* %311, i8* %312)
  %314 = load %struct.submodule*, %struct.submodule** %9, align 8
  %315 = getelementptr inbounds %struct.submodule, %struct.submodule* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  br label %316

316:                                              ; preds = %310, %302
  br label %351

317:                                              ; preds = %287
  %318 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @strcmp(i8* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %350, label %322

322:                                              ; preds = %317
  %323 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %324 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %340, label %327

327:                                              ; preds = %322
  %328 = load %struct.submodule*, %struct.submodule** %9, align 8
  %329 = getelementptr inbounds %struct.submodule, %struct.submodule* %328, i32 0, i32 1
  %330 = load i8*, i8** %329, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = load %struct.parse_config_parameter*, %struct.parse_config_parameter** %8, align 8
  %334 = getelementptr inbounds %struct.parse_config_parameter, %struct.parse_config_parameter* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.submodule*, %struct.submodule** %9, align 8
  %337 = getelementptr inbounds %struct.submodule, %struct.submodule* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @warn_multiple_config(i32 %335, i32 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %349

340:                                              ; preds = %327, %322
  %341 = load %struct.submodule*, %struct.submodule** %9, align 8
  %342 = getelementptr inbounds %struct.submodule, %struct.submodule* %341, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @free(i8* %343)
  %345 = load i8*, i8** %6, align 8
  %346 = call i8* @xstrdup(i8* %345)
  %347 = load %struct.submodule*, %struct.submodule** %9, align 8
  %348 = getelementptr inbounds %struct.submodule, %struct.submodule* %347, i32 0, i32 1
  store i8* %346, i8** %348, align 8
  br label %349

349:                                              ; preds = %340, %332
  br label %350

350:                                              ; preds = %349, %317
  br label %351

351:                                              ; preds = %350, %316
  br label %352

352:                                              ; preds = %351, %286
  br label %353

353:                                              ; preds = %352, %242
  br label %354

354:                                              ; preds = %353, %193
  br label %355

355:                                              ; preds = %354, %131
  br label %356

356:                                              ; preds = %355, %95
  %357 = call i32 @strbuf_release(%struct.strbuf* %10)
  %358 = call i32 @strbuf_release(%struct.strbuf* %11)
  %359 = load i32, i32* %12, align 4
  store i32 %359, i32* %4, align 4
  br label %360

360:                                              ; preds = %356, %21
  %361 = load i32, i32* %4, align 4
  ret i32 %361
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @name_and_item_from_var(i8*, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local %struct.submodule* @lookup_or_create_by_name(i32, i32, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @config_error_nonbool(i8*) #2

declare dso_local i64 @looks_like_command_line_option(i8*) #2

declare dso_local i32 @warn_command_line_option(i8*, i8*) #2

declare dso_local i32 @warn_multiple_config(i32, i32, i8*) #2

declare dso_local i32 @cache_remove_path(i32, %struct.submodule*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @cache_put_path(i32, %struct.submodule*) #2

declare dso_local i32 @is_null_oid(i32) #2

declare dso_local i32 @parse_fetch_recurse(i8*, i8*, i32) #2

declare dso_local i32 @warning(i8*, i8*, i8*) #2

declare dso_local i64 @parse_submodule_update_strategy(i8*, %struct.TYPE_2__*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @git_config_bool(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
