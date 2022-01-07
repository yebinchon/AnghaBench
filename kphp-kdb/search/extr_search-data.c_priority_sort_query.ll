; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_priority_sort_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_priority_sort_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"priority_sort_query\0A\00", align 1
@Q_order = common dso_local global i32 0, align 4
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@Q_skip_mismatch_words_if_complete_case_found = common dso_local global i32 0, align 4
@HC = common dso_local global i32 0, align 4
@Q_words = common dso_local global i32 0, align 4
@QT = common dso_local global i64* null, align 8
@IHE = common dso_local global i64 0, align 8
@QW = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"HC = %d, tags = %d, Q_words = %d\0A\00", align 1
@MAX_MISMATCHED_WORDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"min_priority = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"item_id = %lld\0A\00", align 1
@H = common dso_local global %struct.TYPE_7__** null, align 8
@Q_min_priority = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @priority_sort_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @priority_sort_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @Q_order, align 4
  %13 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* @Q_skip_mismatch_words_if_complete_case_found, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* @HC, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %64, %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @Q_words, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i64*, i64** @QT, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i64, i64* @IHE, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32*, i32** @QW, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64*, i64** @QT, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @ihe_init(i64 %35, i32 %40, i64 %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %22
  %49 = load i64, i64* @IHE, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @iheap_insert(i64 %52)
  br label %63

54:                                               ; preds = %22
  %55 = load i64*, i64** @QT, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %251

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %18

67:                                               ; preds = %18
  %68 = load i32, i32* @HC, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @Q_words, align 4
  %71 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @HC, align 4
  %73 = load i32, i32* @MAX_MISMATCHED_WORDS, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @Q_words, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %251

78:                                               ; preds = %67
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %79 = load i32, i32* @Q_words, align 4
  %80 = load i32, i32* @MAX_MISMATCHED_WORDS, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %78
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @Q_words, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %89, %85
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %202, %96
  %100 = load i32, i32* @HC, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %208

102:                                              ; preds = %99
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %103, i64 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %111, i64 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = call i32 @assert(%struct.TYPE_6__* %115)
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %117, i64 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = icmp ne %struct.TYPE_6__* %121, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %102
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = icmp ne %struct.TYPE_6__* %125, null
  br i1 %126, label %127, label %167

127:                                              ; preds = %124
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %167

131:                                              ; preds = %127
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %167

135:                                              ; preds = %131
  %136 = load i32, i32* @Q_min_priority, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* %3, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %138, %135
  %143 = load i32, i32* @Q_words, align 4
  %144 = load i32, i32* %2, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sub nsw i32 6, %145
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @Q_words, align 4
  %148 = load i32, i32* %2, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %142
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* %3, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sub nsw i32 3, %153
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %157, %150
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %158, %142
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @priority_sort_store_res(%struct.TYPE_6__* %163, i32 %164, i32* %1)
  br label %166

166:                                              ; preds = %162, %138
  br label %167

167:                                              ; preds = %166, %131, %127, %124
  %168 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %168, i64 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %7, align 8
  store i32 1, i32* %2, align 4
  %173 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %173, i64 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 1
  store i32 %178, i32* %3, align 4
  %179 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %179, i64 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %4, align 4
  br label %202

184:                                              ; preds = %102
  %185 = load i32, i32* %2, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %2, align 4
  %187 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %187, i64 1
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, 1
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %3, align 4
  %195 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %195, i64 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %184, %167
  %203 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %203, i64 1
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = call i32 @ihe_advance(%struct.TYPE_7__* %205)
  %207 = call i32 (...) @iheap_pop()
  br label %99

208:                                              ; preds = %99
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = icmp ne %struct.TYPE_6__* %209, null
  br i1 %210, label %211, label %251

211:                                              ; preds = %208
  %212 = load i32, i32* %2, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %251

215:                                              ; preds = %211
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %251

219:                                              ; preds = %215
  %220 = load i32, i32* @Q_min_priority, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32, i32* %2, align 4
  %224 = load i32, i32* %3, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %250

226:                                              ; preds = %222, %219
  %227 = load i32, i32* @Q_words, align 4
  %228 = load i32, i32* %2, align 4
  %229 = sub nsw i32 %227, %228
  %230 = sub nsw i32 6, %229
  store i32 %230, i32* %5, align 4
  %231 = load i32, i32* @Q_words, align 4
  %232 = load i32, i32* %2, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %226
  %235 = load i32, i32* %2, align 4
  %236 = load i32, i32* %3, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sub nsw i32 3, %237
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store i32 0, i32* %10, align 4
  br label %242

242:                                              ; preds = %241, %234
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %242, %226
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @priority_sort_store_res(%struct.TYPE_6__* %247, i32 %248, i32* %1)
  br label %250

250:                                              ; preds = %246, %222
  br label %251

251:                                              ; preds = %61, %77, %250, %215, %211, %208
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @ihe_init(i64, i32, i64, i32) #1

declare dso_local i32 @iheap_insert(i64) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @priority_sort_store_res(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_7__*) #1

declare dso_local i32 @iheap_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
