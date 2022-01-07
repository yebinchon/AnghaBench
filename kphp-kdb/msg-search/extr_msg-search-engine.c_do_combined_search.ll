; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_combined_search.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_do_combined_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

@ResL = common dso_local global i32 0, align 4
@UH = common dso_local global %struct.TYPE_4__* null, align 8
@ResBuff = common dso_local global i32* null, align 8
@MAX_INTERMEDIATE_SIZE = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"recent_search(): %d messages found\0A\00", align 1
@ResR = common dso_local global i32 0, align 4
@cur_user = common dso_local global i64 0, align 8
@Res = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"user has %d deleted messages %d %d %d ..., pruning\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"pruned: resulting list contains %d, original %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_combined_search() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 -2147483647, i32* %5, align 4
  store i32 2147483647, i32* %6, align 4
  store i32 0, i32* @ResL, align 4
  %12 = call i32 (...) @prefetch_search_lists()
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %95

15:                                               ; preds = %0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %2, align 8
  br label %19

19:                                               ; preds = %77, %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %27, %22
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %42, %37
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @search_in_msg(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** @ResBuff, align 8
  %66 = load i32, i32* @ResL, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @ResL, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @ResL, align 4
  %71 = load i32, i32* @MAX_INTERMEDIATE_SIZE, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @ResL, align 4
  store i32 %74, i32* %1, align 4
  br label %246

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %52
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %2, align 8
  br label %19

81:                                               ; preds = %19
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %4, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  %88 = load i64, i64* @verbosity, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* @ResL, align 4
  %93 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %81
  br label %95

95:                                               ; preds = %94, %0
  %96 = load i32, i32* @ResL, align 4
  store i32 %96, i32* @ResR, align 4
  store i32 0, i32* @ResL, align 4
  %97 = load i64, i64* @cur_user, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @do_search(i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* @ResR, align 4
  %107 = load i32, i32* @ResL, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* @ResL, align 4
  %109 = load i32*, i32** @ResBuff, align 8
  store i32* %109, i32** @Res, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %112, label %244

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %244

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = getelementptr inbounds i32, i32* %126, i64 -1
  store i32* %127, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %128 = load i64, i64* @verbosity, align 8
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %117
  %131 = load i32, i32* @stderr, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UH, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %137, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %130, %117
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @assert(i32* %146)
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %231, %145
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @ResL, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %234

152:                                              ; preds = %148
  %153 = load i32*, i32** @ResBuff, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %195

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %172, %160
  %162 = load i32*, i32** %7, align 8
  %163 = load i32*, i32** %8, align 8
  %164 = icmp ule i32* %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load i32*, i32** %7, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %167, %168
  br label %170

170:                                              ; preds = %165, %161
  %171 = phi i1 [ false, %161 ], [ %169, %165 ]
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %7, align 8
  br label %161

175:                                              ; preds = %170
  %176 = load i32*, i32** %7, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = icmp ule i32* %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %7, align 8
  br label %194

187:                                              ; preds = %179, %175
  %188 = load i32, i32* %11, align 4
  %189 = load i32*, i32** @ResBuff, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %188, i32* %193, align 4
  br label %194

194:                                              ; preds = %187, %184
  br label %230

195:                                              ; preds = %152
  br label %196

196:                                              ; preds = %207, %195
  %197 = load i32*, i32** %7, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = icmp ule i32* %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp sgt i32 %202, %203
  br label %205

205:                                              ; preds = %200, %196
  %206 = phi i1 [ false, %196 ], [ %204, %200 ]
  br i1 %206, label %207, label %210

207:                                              ; preds = %205
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 -1
  store i32* %209, i32** %8, align 8
  br label %196

210:                                              ; preds = %205
  %211 = load i32*, i32** %7, align 8
  %212 = load i32*, i32** %8, align 8
  %213 = icmp ule i32* %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = load i32*, i32** %8, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32*, i32** %8, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 -1
  store i32* %221, i32** %8, align 8
  br label %229

222:                                              ; preds = %214, %210
  %223 = load i32, i32* %11, align 4
  %224 = load i32*, i32** @ResBuff, align 8
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32 %223, i32* %228, align 4
  br label %229

229:                                              ; preds = %222, %219
  br label %230

230:                                              ; preds = %229, %194
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %148

234:                                              ; preds = %148
  %235 = load i64, i64* @verbosity, align 8
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i32, i32* @stderr, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @ResL, align 4
  %241 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %234
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* @ResL, align 4
  br label %244

244:                                              ; preds = %242, %112, %105
  %245 = load i32, i32* @ResL, align 4
  store i32 %245, i32* %1, align 4
  br label %246

246:                                              ; preds = %244, %73
  %247 = load i32, i32* %1, align 4
  ret i32 %247
}

declare dso_local i32 @prefetch_search_lists(...) #1

declare dso_local i64 @search_in_msg(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @do_search(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
