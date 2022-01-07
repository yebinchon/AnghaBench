; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"start_write_binlog\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"stop_write_binlog\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"binlog_disabled\00", align 1
@binlog_disabled = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"free_block_stats\00", align 1
@MAX_RECORD_WORDS = common dso_local global i32 0, align 4
@FreeCnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"used_block_stats\00", align 1
@UsedCnt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"allocation_stats\00", align 1
@NewAllocations = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"split_block_stats\00", align 1
@SplitBlocks = common dso_local global i32 0, align 4
@reverse_friends_mode = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"common_friends_num\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%common_friends_num\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"common_friends\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%common_friends\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"friends\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"friendcnt\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"friendreq\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"recent_friends\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"privacy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 5
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @stats_buff, align 4
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = call i32 @friend_prepare_stats(%struct.connection* %25)
  %27 = call i32 @return_one_key(%struct.connection* %22, i8* %23, i32 %24, i32 %26)
  store i32 0, i32* %4, align 4
  br label %279

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 18
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 18)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load %struct.connection*, %struct.connection** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @stats_buff, align 4
  %39 = load i32, i32* @stats_buff, align 4
  %40 = call i32 (...) @start_write_binlog()
  %41 = call i32 @sprintf(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 @return_one_key(%struct.connection* %36, i8* %37, i32 %38, i32 %41)
  store i32 0, i32* %4, align 4
  br label %279

43:                                               ; preds = %31, %28
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 17
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 17)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* @stats_buff, align 4
  %54 = load i32, i32* @stats_buff, align 4
  %55 = call i32 (...) @stop_write_binlog()
  %56 = call i32 @sprintf(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = call i32 @return_one_key(%struct.connection* %51, i8* %52, i32 %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %279

58:                                               ; preds = %46, %43
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 15
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load %struct.connection*, %struct.connection** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* @stats_buff, align 4
  %69 = load i32, i32* @stats_buff, align 4
  %70 = load i32, i32* @binlog_disabled, align 4
  %71 = call i32 @sprintf(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = call i32 @return_one_key(%struct.connection* %66, i8* %67, i32 %68, i32 %71)
  store i32 0, i32* %4, align 4
  br label %279

73:                                               ; preds = %61, %58
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %74, 16
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %85 = load i32, i32* @FreeCnt, align 4
  %86 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %87 = call i32 @return_one_key_list(%struct.connection* %81, i8* %82, i32 %83, i32 %84, i32 0, i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %279

88:                                               ; preds = %76, %73
  %89 = load i32, i32* %7, align 4
  %90 = icmp sge i32 %89, 16
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 16)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load %struct.connection*, %struct.connection** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %100 = load i32, i32* @UsedCnt, align 4
  %101 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %102 = call i32 @return_one_key_list(%struct.connection* %96, i8* %97, i32 %98, i32 %99, i32 0, i32 %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %279

103:                                              ; preds = %91, %88
  %104 = load i32, i32* %7, align 4
  %105 = icmp sge i32 %104, 16
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @strncmp(i8* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 16)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = load %struct.connection*, %struct.connection** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %115 = load i32*, i32** @NewAllocations, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %119 = mul nsw i32 %118, 4
  %120 = call i32 @return_one_key_list(%struct.connection* %111, i8* %112, i32 %113, i32 %114, i32 0, i32 %117, i32 %119)
  store i32 0, i32* %4, align 4
  br label %279

121:                                              ; preds = %106, %103
  %122 = load i32, i32* %7, align 4
  %123 = icmp sge i32 %122, 17
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 17)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load %struct.connection*, %struct.connection** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %133 = load i32, i32* @SplitBlocks, align 4
  %134 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %135 = call i32 @return_one_key_list(%struct.connection* %129, i8* %130, i32 %131, i32 %132, i32 0, i32 %133, i32 %134)
  store i32 0, i32* %4, align 4
  br label %279

136:                                              ; preds = %124, %121
  %137 = load i64, i64* @reverse_friends_mode, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %176

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp sge i32 %140, 19
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @strncmp(i8* %143, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 18)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 19)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.connection*, %struct.connection** %5, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @exec_get_common_friends_num(%struct.connection* %151, i8* %152, i32 %153)
  %155 = load %struct.connection*, %struct.connection** %5, align 8
  %156 = call i32 @free_tmp_buffers(%struct.connection* %155)
  store i32 0, i32* %4, align 4
  br label %279

157:                                              ; preds = %146, %139
  %158 = load i32, i32* %7, align 4
  %159 = icmp sge i32 %158, 15
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 14)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 15)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164, %160
  %169 = load %struct.connection*, %struct.connection** %5, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @exec_get_common_friends(%struct.connection* %169, i8* %170, i32 %171)
  %173 = load %struct.connection*, %struct.connection** %5, align 8
  %174 = call i32 @free_tmp_buffers(%struct.connection* %173)
  store i32 0, i32* %4, align 4
  br label %279

175:                                              ; preds = %164, %157
  store i32 0, i32* %4, align 4
  br label %279

176:                                              ; preds = %136
  %177 = load i32, i32* %7, align 4
  %178 = icmp sge i32 %177, 7
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 @strncmp(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 7)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = load %struct.connection*, %struct.connection** %5, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @exec_get_friends(%struct.connection* %184, i8* %185, i32 %186, i32 7)
  store i32 0, i32* %4, align 4
  br label %279

188:                                              ; preds = %179, %176
  %189 = load i32, i32* %7, align 4
  %190 = icmp sge i32 %189, 9
  br i1 %190, label %191, label %200

191:                                              ; preds = %188
  %192 = load i8*, i8** %6, align 8
  %193 = call i32 @strncmp(i8* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 9)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load %struct.connection*, %struct.connection** %5, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @exec_get_friends(%struct.connection* %196, i8* %197, i32 %198, i32 9)
  store i32 0, i32* %4, align 4
  br label %279

200:                                              ; preds = %191, %188
  %201 = load i32, i32* %7, align 4
  %202 = icmp sge i32 %201, 9
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = load i8*, i8** %6, align 8
  %205 = call i32 @strncmp(i8* %204, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 9)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  %208 = load %struct.connection*, %struct.connection** %5, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @exec_get_one_request(%struct.connection* %208, i8* %209, i32 %210)
  store i32 0, i32* %4, align 4
  br label %279

212:                                              ; preds = %203, %200
  %213 = load i32, i32* %7, align 4
  %214 = icmp sge i32 %213, 9
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @strncmp(i8* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 8)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = load %struct.connection*, %struct.connection** %5, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @exec_get_requests(%struct.connection* %220, i8* %221, i32 %222)
  store i32 0, i32* %4, align 4
  br label %279

224:                                              ; preds = %215, %212
  %225 = load i32, i32* %7, align 4
  %226 = icmp sge i32 %225, 7
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @strncmp(i8* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 6)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %227
  %232 = load %struct.connection*, %struct.connection** %5, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @exec_get_one_friend(%struct.connection* %232, i8* %233, i32 %234)
  store i32 0, i32* %4, align 4
  br label %279

236:                                              ; preds = %227, %224
  %237 = load i32, i32* %7, align 4
  %238 = icmp sge i32 %237, 14
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i8*, i8** %6, align 8
  %241 = call i32 @strncmp(i8* %240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 14)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = load %struct.connection*, %struct.connection** %5, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @exec_get_recent_friends(%struct.connection* %244, i8* %245, i32 %246)
  store i32 0, i32* %4, align 4
  br label %279

248:                                              ; preds = %239, %236
  %249 = load i32, i32* %7, align 4
  %250 = icmp sge i32 %249, 1
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i8*, i8** %6, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sge i32 %254, 49
  br i1 %255, label %256, label %266

256:                                              ; preds = %251
  %257 = load i8*, i8** %6, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp sle i32 %259, 57
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.connection*, %struct.connection** %5, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @exec_get_check_privacy(%struct.connection* %262, i8* %263, i32 %264)
  store i32 0, i32* %4, align 4
  br label %279

266:                                              ; preds = %256, %251, %248
  %267 = load i32, i32* %7, align 4
  %268 = icmp sge i32 %267, 7
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load i8*, i8** %6, align 8
  %271 = call i32 @strncmp(i8* %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 7)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %269
  %274 = load %struct.connection*, %struct.connection** %5, align 8
  %275 = load i8*, i8** %6, align 8
  %276 = load i32, i32* %7, align 4
  %277 = call i32 @exec_get_privacy(%struct.connection* %274, i8* %275, i32 %276)
  store i32 0, i32* %4, align 4
  br label %279

278:                                              ; preds = %269, %266
  store i32 0, i32* %4, align 4
  br label %279

279:                                              ; preds = %278, %273, %261, %243, %231, %219, %207, %195, %183, %175, %168, %150, %128, %110, %95, %80, %65, %50, %35, %21
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @friend_prepare_stats(%struct.connection*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @start_write_binlog(...) #1

declare dso_local i32 @stop_write_binlog(...) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @exec_get_common_friends_num(%struct.connection*, i8*, i32) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @exec_get_common_friends(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_friends(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @exec_get_one_request(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_requests(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_one_friend(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_recent_friends(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_check_privacy(%struct.connection*, i8*, i32) #1

declare dso_local i32 @exec_get_privacy(%struct.connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
