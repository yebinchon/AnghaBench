; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_tuningdb.c_tuning_db_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_tuningdb.c_tuning_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TUNING_DB_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@HCBUFSIZ_LARGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Tuning-db: Invalid attack_mode '%c' in Line '%d'\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Tuning-db: Invalid vector_width '%c' in Line '%d'\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Tuning-db: Invalid kernel_accel '%d' in Line '%d'\00", align 1
@ATTACK_KERN_STRAIGHT = common dso_local global i64 0, align 8
@KERNEL_RULES = common dso_local global i32 0, align 4
@ATTACK_KERN_COMBI = common dso_local global i64 0, align 8
@KERNEL_COMBS = common dso_local global i32 0, align 4
@ATTACK_KERN_BF = common dso_local global i64 0, align 8
@KERNEL_BFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Tuning-db: Invalid kernel_loops '%d' in Line '%d'\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Tuning-db: Invalid number of token in Line '%d'\00", align 1
@sort_by_tuning_db_alias = common dso_local global i32 0, align 4
@sort_by_tuning_db_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tuning_db_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [7 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %6, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %512

48:                                               ; preds = %1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %512

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %512

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %512

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %512

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %512

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %512

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TUNING_DB_FILE, align 4
  %91 = call i32 @hc_asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @hc_fopen(i32* %9, i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i32 @strerror(i32 %98)
  %100 = call i32 @event_log_error(%struct.TYPE_16__* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %97, i32 %99)
  store i32 -1, i32* %2, align 4
  br label %512

101:                                              ; preds = %84
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @hcfree(i8* %102)
  %104 = call i64 @count_lines(i32* %9)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  %107 = call i64 @hccalloc(i64 %106, i32 40)
  %108 = inttoptr i64 %107 to %struct.TYPE_15__*
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  %115 = call i64 @hccalloc(i64 %114, i32 40)
  %116 = inttoptr i64 %115 to %struct.TYPE_15__*
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = call i32 @hc_rewind(i32* %9)
  store i32 0, i32* %11, align 4
  %122 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %123 = call i64 @hcmalloc(i64 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %12, align 8
  br label %125

125:                                              ; preds = %491, %486, %448, %433, %418, %403, %347, %274, %230, %151, %144, %101
  %126 = call i32 @hc_feof(i32* %9)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br i1 %128, label %129, label %492

129:                                              ; preds = %125
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %132 = sub nsw i64 %131, 1
  %133 = call i8* @hc_fgets(i8* %130, i64 %132, i32* %9)
  store i8* %133, i8** %13, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %492

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = call i64 @in_superchop(i8* %140)
  store i64 %141, i64* %14, align 8
  %142 = load i64, i64* %14, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %125

145:                                              ; preds = %137
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 35
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %125

152:                                              ; preds = %145
  %153 = bitcast [7 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %153, i8 0, i64 56, i1 false)
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = call i8* @strtok_r(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %17)
  store i8* %155, i8** %18, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 %158
  store i8* %156, i8** %159, align 8
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %165, %152
  %163 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %17)
  store i8* %163, i8** %18, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i8*, i8** %18, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 %168
  store i8* %166, i8** %169, align 8
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %162

172:                                              ; preds = %162
  %173 = load i32, i32* %16, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 0
  %177 = load i8*, i8** %176, align 16
  store i8* %177, i8** %19, align 8
  %178 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %179 = load i8*, i8** %178, align 8
  store i8* %179, i8** %20, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %185
  store %struct.TYPE_15__* %186, %struct.TYPE_15__** %21, align 8
  %187 = load i8*, i8** %19, align 8
  %188 = call i8* @hcstrdup(i8* %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = call i8* @hcstrdup(i8* %191)
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %196, align 8
  br label %491

199:                                              ; preds = %172
  %200 = load i32, i32* %16, align 4
  %201 = icmp eq i32 %200, 6
  br i1 %201, label %202, label %486

202:                                              ; preds = %199
  %203 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 48
  br i1 %208, label %209, label %239

209:                                              ; preds = %202
  %210 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 49
  br i1 %215, label %216, label %239

216:                                              ; preds = %209
  %217 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 51
  br i1 %222, label %223, label %239

223:                                              ; preds = %216
  %224 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %225 = load i8*, i8** %224, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 42
  br i1 %229, label %230, label %239

230:                                              ; preds = %223
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %232 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = load i32, i32* %11, align 4
  %238 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %231, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %236, i32 %237)
  br label %125

239:                                              ; preds = %223, %216, %209, %202
  %240 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp ne i32 %244, 49
  br i1 %245, label %246, label %283

246:                                              ; preds = %239
  %247 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 50
  br i1 %252, label %253, label %283

253:                                              ; preds = %246
  %254 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 52
  br i1 %259, label %260, label %283

260:                                              ; preds = %253
  %261 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %265, 56
  br i1 %266, label %267, label %283

267:                                              ; preds = %260
  %268 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %269 = load i8*, i8** %268, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 0
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %272, 78
  br i1 %273, label %274, label %283

274:                                              ; preds = %267
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %276 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = load i32, i32* %11, align 4
  %282 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %275, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %280, i32 %281)
  br label %125

283:                                              ; preds = %267, %260, %253, %246, %239
  %284 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 0
  %285 = load i8*, i8** %284, align 16
  store i8* %285, i8** %22, align 8
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  %286 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %290, 42
  br i1 %291, label %292, label %297

292:                                              ; preds = %283
  %293 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i64 @strtol(i8* %294, i32* null, i32 10)
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %23, align 4
  br label %297

297:                                              ; preds = %292, %283
  %298 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 2
  %299 = load i8*, i8** %298, align 16
  %300 = getelementptr inbounds i8, i8* %299, i64 0
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 42
  br i1 %303, label %304, label %309

304:                                              ; preds = %297
  %305 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 2
  %306 = load i8*, i8** %305, align 16
  %307 = call i64 @strtol(i8* %306, i32* null, i32 10)
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %24, align 4
  br label %309

309:                                              ; preds = %304, %297
  %310 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 0
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 78
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 3
  %318 = load i8*, i8** %317, align 8
  %319 = call i64 @strtol(i8* %318, i32* null, i32 10)
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %25, align 4
  br label %321

321:                                              ; preds = %316, %309
  %322 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 4
  %323 = load i8*, i8** %322, align 16
  %324 = getelementptr inbounds i8, i8* %323, i64 0
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 65
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  store i32 0, i32* %26, align 4
  br label %354

329:                                              ; preds = %321
  %330 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 4
  %331 = load i8*, i8** %330, align 16
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 77
  br i1 %335, label %336, label %337

336:                                              ; preds = %329
  store i32 1024, i32* %26, align 4
  br label %353

337:                                              ; preds = %329
  %338 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 4
  %339 = load i8*, i8** %338, align 16
  %340 = call i64 @strtol(i8* %339, i32* null, i32 10)
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %26, align 4
  %342 = load i32, i32* %26, align 4
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %347, label %344

344:                                              ; preds = %337
  %345 = load i32, i32* %26, align 4
  %346 = icmp sgt i32 %345, 1024
  br i1 %346, label %347, label %352

347:                                              ; preds = %344, %337
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* %11, align 4
  %351 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %348, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %349, i32 %350)
  br label %125

352:                                              ; preds = %344
  br label %353

353:                                              ; preds = %352, %336
  br label %354

354:                                              ; preds = %353, %328
  %355 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 5
  %356 = load i8*, i8** %355, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 0
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 65
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  store i32 0, i32* %27, align 4
  br label %455

362:                                              ; preds = %354
  %363 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 5
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 77
  br i1 %368, label %369, label %396

369:                                              ; preds = %362
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %369
  %376 = load i32, i32* @KERNEL_RULES, align 4
  store i32 %376, i32* %27, align 4
  br label %395

377:                                              ; preds = %369
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %377
  %384 = load i32, i32* @KERNEL_COMBS, align 4
  store i32 %384, i32* %27, align 4
  br label %394

385:                                              ; preds = %377
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @ATTACK_KERN_BF, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %393

391:                                              ; preds = %385
  %392 = load i32, i32* @KERNEL_BFS, align 4
  store i32 %392, i32* %27, align 4
  br label %393

393:                                              ; preds = %391, %385
  br label %394

394:                                              ; preds = %393, %383
  br label %395

395:                                              ; preds = %394, %375
  br label %454

396:                                              ; preds = %362
  %397 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i64 0, i64 5
  %398 = load i8*, i8** %397, align 8
  %399 = call i64 @strtol(i8* %398, i32* null, i32 10)
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %27, align 4
  %401 = load i32, i32* %27, align 4
  %402 = icmp slt i32 %401, 1
  br i1 %402, label %403, label %408

403:                                              ; preds = %396
  %404 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %405 = load i32, i32* %27, align 4
  %406 = load i32, i32* %11, align 4
  %407 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %404, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %405, i32 %406)
  br label %125

408:                                              ; preds = %396
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %414, label %423

414:                                              ; preds = %408
  %415 = load i32, i32* %27, align 4
  %416 = load i32, i32* @KERNEL_RULES, align 4
  %417 = icmp sgt i32 %415, %416
  br i1 %417, label %418, label %423

418:                                              ; preds = %414
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %420 = load i32, i32* %27, align 4
  %421 = load i32, i32* %11, align 4
  %422 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %419, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %420, i32 %421)
  br label %125

423:                                              ; preds = %414, %408
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %438

429:                                              ; preds = %423
  %430 = load i32, i32* %27, align 4
  %431 = load i32, i32* @KERNEL_COMBS, align 4
  %432 = icmp sgt i32 %430, %431
  br i1 %432, label %433, label %438

433:                                              ; preds = %429
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %435 = load i32, i32* %27, align 4
  %436 = load i32, i32* %11, align 4
  %437 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %434, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %435, i32 %436)
  br label %125

438:                                              ; preds = %429, %423
  %439 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @ATTACK_KERN_BF, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %453

444:                                              ; preds = %438
  %445 = load i32, i32* %27, align 4
  %446 = load i32, i32* @KERNEL_BFS, align 4
  %447 = icmp sgt i32 %445, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %444
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %450 = load i32, i32* %27, align 4
  %451 = load i32, i32* %11, align 4
  %452 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %449, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %450, i32 %451)
  br label %125

453:                                              ; preds = %444, %438
  br label %454

454:                                              ; preds = %453, %395
  br label %455

455:                                              ; preds = %454, %361
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 3
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %457, align 8
  %459 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i64 %461
  store %struct.TYPE_15__* %462, %struct.TYPE_15__** %28, align 8
  %463 = load i8*, i8** %22, align 8
  %464 = call i8* @hcstrdup(i8* %463)
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 5
  store i8* %464, i8** %466, align 8
  %467 = load i32, i32* %23, align 4
  %468 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %468, i32 0, i32 0
  store i32 %467, i32* %469, align 8
  %470 = load i32, i32* %24, align 4
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 1
  store i32 %470, i32* %472, align 4
  %473 = load i32, i32* %25, align 4
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %475 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %474, i32 0, i32 2
  store i32 %473, i32* %475, align 8
  %476 = load i32, i32* %26, align 4
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 3
  store i32 %476, i32* %478, align 4
  %479 = load i32, i32* %27, align 4
  %480 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %481 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %480, i32 0, i32 4
  store i32 %479, i32* %481, align 8
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 8
  %485 = add i64 %484, 1
  store i64 %485, i64* %483, align 8
  br label %490

486:                                              ; preds = %199
  %487 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %488 = load i32, i32* %11, align 4
  %489 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @event_log_warning(%struct.TYPE_16__* %487, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %488)
  br label %125

490:                                              ; preds = %455
  br label %491

491:                                              ; preds = %490, %175
  br label %125

492:                                              ; preds = %136, %125
  %493 = load i8*, i8** %12, align 8
  %494 = call i32 @hcfree(i8* %493)
  %495 = call i32 @hc_fclose(i32* %9)
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 4
  %498 = load %struct.TYPE_15__*, %struct.TYPE_15__** %497, align 8
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = load i32, i32* @sort_by_tuning_db_alias, align 4
  %503 = call i32 @qsort(%struct.TYPE_15__* %498, i64 %501, i32 40, i32 %502)
  %504 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 3
  %506 = load %struct.TYPE_15__*, %struct.TYPE_15__** %505, align 8
  %507 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %508 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %507, i32 0, i32 2
  %509 = load i64, i64* %508, align 8
  %510 = load i32, i32* @sort_by_tuning_db_entry, align 4
  %511 = call i32 @qsort(%struct.TYPE_15__* %506, i64 %509, i32 40, i32 %510)
  store i32 0, i32* %2, align 4
  br label %512

512:                                              ; preds = %492, %95, %83, %77, %71, %65, %59, %53, %47
  %513 = load i32, i32* %2, align 4
  ret i32 %513
}

declare dso_local i32 @hc_asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_16__*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i64 @count_lines(i32*) #1

declare dso_local i64 @hccalloc(i64, i32) #1

declare dso_local i32 @hc_rewind(i32*) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i8* @hc_fgets(i8*, i64, i32*) #1

declare dso_local i64 @in_superchop(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @hcstrdup(i8*) #1

declare dso_local i32 @event_log_warning(%struct.TYPE_16__*, i8*, i32, ...) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_15__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
