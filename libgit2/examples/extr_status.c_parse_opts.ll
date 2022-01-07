; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_status.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_status.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.opts = type { i64, i8**, i64, i32, i32, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8**, i64 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@MAX_PATHSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Example only supports a limited pathspec\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--short\00", align 1
@FORMAT_SHORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"--long\00", align 1
@FORMAT_LONG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"--porcelain\00", align 1
@FORMAT_PORCELAIN = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--branch\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@FORMAT_DEFAULT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"--ignored\00", align 1
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"-uno\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"--untracked-files=no\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"-unormal\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"--untracked-files=normal\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-uall\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"--untracked-files=all\00", align 1
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"--ignore-submodules=all\00", align 1
@GIT_STATUS_OPT_EXCLUDE_SUBMODULES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"--git-dir=\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--repeat\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"--list-submodules\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Unsupported option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.args_info, align 4
  %8 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = bitcast %struct.args_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %10 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %225, %3
  %12 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %229

16:                                               ; preds = %11
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %47

28:                                               ; preds = %16
  %29 = load %struct.opts*, %struct.opts** %4, align 8
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_PATHSPEC, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.opts*, %struct.opts** %4, align 8
  %37 = getelementptr inbounds %struct.opts, %struct.opts* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.opts*, %struct.opts** %4, align 8
  %40 = getelementptr inbounds %struct.opts, %struct.opts* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %35, i8** %43, align 8
  br label %46

44:                                               ; preds = %28
  %45 = call i32 @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %46

46:                                               ; preds = %44, %34
  br label %224

47:                                               ; preds = %16
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %47
  %56 = load i64, i64* @FORMAT_SHORT, align 8
  %57 = load %struct.opts*, %struct.opts** %4, align 8
  %58 = getelementptr inbounds %struct.opts, %struct.opts* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %223

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* @FORMAT_LONG, align 8
  %65 = load %struct.opts*, %struct.opts** %4, align 8
  %66 = getelementptr inbounds %struct.opts, %struct.opts* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %222

67:                                               ; preds = %59
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** @FORMAT_PORCELAIN, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load %struct.opts*, %struct.opts** %4, align 8
  %75 = getelementptr inbounds %struct.opts, %struct.opts* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %221

76:                                               ; preds = %67
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.opts*, %struct.opts** %4, align 8
  %86 = getelementptr inbounds %struct.opts, %struct.opts* %85, i32 0, i32 3
  store i32 1, i32* %86, align 8
  br label %220

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %87
  %92 = load %struct.opts*, %struct.opts** %4, align 8
  %93 = getelementptr inbounds %struct.opts, %struct.opts* %92, i32 0, i32 4
  store i32 1, i32* %93, align 4
  %94 = load %struct.opts*, %struct.opts** %4, align 8
  %95 = getelementptr inbounds %struct.opts, %struct.opts* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FORMAT_DEFAULT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i8*, i8** @FORMAT_PORCELAIN, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.opts*, %struct.opts** %4, align 8
  %103 = getelementptr inbounds %struct.opts, %struct.opts* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %91
  br label %219

105:                                              ; preds = %87
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %111 = load %struct.opts*, %struct.opts** %4, align 8
  %112 = getelementptr inbounds %struct.opts, %struct.opts* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 8
  br label %218

116:                                              ; preds = %105
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.opts*, %struct.opts** %4, align 8
  %128 = getelementptr inbounds %struct.opts, %struct.opts* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %126
  store i32 %131, i32* %129, align 8
  br label %217

132:                                              ; preds = %120
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %142 = load %struct.opts*, %struct.opts** %4, align 8
  %143 = getelementptr inbounds %struct.opts, %struct.opts* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 8
  br label %216

147:                                              ; preds = %136
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %157 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.opts*, %struct.opts** %4, align 8
  %160 = getelementptr inbounds %struct.opts, %struct.opts* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 8
  br label %215

164:                                              ; preds = %151
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @GIT_STATUS_OPT_EXCLUDE_SUBMODULES, align 4
  %170 = load %struct.opts*, %struct.opts** %4, align 8
  %171 = getelementptr inbounds %struct.opts, %struct.opts* %170, i32 0, i32 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 8
  br label %214

175:                                              ; preds = %164
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %178 = call i32 @strncmp(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load %struct.opts*, %struct.opts** %4, align 8
  %186 = getelementptr inbounds %struct.opts, %struct.opts* %185, i32 0, i32 5
  store i8* %184, i8** %186, align 8
  br label %213

187:                                              ; preds = %175
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load %struct.opts*, %struct.opts** %4, align 8
  %193 = getelementptr inbounds %struct.opts, %struct.opts* %192, i32 0, i32 6
  store i32 10, i32* %193, align 8
  br label %212

194:                                              ; preds = %187
  %195 = load %struct.opts*, %struct.opts** %4, align 8
  %196 = getelementptr inbounds %struct.opts, %struct.opts* %195, i32 0, i32 6
  %197 = call i64 @match_int_arg(i32* %196, %struct.args_info* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %211

200:                                              ; preds = %194
  %201 = load i8*, i8** %8, align 8
  %202 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load %struct.opts*, %struct.opts** %4, align 8
  %206 = getelementptr inbounds %struct.opts, %struct.opts* %205, i32 0, i32 7
  store i32 1, i32* %206, align 4
  br label %210

207:                                              ; preds = %200
  %208 = load i8*, i8** %8, align 8
  %209 = call i32 @check_lg2(i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %207, %204
  br label %211

211:                                              ; preds = %210, %199
  br label %212

212:                                              ; preds = %211, %191
  br label %213

213:                                              ; preds = %212, %180
  br label %214

214:                                              ; preds = %213, %168
  br label %215

215:                                              ; preds = %214, %155
  br label %216

216:                                              ; preds = %215, %140
  br label %217

217:                                              ; preds = %216, %124
  br label %218

218:                                              ; preds = %217, %109
  br label %219

219:                                              ; preds = %218, %104
  br label %220

220:                                              ; preds = %219, %84
  br label %221

221:                                              ; preds = %220, %71
  br label %222

222:                                              ; preds = %221, %63
  br label %223

223:                                              ; preds = %222, %55
  br label %224

224:                                              ; preds = %223, %46
  br label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %11

229:                                              ; preds = %11
  %230 = load %struct.opts*, %struct.opts** %4, align 8
  %231 = getelementptr inbounds %struct.opts, %struct.opts* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @FORMAT_DEFAULT, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %229
  %236 = load i64, i64* @FORMAT_LONG, align 8
  %237 = load %struct.opts*, %struct.opts** %4, align 8
  %238 = getelementptr inbounds %struct.opts, %struct.opts* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %229
  %240 = load %struct.opts*, %struct.opts** %4, align 8
  %241 = getelementptr inbounds %struct.opts, %struct.opts* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @FORMAT_LONG, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %239
  %246 = load %struct.opts*, %struct.opts** %4, align 8
  %247 = getelementptr inbounds %struct.opts, %struct.opts* %246, i32 0, i32 3
  store i32 1, i32* %247, align 8
  br label %248

248:                                              ; preds = %245, %239
  %249 = load %struct.opts*, %struct.opts** %4, align 8
  %250 = getelementptr inbounds %struct.opts, %struct.opts* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %248
  %254 = load %struct.opts*, %struct.opts** %4, align 8
  %255 = getelementptr inbounds %struct.opts, %struct.opts* %254, i32 0, i32 1
  %256 = load i8**, i8*** %255, align 8
  %257 = load %struct.opts*, %struct.opts** %4, align 8
  %258 = getelementptr inbounds %struct.opts, %struct.opts* %257, i32 0, i32 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i8** %256, i8*** %260, align 8
  %261 = load %struct.opts*, %struct.opts** %4, align 8
  %262 = getelementptr inbounds %struct.opts, %struct.opts* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.opts*, %struct.opts** %4, align 8
  %265 = getelementptr inbounds %struct.opts, %struct.opts* %264, i32 0, i32 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 1
  store i64 %263, i64* %267, align 8
  br label %268

268:                                              ; preds = %253, %248
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fatal(i8*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @match_int_arg(i32*, %struct.args_info*, i8*, i32) #2

declare dso_local i32 @check_lg2(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
