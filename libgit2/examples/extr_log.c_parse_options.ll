; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_log.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_log.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.log_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.log_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@GIT_SORT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"--date-order\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"--topo-order\00", align 1
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"--reverse\00", align 1
@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"--author\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--committer\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"--grep\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--skip\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"--max-count\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"--merges\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"--no-merges\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"--no-min-parents\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"--no-max-parents\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"--max-parents=\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"--min-parents=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"--patch\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"--log-size\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Unsupported argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_state*, %struct.log_options*, i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(%struct.log_state* %0, %struct.log_options* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.log_state*, align 8
  %6 = alloca %struct.log_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.args_info, align 4
  %10 = alloca i8*, align 8
  store %struct.log_state* %0, %struct.log_state** %5, align 8
  store %struct.log_options* %1, %struct.log_options** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = bitcast %struct.args_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.log_state*, %struct.log_state** %5, align 8
  %13 = call i32 @memset(%struct.log_state* %12, i32 0, i32 48)
  %14 = load i32, i32* @GIT_SORT_TIME, align 4
  %15 = load %struct.log_state*, %struct.log_state** %5, align 8
  %16 = getelementptr inbounds %struct.log_state, %struct.log_state* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.log_options*, %struct.log_options** %6, align 8
  %18 = bitcast %struct.log_options* %17 to %struct.log_state*
  %19 = call i32 @memset(%struct.log_state* %18, i32 0, i32 48)
  %20 = load %struct.log_options*, %struct.log_options** %6, align 8
  %21 = getelementptr inbounds %struct.log_options, %struct.log_options* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = load %struct.log_options*, %struct.log_options** %6, align 8
  %23 = getelementptr inbounds %struct.log_options, %struct.log_options* %22, i32 0, i32 1
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %232, %4
  %26 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %236

30:                                               ; preds = %25
  %31 = load i8**, i8*** %8, align 8
  %32 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load %struct.log_state*, %struct.log_state** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @add_revision(%struct.log_state* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.log_state*, %struct.log_state** %5, align 8
  %49 = getelementptr inbounds %struct.log_state, %struct.log_state* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %53

52:                                               ; preds = %42
  br label %236

53:                                               ; preds = %47
  br label %231

54:                                               ; preds = %30
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %236

62:                                               ; preds = %54
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.log_state*, %struct.log_state** %5, align 8
  %68 = load i32, i32* @GIT_SORT_TIME, align 4
  %69 = call i32 @set_sorting(%struct.log_state* %67, i32 %68)
  br label %229

70:                                               ; preds = %62
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.log_state*, %struct.log_state** %5, align 8
  %76 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %77 = call i32 @set_sorting(%struct.log_state* %75, i32 %76)
  br label %228

78:                                               ; preds = %70
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load %struct.log_state*, %struct.log_state** %5, align 8
  %84 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %85 = call i32 @set_sorting(%struct.log_state* %83, i32 %84)
  br label %227

86:                                               ; preds = %78
  %87 = load %struct.log_options*, %struct.log_options** %6, align 8
  %88 = getelementptr inbounds %struct.log_options, %struct.log_options* %87, i32 0, i32 9
  %89 = call i64 @match_str_arg(i32* %88, %struct.args_info* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %226

92:                                               ; preds = %86
  %93 = load %struct.log_options*, %struct.log_options** %6, align 8
  %94 = getelementptr inbounds %struct.log_options, %struct.log_options* %93, i32 0, i32 8
  %95 = call i64 @match_str_arg(i32* %94, %struct.args_info* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %225

98:                                               ; preds = %92
  %99 = load %struct.log_options*, %struct.log_options** %6, align 8
  %100 = getelementptr inbounds %struct.log_options, %struct.log_options* %99, i32 0, i32 7
  %101 = call i64 @match_str_arg(i32* %100, %struct.args_info* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %224

104:                                              ; preds = %98
  %105 = load %struct.log_state*, %struct.log_state** %5, align 8
  %106 = getelementptr inbounds %struct.log_state, %struct.log_state* %105, i32 0, i32 6
  %107 = call i64 @match_str_arg(i32* %106, %struct.args_info* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %223

110:                                              ; preds = %104
  %111 = load %struct.log_options*, %struct.log_options** %6, align 8
  %112 = getelementptr inbounds %struct.log_options, %struct.log_options* %111, i32 0, i32 2
  %113 = call i64 @match_int_arg(i32* %112, %struct.args_info* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %222

116:                                              ; preds = %110
  %117 = load %struct.log_options*, %struct.log_options** %6, align 8
  %118 = getelementptr inbounds %struct.log_options, %struct.log_options* %117, i32 0, i32 1
  %119 = call i64 @match_int_arg(i32* %118, %struct.args_info* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %221

122:                                              ; preds = %116
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sge i32 %126, 48
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sle i32 %132, 57
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.log_options*, %struct.log_options** %6, align 8
  %136 = getelementptr inbounds %struct.log_options, %struct.log_options* %135, i32 0, i32 1
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 @is_integer(i32* %136, i8* %138, i32 0)
  br label %220

140:                                              ; preds = %128, %122
  %141 = load %struct.log_options*, %struct.log_options** %6, align 8
  %142 = getelementptr inbounds %struct.log_options, %struct.log_options* %141, i32 0, i32 1
  %143 = call i64 @match_int_arg(i32* %142, %struct.args_info* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %219

146:                                              ; preds = %140
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load %struct.log_options*, %struct.log_options** %6, align 8
  %152 = getelementptr inbounds %struct.log_options, %struct.log_options* %151, i32 0, i32 3
  store i32 2, i32* %152, align 4
  br label %218

153:                                              ; preds = %146
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load %struct.log_options*, %struct.log_options** %6, align 8
  %159 = getelementptr inbounds %struct.log_options, %struct.log_options* %158, i32 0, i32 0
  store i32 1, i32* %159, align 4
  br label %217

160:                                              ; preds = %153
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = load %struct.log_options*, %struct.log_options** %6, align 8
  %166 = getelementptr inbounds %struct.log_options, %struct.log_options* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  br label %216

167:                                              ; preds = %160
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load %struct.log_options*, %struct.log_options** %6, align 8
  %173 = getelementptr inbounds %struct.log_options, %struct.log_options* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 4
  br label %215

174:                                              ; preds = %167
  %175 = load %struct.log_options*, %struct.log_options** %6, align 8
  %176 = getelementptr inbounds %struct.log_options, %struct.log_options* %175, i32 0, i32 0
  %177 = call i64 @match_int_arg(i32* %176, %struct.args_info* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 1)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %214

180:                                              ; preds = %174
  %181 = load %struct.log_options*, %struct.log_options** %6, align 8
  %182 = getelementptr inbounds %struct.log_options, %struct.log_options* %181, i32 0, i32 3
  %183 = call i64 @match_int_arg(i32* %182, %struct.args_info* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %213

186:                                              ; preds = %180
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194, %190, %186
  %199 = load %struct.log_options*, %struct.log_options** %6, align 8
  %200 = getelementptr inbounds %struct.log_options, %struct.log_options* %199, i32 0, i32 4
  store i32 1, i32* %200, align 4
  br label %212

201:                                              ; preds = %194
  %202 = load i8*, i8** %10, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = load %struct.log_options*, %struct.log_options** %6, align 8
  %207 = getelementptr inbounds %struct.log_options, %struct.log_options* %206, i32 0, i32 5
  store i32 1, i32* %207, align 4
  br label %211

208:                                              ; preds = %201
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %209)
  br label %211

211:                                              ; preds = %208, %205
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212, %185
  br label %214

214:                                              ; preds = %213, %179
  br label %215

215:                                              ; preds = %214, %171
  br label %216

216:                                              ; preds = %215, %164
  br label %217

217:                                              ; preds = %216, %157
  br label %218

218:                                              ; preds = %217, %150
  br label %219

219:                                              ; preds = %218, %145
  br label %220

220:                                              ; preds = %219, %134
  br label %221

221:                                              ; preds = %220, %121
  br label %222

222:                                              ; preds = %221, %115
  br label %223

223:                                              ; preds = %222, %109
  br label %224

224:                                              ; preds = %223, %103
  br label %225

225:                                              ; preds = %224, %97
  br label %226

226:                                              ; preds = %225, %91
  br label %227

227:                                              ; preds = %226, %82
  br label %228

228:                                              ; preds = %227, %74
  br label %229

229:                                              ; preds = %228, %66
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230, %53
  br label %232

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %25

236:                                              ; preds = %58, %52, %25
  %237 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.log_state*, i32, i32) #2

declare dso_local i32 @add_revision(%struct.log_state*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @set_sorting(%struct.log_state*, i32) #2

declare dso_local i64 @match_str_arg(i32*, %struct.args_info*, i8*) #2

declare dso_local i64 @match_int_arg(i32*, %struct.args_info*, i8*, i32) #2

declare dso_local i32 @is_integer(i32*, i8*, i32) #2

declare dso_local i32 @usage(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
