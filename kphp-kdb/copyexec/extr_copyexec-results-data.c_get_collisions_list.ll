; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_collisions_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_collisions_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"get_collistions_list: hosts = %d\0A\00", align 1
@hosts = common dso_local global i32 0, align 4
@HOSTS = common dso_local global %struct.TYPE_8__** null, align 8
@cmp_phost_t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%llu,%s,0x%llx,%d,%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_collisions_list() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @hosts, align 4
  %14 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @hosts, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %277

18:                                               ; preds = %0
  %19 = load i32, i32* @hosts, align 4
  %20 = call %struct.TYPE_8__** @calloc(i32 %19, i32 8)
  store %struct.TYPE_8__** %20, %struct.TYPE_8__*** %6, align 8
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %22 = icmp eq %struct.TYPE_8__** %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* null, i8** %1, align 8
  br label %277

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @hosts, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @HOSTS, align 8
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @HOSTS, align 8
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %40, i64 %43
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 %49
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %50, align 8
  br label %51

51:                                               ; preds = %39, %29
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %2, align 4
  br label %25

55:                                               ; preds = %25
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i8* null, i8** %1, align 8
  br label %277

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @cmp_phost_t, align 4
  %63 = call i32 @qsort(%struct.TYPE_8__** %60, i32 %61, i32 8, i32 %62)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %154, %59
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %156

68:                                               ; preds = %64
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %92, %68
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %76, i64 %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 %83
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @weak_cmp_phost_t(%struct.TYPE_8__* %80, %struct.TYPE_8__* %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %75, %71
  %90 = phi i1 [ false, %71 ], [ %88, %75 ]
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %71

95:                                               ; preds = %89
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %2, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %153

101:                                              ; preds = %95
  %102 = load i32, i32* %2, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %149, %101
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %152

107:                                              ; preds = %103
  %108 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %109, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %123, i64 %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %130, i64 %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %137, i64 %139
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @snprintf(i8* %108, i32 1024, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %122, i32 %129, i32 %136, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %107
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %103

152:                                              ; preds = %103
  br label %153

153:                                              ; preds = %152, %95
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %3, align 4
  store i32 %155, i32* %2, align 4
  br label %64

156:                                              ; preds = %64
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %160, i8** %1, align 8
  br label %277

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i8* @malloc(i32 %164)
  store i8* %165, i8** %10, align 8
  %166 = load i8*, i8** %10, align 8
  store i8* %166, i8** %11, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %171 = call i32 @free(%struct.TYPE_8__** %170)
  store i8* null, i8** %1, align 8
  br label %277

172:                                              ; preds = %161
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %262, %172
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %264

177:                                              ; preds = %173
  %178 = load i32, i32* %2, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %201, %177
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %180
  %185 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %186 = load i32, i32* %2, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %185, i64 %187
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %190, i64 %192
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = call i32 @weak_cmp_phost_t(%struct.TYPE_8__* %189, %struct.TYPE_8__* %194)
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  br label %198

198:                                              ; preds = %184, %180
  %199 = phi i1 [ false, %180 ], [ %197, %184 ]
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %3, align 4
  br label %180

204:                                              ; preds = %198
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* %2, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %261

210:                                              ; preds = %204
  %211 = load i32, i32* %2, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %257, %210
  %213 = load i32, i32* %4, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %260

216:                                              ; preds = %212
  %217 = load i8*, i8** %11, align 8
  %218 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %218, i64 %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %225, i64 %227
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %232, i64 %234
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %239, i64 %241
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %246, i64 %248
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @sprintf(i8* %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %231, i32 %238, i32 %245, i32 %252)
  %254 = load i8*, i8** %11, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %11, align 8
  br label %257

257:                                              ; preds = %216
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %4, align 4
  br label %212

260:                                              ; preds = %212
  br label %261

261:                                              ; preds = %260, %204
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %3, align 4
  store i32 %263, i32* %2, align 4
  br label %173

264:                                              ; preds = %173
  %265 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %266 = call i32 @free(%struct.TYPE_8__** %265)
  %267 = load i8*, i8** %11, align 8
  %268 = load i8*, i8** %10, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 -1
  %273 = icmp eq i8* %267, %272
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = load i8*, i8** %10, align 8
  store i8* %276, i8** %1, align 8
  br label %277

277:                                              ; preds = %264, %169, %159, %58, %23, %17
  %278 = load i8*, i8** %1, align 8
  ret i8* %278
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__** @calloc(i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_8__**, i32, i32, i32) #1

declare dso_local i32 @weak_cmp_phost_t(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__**) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
