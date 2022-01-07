; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_match_files.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_backup-engine.c_match_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i8*, i64, i32, %struct.file_info*, i32 }

@matches = common dso_local global i32 0, align 4
@src_files = common dso_local global %struct.file_info* null, align 8
@src_fnum = common dso_local global i32 0, align 4
@logs_reopen_cnt = common dso_local global i64 0, align 8
@sigusr1_cnt = common dso_local global i64 0, align 8
@FIF_ERROR = common dso_local global i32 0, align 4
@dst_files = common dso_local global %struct.file_info* null, align 8
@dst_fnum = common dso_local global i32 0, align 4
@FIF_ZIPPED = common dso_local global i32 0, align 4
@FIF_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"skip creating new uncompressed backup for file '%s', since there is zipped backup '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"warning: unable to create peer for %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"found peer %s %lld -> %s %lld\0A\00", align 1
@remove_useless_not_zipped_backups = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unlink useless backup '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unlink (\22%s\22) failed. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @match_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_files() #0 {
  %1 = alloca %struct.file_info*, align 8
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca %struct.file_info*, align 8
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* @matches, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.file_info*, %struct.file_info** @src_files, align 8
  store %struct.file_info* %12, %struct.file_info** %1, align 8
  store %struct.file_info* %12, %struct.file_info** %2, align 8
  br label %13

13:                                               ; preds = %167, %0
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @src_fnum, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %172

17:                                               ; preds = %13
  %18 = load i64, i64* @logs_reopen_cnt, align 8
  %19 = load i64, i64* @sigusr1_cnt, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @reopen_logs()
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.file_info*, %struct.file_info** %2, align 8
  %25 = getelementptr inbounds %struct.file_info, %struct.file_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FIF_ERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %167

31:                                               ; preds = %23
  store %struct.file_info* null, %struct.file_info** %5, align 8
  store %struct.file_info* null, %struct.file_info** %4, align 8
  store i32 0, i32* %7, align 4
  %32 = load %struct.file_info*, %struct.file_info** @dst_files, align 8
  store %struct.file_info* %32, %struct.file_info** %3, align 8
  br label %33

33:                                               ; preds = %94, %31
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @dst_fnum, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %33
  %38 = load %struct.file_info*, %struct.file_info** %3, align 8
  %39 = getelementptr inbounds %struct.file_info, %struct.file_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FIF_ERROR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %94

45:                                               ; preds = %37
  %46 = load %struct.file_info*, %struct.file_info** %4, align 8
  %47 = icmp eq %struct.file_info* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load %struct.file_info*, %struct.file_info** %5, align 8
  %50 = icmp eq %struct.file_info* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load %struct.file_info*, %struct.file_info** %3, align 8
  %53 = load i32, i32* @FIF_ZIPPED, align 4
  %54 = load i32, i32* @FIF_RDONLY, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @all_flags(%struct.file_info* %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.file_info*, %struct.file_info** %2, align 8
  %60 = getelementptr inbounds %struct.file_info, %struct.file_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FIF_ZIPPED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.file_info*, %struct.file_info** %2, align 8
  %67 = load %struct.file_info*, %struct.file_info** %3, align 8
  %68 = call i64 @original_matches_zipped_backup(%struct.file_info* %66, %struct.file_info* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.file_info*, %struct.file_info** %3, align 8
  store %struct.file_info* %71, %struct.file_info** %5, align 8
  br label %72

72:                                               ; preds = %70, %65, %58, %51, %48, %45
  %73 = load %struct.file_info*, %struct.file_info** %3, align 8
  %74 = getelementptr inbounds %struct.file_info, %struct.file_info* %73, i32 0, i32 4
  %75 = load %struct.file_info*, %struct.file_info** %74, align 8
  %76 = icmp ne %struct.file_info* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %94

78:                                               ; preds = %72
  %79 = load %struct.file_info*, %struct.file_info** %2, align 8
  %80 = load %struct.file_info*, %struct.file_info** %3, align 8
  %81 = call i64 @pair_matches(%struct.file_info* %79, %struct.file_info* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.file_info*, %struct.file_info** %4, align 8
  %85 = icmp ne %struct.file_info* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.file_info*, %struct.file_info** %3, align 8
  %88 = load %struct.file_info*, %struct.file_info** %4, align 8
  %89 = call i64 @better_match(%struct.file_info* %87, %struct.file_info* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %83
  %92 = load %struct.file_info*, %struct.file_info** %3, align 8
  store %struct.file_info* %92, %struct.file_info** %4, align 8
  br label %93

93:                                               ; preds = %91, %86, %78
  br label %94

94:                                               ; preds = %93, %77, %44
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = load %struct.file_info*, %struct.file_info** %3, align 8
  %98 = getelementptr inbounds %struct.file_info, %struct.file_info* %97, i32 1
  store %struct.file_info* %98, %struct.file_info** %3, align 8
  br label %33

99:                                               ; preds = %33
  %100 = load %struct.file_info*, %struct.file_info** %4, align 8
  %101 = icmp eq %struct.file_info* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load %struct.file_info*, %struct.file_info** %5, align 8
  %104 = icmp ne %struct.file_info* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.file_info*, %struct.file_info** %2, align 8
  %107 = getelementptr inbounds %struct.file_info, %struct.file_info* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.file_info*, %struct.file_info** %5, align 8
  %110 = getelementptr inbounds %struct.file_info, %struct.file_info* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8* %108, i8* %111)
  br label %167

113:                                              ; preds = %102
  %114 = load %struct.file_info*, %struct.file_info** %2, align 8
  %115 = call %struct.file_info* @create_peer(%struct.file_info* %114)
  store %struct.file_info* %115, %struct.file_info** %4, align 8
  %116 = load %struct.file_info*, %struct.file_info** %4, align 8
  %117 = icmp ne %struct.file_info* %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load %struct.file_info*, %struct.file_info** %2, align 8
  %120 = getelementptr inbounds %struct.file_info, %struct.file_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  br label %167

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %99
  %127 = load i32, i32* @matches, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @matches, align 4
  %129 = load %struct.file_info*, %struct.file_info** %4, align 8
  %130 = load %struct.file_info*, %struct.file_info** %2, align 8
  %131 = getelementptr inbounds %struct.file_info, %struct.file_info* %130, i32 0, i32 4
  store %struct.file_info* %129, %struct.file_info** %131, align 8
  %132 = load %struct.file_info*, %struct.file_info** %1, align 8
  %133 = load %struct.file_info*, %struct.file_info** %4, align 8
  %134 = getelementptr inbounds %struct.file_info, %struct.file_info* %133, i32 0, i32 4
  store %struct.file_info* %132, %struct.file_info** %134, align 8
  %135 = load %struct.file_info*, %struct.file_info** %2, align 8
  %136 = getelementptr inbounds %struct.file_info, %struct.file_info* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.file_info*, %struct.file_info** %4, align 8
  %139 = getelementptr inbounds %struct.file_info, %struct.file_info* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @SEEK_SET, align 4
  %142 = call i64 @lseek(i32 %137, i64 %140, i32 %141)
  %143 = load %struct.file_info*, %struct.file_info** %4, align 8
  %144 = getelementptr inbounds %struct.file_info, %struct.file_info* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.file_info*, %struct.file_info** %2, align 8
  %150 = getelementptr inbounds %struct.file_info, %struct.file_info* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.file_info*, %struct.file_info** %2, align 8
  %153 = getelementptr inbounds %struct.file_info, %struct.file_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.file_info*, %struct.file_info** %4, align 8
  %156 = getelementptr inbounds %struct.file_info, %struct.file_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.file_info*, %struct.file_info** %4, align 8
  %159 = getelementptr inbounds %struct.file_info, %struct.file_info* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %151, i64 %154, i32 %157, i64 %160)
  %162 = load %struct.file_info*, %struct.file_info** %1, align 8
  %163 = getelementptr inbounds %struct.file_info, %struct.file_info* %162, i32 1
  store %struct.file_info* %163, %struct.file_info** %1, align 8
  %164 = load %struct.file_info*, %struct.file_info** %2, align 8
  %165 = bitcast %struct.file_info* %162 to i8*
  %166 = bitcast %struct.file_info* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 48, i1 false)
  br label %167

167:                                              ; preds = %126, %118, %105, %30
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  %170 = load %struct.file_info*, %struct.file_info** %2, align 8
  %171 = getelementptr inbounds %struct.file_info, %struct.file_info* %170, i32 1
  store %struct.file_info* %171, %struct.file_info** %2, align 8
  br label %13

172:                                              ; preds = %13
  %173 = load i32, i32* @matches, align 4
  store i32 %173, i32* @src_fnum, align 4
  store i32 0, i32* %7, align 4
  %174 = load %struct.file_info*, %struct.file_info** @dst_files, align 8
  store %struct.file_info* %174, %struct.file_info** %3, align 8
  br label %175

175:                                              ; preds = %302, %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @dst_fnum, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %307

179:                                              ; preds = %175
  %180 = load %struct.file_info*, %struct.file_info** %3, align 8
  %181 = getelementptr inbounds %struct.file_info, %struct.file_info* %180, i32 0, i32 4
  %182 = load %struct.file_info*, %struct.file_info** %181, align 8
  %183 = icmp ne %struct.file_info* %182, null
  br i1 %183, label %298, label %184

184:                                              ; preds = %179
  %185 = load i64, i64* @remove_useless_not_zipped_backups, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %295

187:                                              ; preds = %184
  %188 = load %struct.file_info*, %struct.file_info** %3, align 8
  %189 = getelementptr inbounds %struct.file_info, %struct.file_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @FIF_ZIPPED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %295, label %194

194:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  %195 = load %struct.file_info*, %struct.file_info** @src_files, align 8
  store %struct.file_info* %195, %struct.file_info** %2, align 8
  br label %196

196:                                              ; preds = %265, %194
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @src_fnum, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %270

200:                                              ; preds = %196
  %201 = load %struct.file_info*, %struct.file_info** %2, align 8
  %202 = getelementptr inbounds %struct.file_info, %struct.file_info* %201, i32 0, i32 4
  %203 = load %struct.file_info*, %struct.file_info** %202, align 8
  %204 = icmp ne %struct.file_info* %203, null
  br i1 %204, label %205, label %264

205:                                              ; preds = %200
  %206 = load %struct.file_info*, %struct.file_info** %2, align 8
  %207 = load i32, i32* @FIF_ZIPPED, align 4
  %208 = load i32, i32* @FIF_RDONLY, align 4
  %209 = or i32 %207, %208
  %210 = call i64 @all_flags(%struct.file_info* %206, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %264

212:                                              ; preds = %205
  %213 = load %struct.file_info*, %struct.file_info** %2, align 8
  %214 = getelementptr inbounds %struct.file_info, %struct.file_info* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.file_info*, %struct.file_info** %2, align 8
  %217 = getelementptr inbounds %struct.file_info, %struct.file_info* %216, i32 0, i32 4
  %218 = load %struct.file_info*, %struct.file_info** %217, align 8
  %219 = getelementptr inbounds %struct.file_info, %struct.file_info* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %215, %220
  br i1 %221, label %222, label %264

222:                                              ; preds = %212
  %223 = load %struct.file_info*, %struct.file_info** %2, align 8
  %224 = getelementptr inbounds %struct.file_info, %struct.file_info* %223, i32 0, i32 4
  %225 = load %struct.file_info*, %struct.file_info** %224, align 8
  %226 = load i32, i32* @FIF_ZIPPED, align 4
  %227 = load i32, i32* @FIF_RDONLY, align 4
  %228 = or i32 %226, %227
  %229 = call i64 @all_flags(%struct.file_info* %225, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %264

231:                                              ; preds = %222
  %232 = load %struct.file_info*, %struct.file_info** %3, align 8
  %233 = getelementptr inbounds %struct.file_info, %struct.file_info* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  store i8* %234, i8** %8, align 8
  %235 = load %struct.file_info*, %struct.file_info** %2, align 8
  %236 = getelementptr inbounds %struct.file_info, %struct.file_info* %235, i32 0, i32 1
  %237 = load i8*, i8** %236, align 8
  store i8* %237, i8** %9, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @strlen(i8* %238)
  store i32 %239, i32* %10, align 4
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 @strlen(i8* %240)
  store i32 %241, i32* %11, align 4
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = sub nsw i32 %243, 3
  %245 = add nsw i32 %244, 11
  %246 = icmp eq i32 %242, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %231
  %248 = load i8*, i8** %9, align 8
  %249 = load i8*, i8** %8, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sub nsw i32 %250, 3
  %252 = call i32 @memcmp(i8* %248, i8* %249, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %247
  %255 = load i8*, i8** %9, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = getelementptr inbounds i8, i8* %258, i64 -3
  %260 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %254
  br label %270

263:                                              ; preds = %254, %247, %231
  br label %264

264:                                              ; preds = %263, %222, %212, %205, %200
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %6, align 4
  %268 = load %struct.file_info*, %struct.file_info** %2, align 8
  %269 = getelementptr inbounds %struct.file_info, %struct.file_info* %268, i32 1
  store %struct.file_info* %269, %struct.file_info** %2, align 8
  br label %196

270:                                              ; preds = %262, %196
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @src_fnum, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %294

274:                                              ; preds = %270
  %275 = load %struct.file_info*, %struct.file_info** %3, align 8
  %276 = getelementptr inbounds %struct.file_info, %struct.file_info* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = inttoptr i64 %278 to i8*
  %280 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %279)
  %281 = load %struct.file_info*, %struct.file_info** %3, align 8
  %282 = getelementptr inbounds %struct.file_info, %struct.file_info* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @unlink(i32 %283)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %274
  %287 = load %struct.file_info*, %struct.file_info** %3, align 8
  %288 = getelementptr inbounds %struct.file_info, %struct.file_info* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = inttoptr i64 %290 to i8*
  %292 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %286, %274
  br label %294

294:                                              ; preds = %293, %270
  br label %295

295:                                              ; preds = %294, %187, %184
  %296 = load %struct.file_info*, %struct.file_info** %3, align 8
  %297 = call i32 @invalidate_file(%struct.file_info* %296)
  br label %301

298:                                              ; preds = %179
  %299 = load %struct.file_info*, %struct.file_info** %3, align 8
  %300 = call i32 @file_data_free(%struct.file_info* %299)
  br label %301

301:                                              ; preds = %298, %295
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %7, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %7, align 4
  %305 = load %struct.file_info*, %struct.file_info** %3, align 8
  %306 = getelementptr inbounds %struct.file_info, %struct.file_info* %305, i32 1
  store %struct.file_info* %306, %struct.file_info** %3, align 8
  br label %175

307:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  %308 = load %struct.file_info*, %struct.file_info** @src_files, align 8
  store %struct.file_info* %308, %struct.file_info** %2, align 8
  br label %309

309:                                              ; preds = %316, %307
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* @src_fnum, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %321

313:                                              ; preds = %309
  %314 = load %struct.file_info*, %struct.file_info** %2, align 8
  %315 = call i32 @file_data_free(%struct.file_info* %314)
  br label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %6, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %6, align 4
  %319 = load %struct.file_info*, %struct.file_info** %2, align 8
  %320 = getelementptr inbounds %struct.file_info, %struct.file_info* %319, i32 1
  store %struct.file_info* %320, %struct.file_info** %2, align 8
  br label %309

321:                                              ; preds = %309
  %322 = load i32, i32* @matches, align 4
  ret i32 %322
}

declare dso_local i32 @reopen_logs(...) #1

declare dso_local i64 @all_flags(%struct.file_info*, i32) #1

declare dso_local i64 @original_matches_zipped_backup(%struct.file_info*, %struct.file_info*) #1

declare dso_local i64 @pair_matches(%struct.file_info*, %struct.file_info*) #1

declare dso_local i64 @better_match(%struct.file_info*, %struct.file_info*) #1

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

declare dso_local %struct.file_info* @create_peer(%struct.file_info*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i64, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @unlink(i32) #1

declare dso_local i32 @invalidate_file(%struct.file_info*) #1

declare dso_local i32 @file_data_free(%struct.file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
