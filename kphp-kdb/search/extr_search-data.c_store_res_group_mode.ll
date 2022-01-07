; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_store_res_group_mode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_store_res_group_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.item_with_rating = type { i32, i32* }

@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@hm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Not enough memory for allocate hash table\0A\00", align 1
@R_tot_undef_hash = common dso_local global i32 0, align 4
@order = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@RV = common dso_local global i64* null, align 8
@RS = common dso_local global i64* null, align 8
@R_tot_groups = common dso_local global i32 0, align 4
@R = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_res_group_mode(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.item_with_rating, align 8
  %8 = alloca %struct.item_with_rating*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @R_tot, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @Q_limit, align 4
  %17 = mul nsw i32 2, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 600
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 600, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @hashmap_ll_int_init(%struct.TYPE_6__* @hm, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @exit(i32 2) #3
  unreachable

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @extract_hash_item(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @R_tot_undef_hash, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @R_tot_undef_hash, align 4
  br label %38

38:                                               ; preds = %35, %30
  store %struct.item_with_rating* %7, %struct.item_with_rating** %8, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @evaluate_rating(i32* %39, i32 %40)
  %42 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %43 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @order, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %48 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = sub nsw i32 0, %50
  %52 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %53 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* @R_cnt, align 4
  %56 = load i32, i32* @Q_limit, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %60 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** @RV, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %242

68:                                               ; preds = %58, %54
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 0), align 8
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %72 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %68
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @hashmap_ll_int_get(%struct.TYPE_6__* @hm, i64 %76, i32* %9)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %75
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %115

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %89, 1
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @R_cnt, align 4
  %94 = icmp sle i32 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %100 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** @RV, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp slt i64 %102, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %95
  %110 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @heapify_front(%struct.item_with_rating* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %95
  br label %125

115:                                              ; preds = %79
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %117 = load i64*, i64** @RS, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 -1, i32* %121, align 8
  %122 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @heapify_front(%struct.item_with_rating* %122, i32 1, i32 %123)
  br label %125

125:                                              ; preds = %115, %114
  br label %242

126:                                              ; preds = %75, %68
  %127 = load i32, i32* @R_tot_groups, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @R_tot_groups, align 4
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 2), align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = call i32 (...) @rebuild_hashmap()
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @hashmap_ll_int_get(%struct.TYPE_6__* @hm, i64 %137, i32* %9)
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i64 %142, i64* %147, align 8
  br label %148

148:                                              ; preds = %139, %126
  %149 = load i32, i32* @R_cnt, align 4
  %150 = load i32, i32* @Q_limit, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %154 = load i64*, i64** @RS, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 -1, i32* %158, align 8
  %159 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @heapify_front(%struct.item_with_rating* %159, i32 1, i32 %160)
  br label %241

162:                                              ; preds = %148
  %163 = load i32, i32* @R_cnt, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* @R_cnt, align 4
  store i32 %164, i32* %11, align 4
  br label %165

165:                                              ; preds = %182, %162
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %215

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = load i64*, i64** @RV, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %177 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = icmp sge i64 %175, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %215

182:                                              ; preds = %168
  %183 = load i32**, i32*** @R, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32**, i32*** @R, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  store i32* %187, i32** %191, align 8
  %192 = load i64*, i64** @RV, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** @RV, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %196, i64* %200, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %203 = load i64*, i64** @RS, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** @RS, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  store i64 %207, i64* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %207
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 %201, i32* %213, align 8
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %11, align 4
  br label %165

215:                                              ; preds = %181, %165
  %216 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %217 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32**, i32*** @R, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  store i32* %218, i32** %222, align 8
  %223 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %224 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = load i64*, i64** @RV, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  store i64 %226, i64* %230, align 8
  %231 = load i32, i32* %11, align 4
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64*, i64** @RS, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 %234, i64* %238, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  store i32 %231, i32* %240, align 8
  br label %241

241:                                              ; preds = %215, %152
  br label %242

242:                                              ; preds = %67, %241, %125
  ret void
}

declare dso_local i32 @hashmap_ll_int_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @extract_hash_item(i32*) #1

declare dso_local i32 @evaluate_rating(i32*, i32) #1

declare dso_local i64 @hashmap_ll_int_get(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @heapify_front(%struct.item_with_rating*, i32, i32) #1

declare dso_local i32 @rebuild_hashmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
