; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_handle_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_handle_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote = type { i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.branch = type { i8*, i8* }
%struct.rewrite = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pushremote\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"insteadof\00", align 1
@rewrites = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"pushinsteadof\00", align 1
@rewrites_push = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"pushdefault\00", align 1
@pushremote_name = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"config remote shorthand cannot begin with '/': %s\00", align 1
@REMOTE_CONFIG = common dso_local global i32 0, align 4
@CONFIG_SCOPE_REPO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"skipdefaultupdate\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"skipfetchall\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"prunetags\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pushurl\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"receivepack\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"more than one receivepack given, using the first\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"uploadpack\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"more than one uploadpack given, using the first\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"tagopt\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"--no-tags\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"proxyauthmethod\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"vcs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @handle_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.remote*, align 8
  %12 = alloca %struct.branch*, align 8
  %13 = alloca %struct.rewrite*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @parse_config_key(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, i32* %9, i8** %10)
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %381

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.branch* @make_branch(i8* %28, i32 %29)
  store %struct.branch* %30, %struct.branch** %12, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.branch*, %struct.branch** %12, align 8
  %36 = getelementptr inbounds %struct.branch, %struct.branch* %35, i32 0, i32 0
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @git_config_string(i8** %36, i8* %37, i8* %38)
  store i32 %39, i32* %4, align 4
  br label %381

40:                                               ; preds = %27
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.branch*, %struct.branch** %12, align 8
  %46 = getelementptr inbounds %struct.branch, %struct.branch* %45, i32 0, i32 1
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @git_config_string(i8** %46, i8* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %381

50:                                               ; preds = %40
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @config_error_nonbool(i8* %58)
  store i32 %59, i32* %4, align 4
  br label %381

60:                                               ; preds = %54
  %61 = load %struct.branch*, %struct.branch** %12, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @xstrdup(i8* %62)
  %64 = call i32 @add_merge(%struct.branch* %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %50
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %381

68:                                               ; preds = %3
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @parse_config_key(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %8, i32* %9, i8** %10)
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %381

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @config_error_nonbool(i8* %84)
  store i32 %85, i32* %4, align 4
  br label %381

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.rewrite* @make_rewrite(i32* @rewrites, i8* %87, i32 %88)
  store %struct.rewrite* %89, %struct.rewrite** %13, align 8
  %90 = load %struct.rewrite*, %struct.rewrite** %13, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @xstrdup(i8* %91)
  %93 = call i32 @add_instead_of(%struct.rewrite* %90, i32 %92)
  br label %113

94:                                               ; preds = %76
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @config_error_nonbool(i8* %102)
  store i32 %103, i32* %4, align 4
  br label %381

104:                                              ; preds = %98
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call %struct.rewrite* @make_rewrite(i32* @rewrites_push, i8* %105, i32 %106)
  store %struct.rewrite* %107, %struct.rewrite** %13, align 8
  %108 = load %struct.rewrite*, %struct.rewrite** %13, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @xstrdup(i8* %109)
  %111 = call i32 @add_instead_of(%struct.rewrite* %108, i32 %110)
  br label %112

112:                                              ; preds = %104, %94
  br label %113

113:                                              ; preds = %112, %86
  br label %114

114:                                              ; preds = %113, %68
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @parse_config_key(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, i32* %9, i8** %10)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %381

119:                                              ; preds = %114
  %120 = load i8*, i8** %8, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @git_config_string(i8** @pushremote_name, i8* %127, i8* %128)
  store i32 %129, i32* %4, align 4
  br label %381

130:                                              ; preds = %122, %119
  %131 = load i8*, i8** %8, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %381

134:                                              ; preds = %130
  %135 = load i8*, i8** %8, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 47
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @warning(i32 %140, i8* %141)
  store i32 0, i32* %4, align 4
  br label %381

143:                                              ; preds = %134
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call %struct.remote* @make_remote(i8* %144, i32 %145)
  store %struct.remote* %146, %struct.remote** %11, align 8
  %147 = load i32, i32* @REMOTE_CONFIG, align 4
  %148 = load %struct.remote*, %struct.remote** %11, align 8
  %149 = getelementptr inbounds %struct.remote, %struct.remote* %148, i32 0, i32 13
  store i32 %147, i32* %149, align 8
  %150 = call i64 (...) @current_config_scope()
  %151 = load i64, i64* @CONFIG_SCOPE_REPO, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load %struct.remote*, %struct.remote** %11, align 8
  %155 = getelementptr inbounds %struct.remote, %struct.remote* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %143
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = load i8*, i8** %5, align 8
  %162 = load i8*, i8** %6, align 8
  %163 = call i8* @git_config_bool(i8* %161, i8* %162)
  %164 = load %struct.remote*, %struct.remote** %11, align 8
  %165 = getelementptr inbounds %struct.remote, %struct.remote* %164, i32 0, i32 12
  store i8* %163, i8** %165, align 8
  br label %380

166:                                              ; preds = %156
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %5, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = call i8* @git_config_bool(i8* %171, i8* %172)
  %174 = load %struct.remote*, %struct.remote** %11, align 8
  %175 = getelementptr inbounds %struct.remote, %struct.remote* %174, i32 0, i32 11
  store i8* %173, i8** %175, align 8
  br label %379

176:                                              ; preds = %166
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %5, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i8* @git_config_bool(i8* %181, i8* %182)
  %184 = load %struct.remote*, %struct.remote** %11, align 8
  %185 = getelementptr inbounds %struct.remote, %struct.remote* %184, i32 0, i32 11
  store i8* %183, i8** %185, align 8
  br label %378

186:                                              ; preds = %176
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = load i8*, i8** %5, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = call i8* @git_config_bool(i8* %191, i8* %192)
  %194 = load %struct.remote*, %struct.remote** %11, align 8
  %195 = getelementptr inbounds %struct.remote, %struct.remote* %194, i32 0, i32 10
  store i8* %193, i8** %195, align 8
  br label %377

196:                                              ; preds = %186
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %5, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = call i8* @git_config_bool(i8* %201, i8* %202)
  %204 = load %struct.remote*, %struct.remote** %11, align 8
  %205 = getelementptr inbounds %struct.remote, %struct.remote* %204, i32 0, i32 9
  store i8* %203, i8** %205, align 8
  br label %376

206:                                              ; preds = %196
  %207 = load i8*, i8** %10, align 8
  %208 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %220, label %210

210:                                              ; preds = %206
  %211 = load i8*, i8** %5, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @git_config_string(i8** %14, i8* %211, i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 -1, i32* %4, align 4
  br label %381

216:                                              ; preds = %210
  %217 = load %struct.remote*, %struct.remote** %11, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = call i32 @add_url(%struct.remote* %217, i8* %218)
  br label %375

220:                                              ; preds = %206
  %221 = load i8*, i8** %10, align 8
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = load i8*, i8** %5, align 8
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 @git_config_string(i8** %15, i8* %225, i8* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 -1, i32* %4, align 4
  br label %381

230:                                              ; preds = %224
  %231 = load %struct.remote*, %struct.remote** %11, align 8
  %232 = load i8*, i8** %15, align 8
  %233 = call i32 @add_pushurl(%struct.remote* %231, i8* %232)
  br label %374

234:                                              ; preds = %220
  %235 = load i8*, i8** %10, align 8
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %234
  %239 = load i8*, i8** %5, align 8
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @git_config_string(i8** %16, i8* %239, i8* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 -1, i32* %4, align 4
  br label %381

244:                                              ; preds = %238
  %245 = load %struct.remote*, %struct.remote** %11, align 8
  %246 = getelementptr inbounds %struct.remote, %struct.remote* %245, i32 0, i32 8
  %247 = load i8*, i8** %16, align 8
  %248 = call i32 @refspec_append(i32* %246, i8* %247)
  %249 = load i8*, i8** %16, align 8
  %250 = call i32 @free(i8* %249)
  br label %373

251:                                              ; preds = %234
  %252 = load i8*, i8** %10, align 8
  %253 = call i32 @strcmp(i8* %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %251
  %256 = load i8*, i8** %5, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = call i32 @git_config_string(i8** %17, i8* %256, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 -1, i32* %4, align 4
  br label %381

261:                                              ; preds = %255
  %262 = load %struct.remote*, %struct.remote** %11, align 8
  %263 = getelementptr inbounds %struct.remote, %struct.remote* %262, i32 0, i32 7
  %264 = load i8*, i8** %17, align 8
  %265 = call i32 @refspec_append(i32* %263, i8* %264)
  %266 = load i8*, i8** %17, align 8
  %267 = call i32 @free(i8* %266)
  br label %372

268:                                              ; preds = %251
  %269 = load i8*, i8** %10, align 8
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %291, label %272

272:                                              ; preds = %268
  %273 = load i8*, i8** %5, align 8
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 @git_config_string(i8** %18, i8* %273, i8* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 -1, i32* %4, align 4
  br label %381

278:                                              ; preds = %272
  %279 = load %struct.remote*, %struct.remote** %11, align 8
  %280 = getelementptr inbounds %struct.remote, %struct.remote* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %278
  %284 = load i8*, i8** %18, align 8
  %285 = load %struct.remote*, %struct.remote** %11, align 8
  %286 = getelementptr inbounds %struct.remote, %struct.remote* %285, i32 0, i32 1
  store i8* %284, i8** %286, align 8
  br label %290

287:                                              ; preds = %278
  %288 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  %289 = call i32 @error(i32 %288)
  br label %290

290:                                              ; preds = %287, %283
  br label %371

291:                                              ; preds = %268
  %292 = load i8*, i8** %10, align 8
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %314, label %295

295:                                              ; preds = %291
  %296 = load i8*, i8** %5, align 8
  %297 = load i8*, i8** %6, align 8
  %298 = call i32 @git_config_string(i8** %19, i8* %296, i8* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 -1, i32* %4, align 4
  br label %381

301:                                              ; preds = %295
  %302 = load %struct.remote*, %struct.remote** %11, align 8
  %303 = getelementptr inbounds %struct.remote, %struct.remote* %302, i32 0, i32 2
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %310, label %306

306:                                              ; preds = %301
  %307 = load i8*, i8** %19, align 8
  %308 = load %struct.remote*, %struct.remote** %11, align 8
  %309 = getelementptr inbounds %struct.remote, %struct.remote* %308, i32 0, i32 2
  store i8* %307, i8** %309, align 8
  br label %313

310:                                              ; preds = %301
  %311 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %312 = call i32 @error(i32 %311)
  br label %313

313:                                              ; preds = %310, %306
  br label %370

314:                                              ; preds = %291
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 @strcmp(i8* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %334, label %318

318:                                              ; preds = %314
  %319 = load i8*, i8** %6, align 8
  %320 = call i32 @strcmp(i8* %319, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %318
  %323 = load %struct.remote*, %struct.remote** %11, align 8
  %324 = getelementptr inbounds %struct.remote, %struct.remote* %323, i32 0, i32 3
  store i32 -1, i32* %324, align 8
  br label %333

325:                                              ; preds = %318
  %326 = load i8*, i8** %6, align 8
  %327 = call i32 @strcmp(i8* %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %325
  %330 = load %struct.remote*, %struct.remote** %11, align 8
  %331 = getelementptr inbounds %struct.remote, %struct.remote* %330, i32 0, i32 3
  store i32 2, i32* %331, align 8
  br label %332

332:                                              ; preds = %329, %325
  br label %333

333:                                              ; preds = %332, %322
  br label %369

334:                                              ; preds = %314
  %335 = load i8*, i8** %10, align 8
  %336 = call i32 @strcmp(i8* %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0))
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %334
  %339 = load %struct.remote*, %struct.remote** %11, align 8
  %340 = getelementptr inbounds %struct.remote, %struct.remote* %339, i32 0, i32 6
  %341 = bitcast i32* %340 to i8**
  %342 = load i8*, i8** %5, align 8
  %343 = load i8*, i8** %6, align 8
  %344 = call i32 @git_config_string(i8** %341, i8* %342, i8* %343)
  store i32 %344, i32* %4, align 4
  br label %381

345:                                              ; preds = %334
  %346 = load i8*, i8** %10, align 8
  %347 = call i32 @strcmp(i8* %346, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %345
  %350 = load %struct.remote*, %struct.remote** %11, align 8
  %351 = getelementptr inbounds %struct.remote, %struct.remote* %350, i32 0, i32 5
  %352 = bitcast i32* %351 to i8**
  %353 = load i8*, i8** %5, align 8
  %354 = load i8*, i8** %6, align 8
  %355 = call i32 @git_config_string(i8** %352, i8* %353, i8* %354)
  store i32 %355, i32* %4, align 4
  br label %381

356:                                              ; preds = %345
  %357 = load i8*, i8** %10, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %366, label %360

360:                                              ; preds = %356
  %361 = load %struct.remote*, %struct.remote** %11, align 8
  %362 = getelementptr inbounds %struct.remote, %struct.remote* %361, i32 0, i32 4
  %363 = load i8*, i8** %5, align 8
  %364 = load i8*, i8** %6, align 8
  %365 = call i32 @git_config_string(i8** %362, i8* %363, i8* %364)
  store i32 %365, i32* %4, align 4
  br label %381

366:                                              ; preds = %356
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368, %333
  br label %370

370:                                              ; preds = %369, %313
  br label %371

371:                                              ; preds = %370, %290
  br label %372

372:                                              ; preds = %371, %261
  br label %373

373:                                              ; preds = %372, %244
  br label %374

374:                                              ; preds = %373, %230
  br label %375

375:                                              ; preds = %374, %216
  br label %376

376:                                              ; preds = %375, %200
  br label %377

377:                                              ; preds = %376, %190
  br label %378

378:                                              ; preds = %377, %180
  br label %379

379:                                              ; preds = %378, %170
  br label %380

380:                                              ; preds = %379, %160
  store i32 0, i32* %4, align 4
  br label %381

381:                                              ; preds = %380, %360, %349, %338, %300, %277, %260, %243, %229, %215, %139, %133, %126, %118, %101, %83, %75, %67, %57, %44, %34, %26
  %382 = load i32, i32* %4, align 4
  ret i32 %382
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local %struct.branch* @make_branch(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i8**, i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @add_merge(%struct.branch*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local %struct.rewrite* @make_rewrite(i32*, i8*, i32) #1

declare dso_local i32 @add_instead_of(%struct.rewrite*, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.remote* @make_remote(i8*, i32) #1

declare dso_local i64 @current_config_scope(...) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @add_url(%struct.remote*, i8*) #1

declare dso_local i32 @add_pushurl(%struct.remote*, i8*) #1

declare dso_local i32 @refspec_append(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
