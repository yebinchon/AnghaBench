; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_combinator.c_combinator_ctx_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_combinator.c_combinator_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8* }
%struct.TYPE_11__ = type { i8**, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i8* }

@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: Not a regular file.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Integer overflow detected in keyspace of wordlist: %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: empty file.\00", align 1
@COMBINATOR_MODE_BASE_LEFT = common dso_local global i8* null, align 8
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@COMBINATOR_MODE_BASE_RIGHT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @combinator_ctx_init(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_12__*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %4, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %5, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %6, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %7, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %581

58:                                               ; preds = %1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %581

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %581

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %581

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %581

82:                                               ; preds = %76
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %581

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %581

107:                                              ; preds = %100, %94, %88
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %226

114:                                              ; preds = %107
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %225

120:                                              ; preds = %114
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %8, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @hc_path_is_file(i8* %131)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %120
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %136)
  store i32 -1, i32* %2, align 4
  br label %581

138:                                              ; preds = %120
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @hc_path_is_file(i8* %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %144)
  store i32 -1, i32* %2, align 4
  br label %581

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @hc_fopen(i32* %10, i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* @errno, align 4
  %154 = call i32 @strerror(i32 %153)
  %155 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %152, i32 %154)
  store i32 -1, i32* %2, align 4
  br label %581

156:                                              ; preds = %146
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @hc_fopen(i32* %11, i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @strerror(i32 %163)
  %165 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %162, i32 %164)
  %166 = call i32 @hc_fclose(i32* %10)
  store i32 -1, i32* %2, align 4
  br label %581

167:                                              ; preds = %156
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  store i32 1, i32* %169, align 4
  store i64 0, i64* %12, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i32 @count_words(%struct.TYPE_14__* %170, i32* %10, i8* %171, i64* %12)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %176, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %177)
  %179 = call i32 @hc_fclose(i32* %10)
  %180 = call i32 @hc_fclose(i32* %11)
  store i32 -1, i32* %2, align 4
  br label %581

181:                                              ; preds = %167
  %182 = load i64, i64* %12, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %186)
  %188 = call i32 @hc_fclose(i32* %10)
  %189 = call i32 @hc_fclose(i32* %11)
  store i32 -1, i32* %2, align 4
  br label %581

190:                                              ; preds = %181
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  store i64 0, i64* %14, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @count_words(%struct.TYPE_14__* %193, i32* %11, i8* %194, i64* %14)
  store i32 %195, i32* %15, align 4
  %196 = call i32 @hc_fclose(i32* %10)
  %197 = call i32 @hc_fclose(i32* %11)
  %198 = load i32, i32* %15, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %204

200:                                              ; preds = %190
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %201, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %202)
  store i32 -1, i32* %2, align 4
  br label %581

204:                                              ; preds = %190
  %205 = load i64, i64* %14, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = load i8*, i8** %9, align 8
  %210 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %209)
  store i32 -1, i32* %2, align 4
  br label %581

211:                                              ; preds = %204
  %212 = load i8*, i8** %8, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %9, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  %221 = load i64, i64* %14, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %211, %114
  br label %580

226:                                              ; preds = %107
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %402

233:                                              ; preds = %226
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %379

239:                                              ; preds = %233
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 0
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %16, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i8**, i8*** %246, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 1
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %17, align 8
  %250 = load i8*, i8** %16, align 8
  %251 = call i32 @hc_path_is_file(i8* %250)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %239
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = load i8*, i8** %16, align 8
  %256 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %254, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %255)
  store i32 -1, i32* %2, align 4
  br label %581

257:                                              ; preds = %239
  %258 = load i8*, i8** %17, align 8
  %259 = call i32 @hc_path_is_file(i8* %258)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %263 = load i8*, i8** %17, align 8
  %264 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %263)
  store i32 -1, i32* %2, align 4
  br label %581

265:                                              ; preds = %257
  %266 = load i8*, i8** %16, align 8
  %267 = call i32 @hc_fopen(i32* %18, i8* %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %271 = load i8*, i8** %16, align 8
  %272 = load i32, i32* @errno, align 4
  %273 = call i32 @strerror(i32 %272)
  %274 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %271, i32 %273)
  store i32 -1, i32* %2, align 4
  br label %581

275:                                              ; preds = %265
  %276 = load i8*, i8** %17, align 8
  %277 = call i32 @hc_fopen(i32* %19, i8* %276, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %281 = load i8*, i8** %17, align 8
  %282 = load i32, i32* @errno, align 4
  %283 = call i32 @strerror(i32 %282)
  %284 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %281, i32 %283)
  %285 = call i32 @hc_fclose(i32* %18)
  store i32 -1, i32* %2, align 4
  br label %581

286:                                              ; preds = %275
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 1
  store i32 1, i32* %288, align 4
  store i64 0, i64* %20, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %290 = load i8*, i8** %16, align 8
  %291 = call i32 @count_words(%struct.TYPE_14__* %289, i32* %18, i8* %290, i64* %20)
  store i32 %291, i32* %21, align 4
  %292 = load i32, i32* %21, align 4
  %293 = icmp eq i32 %292, -1
  br i1 %293, label %294, label %300

294:                                              ; preds = %286
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %296 = load i8*, i8** %16, align 8
  %297 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %295, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %296)
  %298 = call i32 @hc_fclose(i32* %18)
  %299 = call i32 @hc_fclose(i32* %19)
  store i32 -1, i32* %2, align 4
  br label %581

300:                                              ; preds = %286
  %301 = load i64, i64* %20, align 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = load i8*, i8** %16, align 8
  %306 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %304, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %305)
  %307 = call i32 @hc_fclose(i32* %18)
  %308 = call i32 @hc_fclose(i32* %19)
  store i32 -1, i32* %2, align 4
  br label %581

309:                                              ; preds = %300
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 1
  store i32 1, i32* %311, align 4
  store i64 0, i64* %22, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %313 = load i8*, i8** %17, align 8
  %314 = call i32 @count_words(%struct.TYPE_14__* %312, i32* %19, i8* %313, i64* %22)
  store i32 %314, i32* %23, align 4
  %315 = call i32 @hc_fclose(i32* %18)
  %316 = call i32 @hc_fclose(i32* %19)
  %317 = load i32, i32* %23, align 4
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %319, label %323

319:                                              ; preds = %309
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %321 = load i8*, i8** %17, align 8
  %322 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %320, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %321)
  store i32 -1, i32* %2, align 4
  br label %581

323:                                              ; preds = %309
  %324 = load i64, i64* %22, align 8
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %323
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %328 = load i8*, i8** %17, align 8
  %329 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %327, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %328)
  store i32 -1, i32* %2, align 4
  br label %581

330:                                              ; preds = %323
  %331 = load i8*, i8** %16, align 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  store i8* %331, i8** %333, align 8
  %334 = load i8*, i8** %17, align 8
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 3
  store i8* %334, i8** %336, align 8
  %337 = load i64, i64* %20, align 8
  %338 = load i64, i64* %22, align 8
  %339 = icmp sge i64 %337, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %330
  %341 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 4
  store i8* %341, i8** %343, align 8
  %344 = load i64, i64* %22, align 8
  %345 = trunc i64 %344 to i32
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  br label %378

348:                                              ; preds = %330
  %349 = load i8*, i8** @COMBINATOR_MODE_BASE_RIGHT, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 4
  store i8* %349, i8** %351, align 8
  %352 = load i64, i64* %20, align 8
  %353 = trunc i64 %352 to i32
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 4
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 8
  %358 = load i8*, i8** %357, align 8
  store i8* %358, i8** %24, align 8
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 9
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 8
  store i8* %361, i8** %363, align 8
  %364 = load i8*, i8** %24, align 8
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 9
  store i8* %364, i8** %366, align 8
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  store i32 %369, i32* %25, align 4
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* %25, align 4
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 8
  br label %378

378:                                              ; preds = %348, %340
  br label %401

379:                                              ; preds = %233
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 6
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %379
  %386 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 4
  store i8* %386, i8** %388, align 8
  br label %400

389:                                              ; preds = %379
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 6
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %389
  %396 = load i8*, i8** @COMBINATOR_MODE_BASE_RIGHT, align 8
  %397 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 4
  store i8* %396, i8** %398, align 8
  br label %399

399:                                              ; preds = %395, %389
  br label %400

400:                                              ; preds = %399, %385
  br label %401

401:                                              ; preds = %400, %378
  br label %579

402:                                              ; preds = %226
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 6
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %513

408:                                              ; preds = %402
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  %411 = load i8**, i8*** %410, align 8
  %412 = getelementptr inbounds i8*, i8** %411, i64 0
  %413 = load i8*, i8** %412, align 8
  store i8* %413, i8** %26, align 8
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  %416 = load i8**, i8*** %415, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 1
  %418 = load i8*, i8** %417, align 8
  store i8* %418, i8** %27, align 8
  %419 = load i8*, i8** %26, align 8
  %420 = call i32 @hc_path_is_file(i8* %419)
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %408
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %424 = load i8*, i8** %26, align 8
  %425 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %423, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %424)
  store i32 -1, i32* %2, align 4
  br label %581

426:                                              ; preds = %408
  %427 = load i8*, i8** %27, align 8
  %428 = call i32 @hc_path_is_file(i8* %427)
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %432 = load i8*, i8** %27, align 8
  %433 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %431, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %432)
  store i32 -1, i32* %2, align 4
  br label %581

434:                                              ; preds = %426
  %435 = load i8*, i8** %26, align 8
  %436 = call i32 @hc_fopen(i32* %28, i8* %435, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %434
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %440 = load i8*, i8** %26, align 8
  %441 = load i32, i32* @errno, align 4
  %442 = call i32 @strerror(i32 %441)
  %443 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %439, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %440, i32 %442)
  store i32 -1, i32* %2, align 4
  br label %581

444:                                              ; preds = %434
  %445 = load i8*, i8** %27, align 8
  %446 = call i32 @hc_fopen(i32* %29, i8* %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %444
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %450 = load i8*, i8** %27, align 8
  %451 = load i32, i32* @errno, align 4
  %452 = call i32 @strerror(i32 %451)
  %453 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %449, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %450, i32 %452)
  %454 = call i32 @hc_fclose(i32* %28)
  store i32 -1, i32* %2, align 4
  br label %581

455:                                              ; preds = %444
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 1
  store i32 1, i32* %457, align 4
  store i64 0, i64* %30, align 8
  %458 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %459 = load i8*, i8** %26, align 8
  %460 = call i32 @count_words(%struct.TYPE_14__* %458, i32* %28, i8* %459, i64* %30)
  store i32 %460, i32* %31, align 4
  %461 = load i32, i32* %31, align 4
  %462 = icmp eq i32 %461, -1
  br i1 %462, label %463, label %469

463:                                              ; preds = %455
  %464 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %465 = load i8*, i8** %26, align 8
  %466 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %464, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %465)
  %467 = call i32 @hc_fclose(i32* %28)
  %468 = call i32 @hc_fclose(i32* %29)
  store i32 -1, i32* %2, align 4
  br label %581

469:                                              ; preds = %455
  %470 = load i64, i64* %30, align 8
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %469
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %474 = load i8*, i8** %26, align 8
  %475 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %473, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %474)
  %476 = call i32 @hc_fclose(i32* %28)
  %477 = call i32 @hc_fclose(i32* %29)
  store i32 -1, i32* %2, align 4
  br label %581

478:                                              ; preds = %469
  %479 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %479, i32 0, i32 1
  store i32 1, i32* %480, align 4
  store i64 0, i64* %32, align 8
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %482 = load i8*, i8** %27, align 8
  %483 = call i32 @count_words(%struct.TYPE_14__* %481, i32* %29, i8* %482, i64* %32)
  store i32 %483, i32* %33, align 4
  %484 = call i32 @hc_fclose(i32* %28)
  %485 = call i32 @hc_fclose(i32* %29)
  %486 = load i32, i32* %33, align 4
  %487 = icmp eq i32 %486, -1
  br i1 %487, label %488, label %492

488:                                              ; preds = %478
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %490 = load i8*, i8** %27, align 8
  %491 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %489, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %490)
  store i32 -1, i32* %2, align 4
  br label %581

492:                                              ; preds = %478
  %493 = load i64, i64* %32, align 8
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %492
  %496 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %497 = load i8*, i8** %27, align 8
  %498 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %496, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %497)
  store i32 -1, i32* %2, align 4
  br label %581

499:                                              ; preds = %492
  %500 = load i8*, i8** %26, align 8
  %501 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 2
  store i8* %500, i8** %502, align 8
  %503 = load i8*, i8** %27, align 8
  %504 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %504, i32 0, i32 3
  store i8* %503, i8** %505, align 8
  %506 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %507 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %507, i32 0, i32 4
  store i8* %506, i8** %508, align 8
  %509 = load i64, i64* %32, align 8
  %510 = trunc i64 %509 to i32
  %511 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 1
  store i32 %510, i32* %512, align 4
  br label %578

513:                                              ; preds = %402
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 6
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %523

519:                                              ; preds = %513
  %520 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %521 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %521, i32 0, i32 4
  store i8* %520, i8** %522, align 8
  br label %577

523:                                              ; preds = %513
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 6
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %529, label %576

529:                                              ; preds = %523
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 0
  %532 = load %struct.TYPE_12__*, %struct.TYPE_12__** %531, align 8
  store %struct.TYPE_12__* %532, %struct.TYPE_12__** %34, align 8
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 0
  %535 = load i8**, i8*** %534, align 8
  %536 = getelementptr inbounds i8*, i8** %535, i64 1
  %537 = load i8*, i8** %536, align 8
  store i8* %537, i8** %35, align 8
  %538 = load i8*, i8** %35, align 8
  %539 = call i32 @hc_path_is_file(i8* %538)
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %529
  %542 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %543 = load i8*, i8** %35, align 8
  %544 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %542, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %543)
  store i32 -1, i32* %2, align 4
  br label %581

545:                                              ; preds = %529
  %546 = load i8*, i8** %35, align 8
  %547 = call i32 @hc_fopen(i32* %36, i8* %546, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %555

549:                                              ; preds = %545
  %550 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %551 = load i8*, i8** %35, align 8
  %552 = load i32, i32* @errno, align 4
  %553 = call i32 @strerror(i32 %552)
  %554 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %550, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %551, i32 %553)
  store i32 -1, i32* %2, align 4
  br label %581

555:                                              ; preds = %545
  %556 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 0
  store i32 1, i32* %557, align 4
  store i64 0, i64* %37, align 8
  %558 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %559 = load i8*, i8** %35, align 8
  %560 = call i32 @count_words(%struct.TYPE_14__* %558, i32* %36, i8* %559, i64* %37)
  store i32 %560, i32* %38, align 4
  %561 = call i32 @hc_fclose(i32* %36)
  %562 = load i32, i32* %38, align 4
  %563 = icmp eq i32 %562, -1
  br i1 %563, label %564, label %568

564:                                              ; preds = %555
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %566 = load i8*, i8** %35, align 8
  %567 = call i32 (%struct.TYPE_14__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_14__* %565, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %566)
  store i32 -1, i32* %2, align 4
  br label %581

568:                                              ; preds = %555
  %569 = load i64, i64* %37, align 8
  %570 = trunc i64 %569 to i32
  %571 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %571, i32 0, i32 1
  store i32 %570, i32* %572, align 4
  %573 = load i8*, i8** @COMBINATOR_MODE_BASE_LEFT, align 8
  %574 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %575 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %574, i32 0, i32 4
  store i8* %573, i8** %575, align 8
  br label %576

576:                                              ; preds = %568, %523
  br label %577

577:                                              ; preds = %576, %519
  br label %578

578:                                              ; preds = %577, %499
  br label %579

579:                                              ; preds = %578, %401
  br label %580

580:                                              ; preds = %579, %225
  store i32 0, i32* %2, align 4
  br label %581

581:                                              ; preds = %580, %564, %549, %541, %495, %488, %472, %463, %448, %438, %430, %422, %326, %319, %303, %294, %279, %269, %261, %253, %207, %200, %184, %175, %160, %150, %142, %134, %106, %87, %81, %75, %69, %63, %57
  %582 = load i32, i32* %2, align 4
  ret i32 %582
}

declare dso_local i32 @hc_path_is_file(i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_14__*, i8*, i8*, ...) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @count_words(%struct.TYPE_14__*, i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
