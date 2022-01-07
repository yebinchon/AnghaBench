; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_sort_items.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_sort_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i8*, i32, i32 }

@ITEMS_HASH_PRIME = common dso_local global i32 0, align 4
@Items = common dso_local global %struct.item** null, align 8
@FLAG_DELETED = common dso_local global i32 0, align 4
@tot_items = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"found %d items. Deleted %d items.\0A\00", align 1
@del_items = common dso_local global i32 0, align 4
@hash_stats = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i32 0, align 4
@cmp_item_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Group %d (items = %d):\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d_%d\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"There are %d (%.6lf%%) unique hashes and %d items with hashes.\0AMost frequent hash is %llx occurs %d times.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_items() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.item**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %57, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @ITEMS_HASH_PRIME, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.item**, %struct.item*** @Items, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.item*, %struct.item** %19, i64 %21
  %23 = load %struct.item*, %struct.item** %22, align 8
  store %struct.item* %23, %struct.item** %3, align 8
  %24 = load %struct.item*, %struct.item** %3, align 8
  %25 = icmp ne %struct.item* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = load %struct.item*, %struct.item** %3, align 8
  %28 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FLAG_DELETED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.item*, %struct.item** %3, align 8
  %35 = load %struct.item**, %struct.item*** @Items, align 8
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.item*, %struct.item** %35, i64 %38
  store %struct.item* %34, %struct.item** %39, align 8
  br label %55

40:                                               ; preds = %26
  %41 = load %struct.item*, %struct.item** %3, align 8
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.item*, %struct.item** %3, align 8
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %51, %33
  br label %56

56:                                               ; preds = %55, %18
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* @tot_items, align 4
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @tot_items, align 4
  %67 = load i32, i32* @del_items, align 4
  %68 = sitofp i32 %67 to double
  %69 = call i32 (i32, i8*, i32, double, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66, double %68)
  br label %70

70:                                               ; preds = %64, %60
  store i32 0, i32* @del_items, align 4
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @qsort_i(i32 0, i32 %72)
  %74 = load i64, i64* @hash_stats, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %260

76:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @tot_items, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.item**, %struct.item*** @Items, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.item*, %struct.item** %82, i64 %84
  %86 = load %struct.item*, %struct.item** %85, align 8
  %87 = call i64 @get_hash_item(%struct.item* %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %259

100:                                              ; preds = %97
  %101 = load i32, i32* @INT_MIN, align 4
  store i32 %101, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 8, %103
  %105 = trunc i64 %104 to i32
  %106 = call %struct.item** @zzmalloc(i32 %105)
  store %struct.item** %106, %struct.item*** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %107

107:                                              ; preds = %132, %100
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @tot_items, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load %struct.item**, %struct.item*** @Items, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.item*, %struct.item** %112, i64 %114
  %116 = load %struct.item*, %struct.item** %115, align 8
  %117 = call i64 @get_hash_item(%struct.item* %116)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %111
  %121 = load %struct.item**, %struct.item*** @Items, align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.item*, %struct.item** %121, i64 %123
  %125 = load %struct.item*, %struct.item** %124, align 8
  %126 = load %struct.item**, %struct.item*** %8, align 8
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds %struct.item*, %struct.item** %126, i64 %129
  store %struct.item* %125, %struct.item** %130, align 8
  br label %131

131:                                              ; preds = %120, %111
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %1, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %1, align 4
  br label %107

135:                                              ; preds = %107
  %136 = load %struct.item**, %struct.item*** %8, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @cmp_item_hash, align 4
  %139 = call i32 @qsort(%struct.item** %136, i32 %137, i32 8, i32 %138)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %140

140:                                              ; preds = %236, %135
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %238

144:                                              ; preds = %140
  %145 = load %struct.item**, %struct.item*** %8, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.item*, %struct.item** %145, i64 %147
  %149 = load %struct.item*, %struct.item** %148, align 8
  %150 = call i64 @get_hash_item(%struct.item* %149)
  store i64 %150, i64* %11, align 8
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %168, %144
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load %struct.item**, %struct.item*** %8, align 8
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.item*, %struct.item** %158, i64 %160
  %162 = load %struct.item*, %struct.item** %161, align 8
  %163 = call i64 @get_hash_item(%struct.item* %162)
  %164 = load i64, i64* %11, align 8
  %165 = icmp eq i64 %163, %164
  br label %166

166:                                              ; preds = %157, %153
  %167 = phi i1 [ false, %153 ], [ %165, %157 ]
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = load i32, i32* %2, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %2, align 4
  br label %153

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* %1, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load i32, i32* %12, align 4
  store i32 %181, i32* %6, align 4
  %182 = load i64, i64* %11, align 8
  store i64 %182, i64* %7, align 8
  br label %183

183:                                              ; preds = %180, %171
  %184 = load i32, i32* @verbosity, align 4
  %185 = icmp sge i32 %184, 3
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %195, label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* @verbosity, align 4
  %191 = icmp sge i32 %190, 2
  br i1 %191, label %192, label %236

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = icmp sgt i32 %193, 100
  br i1 %194, label %195, label %236

195:                                              ; preds = %192, %186
  %196 = load i32, i32* @stderr, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %12, align 4
  %199 = sitofp i32 %198 to double
  %200 = call i32 (i32, i8*, i32, double, ...) @fprintf(i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %197, double %199)
  %201 = load i32, i32* %1, align 4
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %232, %195
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %2, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %235

206:                                              ; preds = %202
  %207 = load i32, i32* @stderr, align 4
  %208 = load %struct.item**, %struct.item*** %8, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.item*, %struct.item** %208, i64 %210
  %212 = load %struct.item*, %struct.item** %211, align 8
  %213 = getelementptr inbounds %struct.item, %struct.item* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.item**, %struct.item*** %8, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.item*, %struct.item** %215, i64 %217
  %219 = load %struct.item*, %struct.item** %218, align 8
  %220 = getelementptr inbounds %struct.item, %struct.item* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 32
  %223 = sitofp i32 %222 to double
  %224 = load %struct.item**, %struct.item*** %8, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.item*, %struct.item** %224, i64 %226
  %228 = load %struct.item*, %struct.item** %227, align 8
  %229 = getelementptr inbounds %struct.item, %struct.item* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (i32, i8*, i32, double, ...) @fprintf(i32 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %214, double %223, i8* %230)
  br label %232

232:                                              ; preds = %206
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %202

235:                                              ; preds = %202
  br label %236

236:                                              ; preds = %235, %192, %189
  %237 = load i32, i32* %2, align 4
  store i32 %237, i32* %1, align 4
  br label %140

238:                                              ; preds = %140
  %239 = load %struct.item**, %struct.item*** %8, align 8
  %240 = load i32, i32* %4, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 8, %241
  %243 = trunc i64 %242 to i32
  %244 = call i32 @zzfree(%struct.item** %239, i32 %243)
  %245 = load i32, i32* @stderr, align 4
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  %248 = load i32, i32* %10, align 4
  %249 = sitofp i32 %248 to double
  %250 = fadd double %249, 1.000000e+00
  %251 = fmul double %250, 1.000000e+02
  %252 = load i32, i32* %4, align 4
  %253 = sitofp i32 %252 to double
  %254 = fdiv double %251, %253
  %255 = load i32, i32* %4, align 4
  %256 = load i64, i64* %7, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 (i32, i8*, i32, double, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 %247, double %254, i32 %255, i64 %256, i32 %257)
  br label %259

259:                                              ; preds = %238, %97
  br label %260

260:                                              ; preds = %259, %70
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, double, ...) #1

declare dso_local i32 @qsort_i(i32, i32) #1

declare dso_local i64 @get_hash_item(%struct.item*) #1

declare dso_local %struct.item** @zzmalloc(i32) #1

declare dso_local i32 @qsort(%struct.item**, i32, i32, i32) #1

declare dso_local i32 @zzfree(%struct.item**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
