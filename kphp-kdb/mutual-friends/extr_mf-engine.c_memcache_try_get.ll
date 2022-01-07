; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_try_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_try_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"unload_user\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unload_user%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@get = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"unload_lru\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"exception%d_%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"clear_exceptions\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"clear_exceptions%d\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"suggestions\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%d#%d%n\00", align 1
@MAX_CNT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@MAX_FRIENDS = common dso_local global i32 0, align 4
@active_aio_queries = common dso_local global i32 0, align 4
@fr_buff = common dso_local global i32* null, align 8
@buf = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c",%d,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_try_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load i32, i32* @INIT, align 4
  %28 = load i32, i32* @verbosity, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @eat_at(i8* %36, i32 %37, i8** %8, i32* %9)
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 11
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %48 = load %struct.connection*, %struct.connection** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @return_one_key(%struct.connection* %48, i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %51 = load i32, i32* @get, align 4
  %52 = call i32 @RETURN(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %45, %41, %35
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load %struct.connection*, %struct.connection** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @return_one_key(%struct.connection* %61, i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %64 = load i32, i32* @get, align 4
  %65 = call i32 @RETURN(i32 %64, i32 0)
  br label %66

66:                                               ; preds = %60, %56, %53
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 5
  br i1 %68, label %69, label %100

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %69
  %74 = call i32 (...) @mf_prepare_stats()
  store i32 %74, i32* %11, align 4
  %75 = load %struct.connection*, %struct.connection** %5, align 8
  %76 = load i8*, i8** @stats_buff, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @prepare_stats(%struct.connection* %75, i8* %79, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %89 = icmp slt i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.connection*, %struct.connection** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** @stats_buff, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @return_one_key(%struct.connection* %92, i8* %93, i8* %94, i32 %98)
  store i32 0, i32* %4, align 4
  br label %259

100:                                              ; preds = %69, %66
  %101 = load i32, i32* %9, align 4
  %102 = icmp sge i32 %101, 9
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strncmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %13, i32* %14)
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @do_add_exception(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load %struct.connection*, %struct.connection** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @return_one_key(%struct.connection* %116, i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %119 = load i32, i32* @get, align 4
  %120 = call i32 @RETURN(i32 %119, i32 0)
  br label %121

121:                                              ; preds = %115, %103, %100
  %122 = load i32, i32* %9, align 4
  %123 = icmp sge i32 %122, 16
  br i1 %123, label %124, label %148

124:                                              ; preds = %121
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 16)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %15)
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @do_clear_exceptions(i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @get, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @RETURN(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %132
  br label %142

142:                                              ; preds = %141, %128
  %143 = load %struct.connection*, %struct.connection** %5, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @return_one_key(%struct.connection* %143, i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %146 = load i32, i32* @get, align 4
  %147 = call i32 @RETURN(i32 %146, i32 0)
  br label %148

148:                                              ; preds = %142, %124, %121
  %149 = load i32, i32* %9, align 4
  %150 = icmp sge i32 %149, 11
  br i1 %150, label %151, label %256

151:                                              ; preds = %148
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @strncmp(i8* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 11)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %256, label %155

155:                                              ; preds = %151
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 11
  %158 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %17, i32* %18, i32* %19)
  store i32 %158, i32* %21, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 2
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @get, align 4
  %166 = call i32 @RETURN(i32 %165, i32 0)
  br label %167

167:                                              ; preds = %164, %161, %155
  %168 = load i32, i32* %21, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @MAX_CNT, align 4
  store i32 %171, i32* %18, align 4
  br label %183

172:                                              ; preds = %167
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 11
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* %20)
  store i32 %178, i32* %22, align 4
  %179 = load i32, i32* %22, align 4
  %180 = icmp sle i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  store i32 1, i32* %20, align 4
  br label %182

182:                                              ; preds = %181, %172
  br label %183

183:                                              ; preds = %182, %170
  %184 = load i32, i32* %18, align 4
  %185 = mul nsw i32 2, %184
  %186 = add nsw i32 %185, 5
  %187 = load i32, i32* @MAX_FRIENDS, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* @active_aio_queries, align 4
  %191 = or i32 %190, 524288
  store i32 %191, i32* @active_aio_queries, align 4
  %192 = load i32, i32* @MAX_FRIENDS, align 4
  %193 = sub nsw i32 %192, 5
  %194 = sdiv i32 %193, 2
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %189, %183
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %20, align 4
  %199 = load i32*, i32** @fr_buff, align 8
  %200 = call i32 @get_suggestions(i32 %196, i32 %197, i32 %198, i32* %199)
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %23, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %252

203:                                              ; preds = %195
  %204 = load i8*, i8** @buf, align 8
  store i8* %204, i8** %24, align 8
  %205 = load i32*, i32** @fr_buff, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %25, align 4
  %208 = load i8*, i8** %24, align 8
  %209 = load i32, i32* %25, align 4
  %210 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %209)
  %211 = load i8*, i8** %24, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %24, align 8
  store i32 0, i32* %26, align 4
  br label %214

214:                                              ; preds = %238, %203
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %25, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %241

218:                                              ; preds = %214
  %219 = load i8*, i8** %24, align 8
  %220 = load i32*, i32** @fr_buff, align 8
  %221 = load i32, i32* %26, align 4
  %222 = mul nsw i32 %221, 2
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** @fr_buff, align 8
  %228 = load i32, i32* %26, align 4
  %229 = mul nsw i32 %228, 2
  %230 = add nsw i32 %229, 2
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %219, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %226, i32 %233)
  %235 = load i8*, i8** %24, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %24, align 8
  br label %238

238:                                              ; preds = %218
  %239 = load i32, i32* %26, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %26, align 4
  br label %214

241:                                              ; preds = %214
  %242 = load %struct.connection*, %struct.connection** %5, align 8
  %243 = load i8*, i8** %6, align 8
  %244 = load i8*, i8** @buf, align 8
  %245 = load i8*, i8** %24, align 8
  %246 = load i8*, i8** @buf, align 8
  %247 = ptrtoint i8* %245 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = trunc i64 %249 to i32
  %251 = call i32 @return_one_key(%struct.connection* %242, i8* %243, i8* %244, i32 %250)
  br label %252

252:                                              ; preds = %241, %195
  %253 = load i32, i32* @get, align 4
  %254 = load i32, i32* %23, align 4
  %255 = call i32 @RETURN(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %252, %151, %148
  %257 = load i32, i32* @get, align 4
  %258 = call i32 @RETURN(i32 %257, i32 0)
  br label %259

259:                                              ; preds = %256, %73
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @mf_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_add_exception(i32, i32) #1

declare dso_local i32 @do_clear_exceptions(i32) #1

declare dso_local i32 @get_suggestions(i32, i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
