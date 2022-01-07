; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_flush.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32 }
%struct.diff_options = type { i32, i32, %struct.TYPE_2__, i64, i32, i32, i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)*, i64, i64 }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.diffstat_t = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@DIFF_FORMAT_RAW = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@DIFF_FORMAT_CHECKDIFF = common dso_local global i32 0, align 4
@DIFF_FORMAT_DIRSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_DIFFSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_SHORTSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_NUMSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_SUMMARY = common dso_local global i32 0, align 4
@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@DIFF_SYMBOL_SEPARATOR = common dso_local global i32 0, align 4
@DIFF_SYMBOL_STAT_SEP = common dso_local global i32 0, align 4
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_flush(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca %struct.diff_queue_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_filepair*, align 8
  %9 = alloca %struct.diffstat_t, align 4
  %10 = alloca %struct.diff_filepair*, align 8
  %11 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %3, align 8
  %12 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %13 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %16 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %319

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DIFF_FORMAT_RAW, align 4
  %23 = load i32, i32* @DIFF_FORMAT_NAME, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DIFF_FORMAT_CHECKDIFF, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %21, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %35 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %40 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %39, i32 0, i32 1
  %41 = load %struct.diff_filepair**, %struct.diff_filepair*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %41, i64 %43
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %44, align 8
  store %struct.diff_filepair* %45, %struct.diff_filepair** %8, align 8
  %46 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %47 = call i64 @check_pair_status(%struct.diff_filepair* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %51 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %52 = call i32 @flush_one_pair(%struct.diff_filepair* %50, %struct.diff_options* %51)
  br label %53

53:                                               ; preds = %49, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %20
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @DIFF_FORMAT_DIRSTAT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %67 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %65, %60
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %75 = load i32, i32* @DIFF_FORMAT_SHORTSTAT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DIFF_FORMAT_NUMSTAT, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %150

84:                                               ; preds = %81, %72
  %85 = call i32 @memset(%struct.diffstat_t* %9, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %108, %84
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %89 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %94 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %93, i32 0, i32 1
  %95 = load %struct.diff_filepair**, %struct.diff_filepair*** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %95, i64 %97
  %99 = load %struct.diff_filepair*, %struct.diff_filepair** %98, align 8
  store %struct.diff_filepair* %99, %struct.diff_filepair** %10, align 8
  %100 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %101 = call i64 @check_pair_status(%struct.diff_filepair* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load %struct.diff_filepair*, %struct.diff_filepair** %10, align 8
  %105 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %106 = call i32 @diff_flush_stat(%struct.diff_filepair* %104, %struct.diff_options* %105, %struct.diffstat_t* %9)
  br label %107

107:                                              ; preds = %103, %92
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %86

111:                                              ; preds = %86
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @DIFF_FORMAT_NUMSTAT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %118 = call i32 @show_numstat(%struct.diffstat_t* %9, %struct.diff_options* %117)
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %126 = call i32 @show_stats(%struct.diffstat_t* %9, %struct.diff_options* %125)
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @DIFF_FORMAT_SHORTSTAT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %134 = call i32 @show_shortstats(%struct.diffstat_t* %9, %struct.diff_options* %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @DIFF_FORMAT_DIRSTAT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %145 = call i32 @show_dirstat_by_line(%struct.diffstat_t* %9, %struct.diff_options* %144)
  br label %146

146:                                              ; preds = %143, %140, %135
  %147 = call i32 @free_diffstat_info(%struct.diffstat_t* %9)
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %146, %81
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @DIFF_FORMAT_DIRSTAT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %160 = call i32 @show_dirstat(%struct.diff_options* %159)
  br label %161

161:                                              ; preds = %158, %155, %150
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @DIFF_FORMAT_SUMMARY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %161
  %167 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %168 = call i32 @is_summary_empty(%struct.diff_queue_struct* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %193, label %170

170:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %187, %170
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %174 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %179 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %180 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %179, i32 0, i32 1
  %181 = load %struct.diff_filepair**, %struct.diff_filepair*** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %181, i64 %183
  %185 = load %struct.diff_filepair*, %struct.diff_filepair** %184, align 8
  %186 = call i32 @diff_summary(%struct.diff_options* %178, %struct.diff_filepair* %185)
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %4, align 4
  br label %171

190:                                              ; preds = %171
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %166, %161
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %260

198:                                              ; preds = %193
  %199 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %200 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %260

204:                                              ; preds = %198
  %205 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %206 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %260

210:                                              ; preds = %204
  %211 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %212 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %217 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @fclose(i32 %218)
  br label %220

220:                                              ; preds = %215, %210
  %221 = call i32 @xfopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %222 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %223 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %225 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %224, i32 0, i32 1
  store i32 1, i32* %225, align 4
  %226 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %227 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %226, i32 0, i32 8
  store i64 0, i64* %227, align 8
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %256, %220
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %231 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %228
  %235 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %236 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %235, i32 0, i32 1
  %237 = load %struct.diff_filepair**, %struct.diff_filepair*** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %237, i64 %239
  %241 = load %struct.diff_filepair*, %struct.diff_filepair** %240, align 8
  store %struct.diff_filepair* %241, %struct.diff_filepair** %11, align 8
  %242 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %243 = call i64 @check_pair_status(%struct.diff_filepair* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %234
  %246 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %247 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %248 = call i32 @diff_flush_patch(%struct.diff_filepair* %246, %struct.diff_options* %247)
  br label %249

249:                                              ; preds = %245, %234
  %250 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %251 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %259

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %4, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %4, align 4
  br label %228

259:                                              ; preds = %254, %228
  br label %260

260:                                              ; preds = %259, %204, %198, %193
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %260
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %265
  %269 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %270 = load i32, i32* @DIFF_SYMBOL_SEPARATOR, align 4
  %271 = call i32 @emit_diff_symbol(%struct.diff_options* %269, i32 %270, i32* null, i32 0, i32 0)
  %272 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %273 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %272, i32 0, i32 7
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %268
  %277 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %278 = load i32, i32* @DIFF_SYMBOL_STAT_SEP, align 4
  %279 = call i32 @emit_diff_symbol(%struct.diff_options* %277, i32 %278, i32* null, i32 0, i32 0)
  br label %280

280:                                              ; preds = %276, %268
  br label %281

281:                                              ; preds = %280, %265
  %282 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %283 = call i32 @diff_flush_patch_all_file_pairs(%struct.diff_options* %282)
  br label %284

284:                                              ; preds = %281, %260
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %284
  %290 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %291 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %290, i32 0, i32 6
  %292 = load i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)*, i32 (%struct.diff_queue_struct*, %struct.diff_options*, i32)** %291, align 8
  %293 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %294 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %295 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %296 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = call i32 %292(%struct.diff_queue_struct* %293, %struct.diff_options* %294, i32 %297)
  br label %299

299:                                              ; preds = %289, %284
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %315, %299
  %301 = load i32, i32* %4, align 4
  %302 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %303 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %318

306:                                              ; preds = %300
  %307 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %308 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %307, i32 0, i32 1
  %309 = load %struct.diff_filepair**, %struct.diff_filepair*** %308, align 8
  %310 = load i32, i32* %4, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %309, i64 %311
  %313 = load %struct.diff_filepair*, %struct.diff_filepair** %312, align 8
  %314 = call i32 @diff_free_filepair(%struct.diff_filepair* %313)
  br label %315

315:                                              ; preds = %306
  %316 = load i32, i32* %4, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %4, align 4
  br label %300

318:                                              ; preds = %300
  br label %319

319:                                              ; preds = %318, %19
  %320 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %321 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %320, i32 0, i32 1
  %322 = load %struct.diff_filepair**, %struct.diff_filepair*** %321, align 8
  %323 = call i32 @free(%struct.diff_filepair** %322)
  %324 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %3, align 8
  %325 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %324)
  %326 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %327 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %319
  %331 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %332 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @fclose(i32 %333)
  br label %335

335:                                              ; preds = %330, %319
  %336 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %337 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %335
  %342 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %343 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %348 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 0
  store i32 1, i32* %349, align 8
  br label %354

350:                                              ; preds = %341
  %351 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %352 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 0
  store i32 0, i32* %353, align 8
  br label %354

354:                                              ; preds = %350, %346
  br label %355

355:                                              ; preds = %354, %335
  ret void
}

declare dso_local i64 @check_pair_status(%struct.diff_filepair*) #1

declare dso_local i32 @flush_one_pair(%struct.diff_filepair*, %struct.diff_options*) #1

declare dso_local i32 @memset(%struct.diffstat_t*, i32, i32) #1

declare dso_local i32 @diff_flush_stat(%struct.diff_filepair*, %struct.diff_options*, %struct.diffstat_t*) #1

declare dso_local i32 @show_numstat(%struct.diffstat_t*, %struct.diff_options*) #1

declare dso_local i32 @show_stats(%struct.diffstat_t*, %struct.diff_options*) #1

declare dso_local i32 @show_shortstats(%struct.diffstat_t*, %struct.diff_options*) #1

declare dso_local i32 @show_dirstat_by_line(%struct.diffstat_t*, %struct.diff_options*) #1

declare dso_local i32 @free_diffstat_info(%struct.diffstat_t*) #1

declare dso_local i32 @show_dirstat(%struct.diff_options*) #1

declare dso_local i32 @is_summary_empty(%struct.diff_queue_struct*) #1

declare dso_local i32 @diff_summary(%struct.diff_options*, %struct.diff_filepair*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @xfopen(i8*, i8*) #1

declare dso_local i32 @diff_flush_patch(%struct.diff_filepair*, %struct.diff_options*) #1

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32*, i32, i32) #1

declare dso_local i32 @diff_flush_patch_all_file_pairs(%struct.diff_options*) #1

declare dso_local i32 @diff_free_filepair(%struct.diff_filepair*) #1

declare dso_local i32 @free(%struct.diff_filepair**) #1

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
