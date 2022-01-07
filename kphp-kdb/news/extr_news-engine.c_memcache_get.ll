; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@UG_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"raw_updates\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%raw_updates\00", align 1
@COMM_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"raw_comm_updates\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%raw_comm_updates\00", align 1
@RECOMMEND_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"raw_recommend_updates\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%raw_recommend_updates\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"raw_user_comm_updates\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%raw_user_comm_updates\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"raw_user_comm_bookmarks\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%raw_user_comm_bookmarks\00", align 1
@NOTIFY_MODE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"raw_notification_updates\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"%raw_notification_updates\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"notification_updates\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"mask%d\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"get_privacy(%d) = %d\0A\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"add_bookmark\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"add_bookmark_%d_%d_%d:%d\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"del_bookmark\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"del_bookmark_%d_%d_%d:%d\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"recommend_rate\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%.10lf\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"stats\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_at_prefix_length(i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 11
  br i1 %35, label %36, label %56

36:                                               ; preds = %3
  %37 = load i64, i64* @UG_MODE, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strncmp(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.connection*, %struct.connection** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @exec_get_raw_updates(%struct.connection* %48, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.connection*, %struct.connection** %5, align 8
  %54 = call i32 @free_tmp_buffers(%struct.connection* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %358

56:                                               ; preds = %43, %36, %3
  %57 = load i32, i32* %7, align 4
  %58 = icmp sge i32 %57, 16
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i64, i64* @COMM_MODE, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 16)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 17)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.connection*, %struct.connection** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @exec_get_raw_comm_updates(%struct.connection* %71, i8* %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.connection*, %struct.connection** %5, align 8
  %77 = call i32 @free_tmp_buffers(%struct.connection* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %358

79:                                               ; preds = %66, %59, %56
  %80 = load i32, i32* %7, align 4
  %81 = icmp sge i32 %80, 21
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i64, i64* @RECOMMEND_MODE, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 21)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 22)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.connection*, %struct.connection** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @exec_get_raw_recommend_updates(%struct.connection* %94, i8* %95, i32 %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = call i32 @free_tmp_buffers(%struct.connection* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %358

102:                                              ; preds = %89, %82, %79
  %103 = load %struct.connection*, %struct.connection** %5, align 8
  %104 = call i32 @free_tmp_buffers(%struct.connection* %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 21
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load i64, i64* @COMM_MODE, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %107
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 21)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 22)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %114, %110
  %119 = load %struct.connection*, %struct.connection** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @exec_get_raw_user_comm_updates(%struct.connection* %119, i8* %120, i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.connection*, %struct.connection** %5, align 8
  %128 = call i32 @news_wait(%struct.connection* %127)
  store i32 %128, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %358

129:                                              ; preds = %118
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %358

131:                                              ; preds = %114, %107, %102
  %132 = load i32, i32* %7, align 4
  %133 = icmp sge i32 %132, 23
  br i1 %133, label %134, label %158

134:                                              ; preds = %131
  %135 = load i64, i64* @COMM_MODE, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @strncmp(i8* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 23)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strncmp(i8* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 24)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %141, %137
  %146 = load %struct.connection*, %struct.connection** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @exec_get_raw_user_comm_bookmarks(%struct.connection* %146, i8* %147, i32 %148, i32 %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load %struct.connection*, %struct.connection** %5, align 8
  %155 = call i32 @news_wait(%struct.connection* %154)
  store i32 %155, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %358

156:                                              ; preds = %145
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %4, align 4
  br label %358

158:                                              ; preds = %141, %134, %131
  %159 = load i32, i32* %7, align 4
  %160 = icmp sge i32 %159, 25
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i64, i64* @NOTIFY_MODE, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %161
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 24)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 25)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168, %164
  %173 = load %struct.connection*, %struct.connection** %5, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @exec_get_raw_notification_updates(%struct.connection* %173, i8* %174, i32 %175, i32 %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %4, align 4
  br label %358

179:                                              ; preds = %168, %161, %158
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %180, 21
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load i64, i64* @NOTIFY_MODE, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %182
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @strncmp(i8* %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 20)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %185
  %190 = load %struct.connection*, %struct.connection** %5, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @exec_get_notification_updates(%struct.connection* %190, i8* %191, i32 %192, i32 %193)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %4, align 4
  br label %358

196:                                              ; preds = %185, %182, %179
  %197 = load i64, i64* @UG_MODE, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %196
  %200 = load i8*, i8** %6, align 8
  %201 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %9)
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %230

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @get_privacy_mask(i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* @verbosity, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i32, i32* @stderr, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @fprintf(i32 %209, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32, i32* %10, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %213
  %217 = load %struct.connection*, %struct.connection** %5, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 0, %220
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = load i8*, i8** @stats_buff, align 8
  %224 = load i8*, i8** @stats_buff, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sitofp i32 %225 to double
  %227 = call i32 @sprintf(i8* %224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), double %226)
  %228 = call i32 @return_one_key(%struct.connection* %217, i8* %222, i8* %223, i32 %227)
  store i32 %228, i32* %4, align 4
  br label %358

229:                                              ; preds = %213
  br label %230

230:                                              ; preds = %229, %199, %196
  %231 = load i64, i64* @COMM_MODE, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %268

233:                                              ; preds = %230
  %234 = load i8*, i8** %6, align 8
  %235 = call i32 @strncmp(i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 12)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %268, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %6, align 8
  %239 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %9)
  %240 = icmp eq i32 %239, 4
  br i1 %240, label %241, label %267

241:                                              ; preds = %237
  store i32 0, i32* %14, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i64 @check_split(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* %13, align 4
  %247 = call i64 @check_split(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %245, %241
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @do_add_del_bookmark(i32 %250, i32 %251, i32 %252, i32 %253, i32 1)
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %249, %245
  %256 = load %struct.connection*, %struct.connection** %5, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = sub i64 0, %259
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %266 = call i32 @return_one_key(%struct.connection* %256, i8* %261, i8* %265, i32 1)
  store i32 %266, i32* %4, align 4
  br label %358

267:                                              ; preds = %237
  br label %268

268:                                              ; preds = %267, %233, %230
  %269 = load i64, i64* @COMM_MODE, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %306

271:                                              ; preds = %268
  %272 = load i8*, i8** %6, align 8
  %273 = call i32 @strncmp(i8* %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 12)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %306, label %275

275:                                              ; preds = %271
  %276 = load i8*, i8** %6, align 8
  %277 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %276, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32* %15, i32* %16, i32* %17, i32* %9)
  %278 = icmp eq i32 %277, 4
  br i1 %278, label %279, label %305

279:                                              ; preds = %275
  store i32 0, i32* %18, align 4
  %280 = load i32, i32* %16, align 4
  %281 = call i64 @check_split(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %17, align 4
  %285 = call i64 @check_split(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %283, %279
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* %17, align 4
  %292 = call i32 @do_add_del_bookmark(i32 %288, i32 %289, i32 %290, i32 %291, i32 0)
  store i32 %292, i32* %18, align 4
  br label %293

293:                                              ; preds = %287, %283
  %294 = load %struct.connection*, %struct.connection** %5, align 8
  %295 = load i8*, i8** %6, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = sub i64 0, %297
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  %300 = load i32, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %304 = call i32 @return_one_key(%struct.connection* %294, i8* %299, i8* %303, i32 1)
  store i32 %304, i32* %4, align 4
  br label %358

305:                                              ; preds = %275
  br label %306

306:                                              ; preds = %305, %271, %268
  %307 = load i64, i64* @RECOMMEND_MODE, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %338

309:                                              ; preds = %306
  %310 = load i8*, i8** %6, align 8
  %311 = call i32 @strncmp(i8* %310, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 14)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %338, label %313

313:                                              ; preds = %309
  %314 = load i8*, i8** %6, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 14
  %316 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32* %19, i32* %20)
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %337

318:                                              ; preds = %313
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %20, align 4
  %321 = call i32 @get_recommend_rate(i32 %319, i32 %320, double* %21)
  store i32 %321, i32* %22, align 4
  %322 = load i32, i32* %22, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %336, label %324

324:                                              ; preds = %318
  %325 = load %struct.connection*, %struct.connection** %5, align 8
  %326 = load i8*, i8** %6, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = sub i64 0, %328
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  %331 = load i8*, i8** @stats_buff, align 8
  %332 = load i8*, i8** @stats_buff, align 8
  %333 = load double, double* %21, align 8
  %334 = call i32 @sprintf(i8* %332, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), double %333)
  %335 = call i32 @return_one_key(%struct.connection* %325, i8* %330, i8* %331, i32 %334)
  store i32 %335, i32* %4, align 4
  br label %358

336:                                              ; preds = %318
  br label %337

337:                                              ; preds = %336, %313
  br label %338

338:                                              ; preds = %337, %309, %306
  %339 = load i32, i32* %7, align 4
  %340 = icmp sge i32 %339, 5
  br i1 %340, label %341, label %357

341:                                              ; preds = %338
  %342 = load i8*, i8** %6, align 8
  %343 = call i32 @strncmp(i8* %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 5)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %357, label %345

345:                                              ; preds = %341
  %346 = load %struct.connection*, %struct.connection** %5, align 8
  %347 = call i32 @news_prepare_stats(%struct.connection* %346)
  store i32 %347, i32* %23, align 4
  %348 = load %struct.connection*, %struct.connection** %5, align 8
  %349 = load i8*, i8** %6, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = sub i64 0, %351
  %353 = getelementptr inbounds i8, i8* %349, i64 %352
  %354 = load i8*, i8** @stats_buff, align 8
  %355 = load i32, i32* %23, align 4
  %356 = call i32 @return_one_key(%struct.connection* %348, i8* %353, i8* %354, i32 %355)
  store i32 %356, i32* %4, align 4
  br label %358

357:                                              ; preds = %341, %338
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %357, %345, %324, %293, %255, %216, %189, %172, %156, %153, %129, %126, %93, %70, %47
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @exec_get_raw_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @exec_get_raw_comm_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @exec_get_raw_recommend_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @exec_get_raw_user_comm_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @news_wait(%struct.connection*) #1

declare dso_local i32 @exec_get_raw_user_comm_bookmarks(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @exec_get_raw_notification_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @exec_get_notification_updates(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @get_privacy_mask(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, double) #1

declare dso_local i64 @check_split(i32) #1

declare dso_local i32 @do_add_del_bookmark(i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_recommend_rate(i32, i32, double*) #1

declare dso_local i32 @news_prepare_stats(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
