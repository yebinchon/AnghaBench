; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_store_res_group_mode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_store_res_group_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.item = type { i32 }
%struct.item_with_rating = type { double, %struct.item* }

@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@hm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Not enough memory for allocate hash table\0A\00", align 1
@R_tot_undef_hash = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@RR = common dso_local global i64* null, align 8
@RS = common dso_local global i64* null, align 8
@R_tot_groups = common dso_local global i32 0, align 4
@R = common dso_local global %struct.item** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_res_group_mode(%struct.item* %0, double %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.item_with_rating, align 8
  %8 = alloca %struct.item_with_rating*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %3, align 8
  store double %1, double* %4, align 8
  %13 = load i32, i32* @R_tot, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

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
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.item*, %struct.item** %3, align 8
  %31 = call i64 @get_hash_item(%struct.item* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @R_tot_undef_hash, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @R_tot_undef_hash, align 4
  br label %37

37:                                               ; preds = %34, %29
  store %struct.item_with_rating* %7, %struct.item_with_rating** %8, align 8
  %38 = load double, double* %4, align 8
  %39 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %40 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %39, i32 0, i32 0
  store double %38, double* %40, align 8
  %41 = load i32, i32* @R_cnt, align 4
  %42 = load i32, i32* @Q_limit, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %46 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = load i64*, i64** @RR, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = sitofp i64 %50 to double
  %52 = fcmp oge double %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %228

54:                                               ; preds = %44, %37
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 0), align 8
  store i32 %55, i32* %9, align 4
  %56 = load %struct.item*, %struct.item** %3, align 8
  %57 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %58 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %57, i32 0, i32 1
  store %struct.item* %56, %struct.item** %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @hashmap_ll_int_get(%struct.TYPE_6__* @hm, i64 %62, i32* %9)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %112

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %101

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @R_cnt, align 4
  %80 = icmp sle i32 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %86 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = load i64*, i64** @RR, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sitofp i64 %92 to double
  %94 = fcmp olt double %87, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @heapify_front(%struct.item_with_rating* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %81
  br label %111

101:                                              ; preds = %65
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %103 = load i64*, i64** @RS, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  %108 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @heapify_front(%struct.item_with_rating* %108, i32 1, i32 %109)
  br label %111

111:                                              ; preds = %101, %100
  br label %228

112:                                              ; preds = %61, %54
  %113 = load i32, i32* @R_tot_groups, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @R_tot_groups, align 4
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %112
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 2), align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = call i32 (...) @rebuild_hashmap()
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @hashmap_ll_int_get(%struct.TYPE_6__* @hm, i64 %123, i32* %9)
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 1), align 8
  %128 = load i64, i64* %6, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i64 %128, i64* %133, align 8
  br label %134

134:                                              ; preds = %125, %112
  %135 = load i32, i32* @R_cnt, align 4
  %136 = load i32, i32* @Q_limit, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %140 = load i64*, i64** @RS, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 8
  %145 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @heapify_front(%struct.item_with_rating* %145, i32 1, i32 %146)
  br label %227

148:                                              ; preds = %134
  %149 = load i32, i32* @R_cnt, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @R_cnt, align 4
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %168, %148
  %152 = load i32, i32* %11, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %201

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = ashr i32 %155, 1
  store i32 %156, i32* %12, align 4
  %157 = load i64*, i64** @RR, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = sitofp i64 %161 to double
  %163 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %164 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fcmp oge double %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %201

168:                                              ; preds = %154
  %169 = load %struct.item**, %struct.item*** @R, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.item*, %struct.item** %169, i64 %171
  %173 = load %struct.item*, %struct.item** %172, align 8
  %174 = load %struct.item**, %struct.item*** @R, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.item*, %struct.item** %174, i64 %176
  store %struct.item* %173, %struct.item** %177, align 8
  %178 = load i64*, i64** @RR, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** @RR, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 %182, i64* %186, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %189 = load i64*, i64** @RS, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64*, i64** @RS, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  store i64 %193, i64* %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %193
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i32 %187, i32* %199, align 8
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %11, align 4
  br label %151

201:                                              ; preds = %167, %151
  %202 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %203 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %202, i32 0, i32 1
  %204 = load %struct.item*, %struct.item** %203, align 8
  %205 = load %struct.item**, %struct.item*** @R, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.item*, %struct.item** %205, i64 %207
  store %struct.item* %204, %struct.item** %208, align 8
  %209 = load %struct.item_with_rating*, %struct.item_with_rating** %8, align 8
  %210 = getelementptr inbounds %struct.item_with_rating, %struct.item_with_rating* %209, i32 0, i32 0
  %211 = load double, double* %210, align 8
  %212 = fptosi double %211 to i64
  %213 = load i64*, i64** @RR, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  store i64 %212, i64* %216, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hm, i32 0, i32 3), align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64*, i64** @RS, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  store i64 %220, i64* %224, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  store i32 %217, i32* %226, align 8
  br label %227

227:                                              ; preds = %201, %138
  br label %228

228:                                              ; preds = %53, %227, %111
  ret void
}

declare dso_local i32 @hashmap_ll_int_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @kprintf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @get_hash_item(%struct.item*) #1

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
