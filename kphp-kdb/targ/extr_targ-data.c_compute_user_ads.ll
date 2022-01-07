; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_user_ads.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_user_ads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, double }
%struct.TYPE_3__ = type { i32 }

@MAX_USERS = common dso_local global i32 0, align 4
@heap_push_user_ad_ext = common dso_local global i32 0, align 4
@heap_push_user_ad_std = common dso_local global i32 0, align 4
@heap_push_user_ad = common dso_local global i32 0, align 4
@__use_factor = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i32 0, align 4
@__exclude_ad_id = common dso_local global i64 0, align 8
@ADF_SITES_MASK_SHIFT = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@__cat_mask = common dso_local global i64 0, align 8
@HN = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@H = common dso_local global %struct.TYPE_4__* null, align 8
@EXPECTED_GAIN_USERADS_MULTIPLIER = common dso_local global double 0.000000e+00, align 8
@R_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_user_ads(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32* @get_user(i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %6
  store i32 -1, i32* %7, align 4
  br label %187

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAX_USERS, align 4
  %30 = ashr i32 %29, 2
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @MAX_USERS, align 4
  %34 = ashr i32 %33, 2
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @heap_push_user_ad_ext, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @heap_push_user_ad_std, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* @heap_push_user_ad, align 4
  store i32 1, i32* @__use_factor, align 4
  store i32 1, i32* @__use_views_limit, align 4
  store i64 0, i64* @__exclude_ad_id, align 8
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* @__and_mask, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 255
  %60 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %61 = shl i32 %59, %60
  store i32 %61, i32* @__xor_mask, align 4
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* @__cat_mask, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @build_user_ad_heap(i32* %63, i32 %64)
  store i32 0, i32* @__use_factor, align 4
  store i32 0, i32* @__use_views_limit, align 4
  %66 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %67 = shl i32 254, %66
  store i32 %67, i32* @__and_mask, align 4
  store i32 0, i32* @__xor_mask, align 4
  store i64 -1, i64* @__cat_mask, align 8
  %68 = load i32, i32* @HN, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %52
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %72, %73
  br label %75

75:                                               ; preds = %71, %52
  %76 = phi i1 [ false, %52 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 7
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %168

82:                                               ; preds = %75
  %83 = load i32*, i32** @R, align 8
  %84 = load i32, i32* @HN, align 4
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 1
  %87 = add nsw i32 1, %86
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 1
  %90 = and i32 %89, 1
  %91 = add nsw i32 %87, %90
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 1
  %95 = add nsw i32 %91, %94
  %96 = mul nsw i32 %84, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %83, i64 %97
  store i32* %98, i32** %16, align 8
  br label %99

99:                                               ; preds = %156, %82
  %100 = load i32, i32* @HN, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %162

102:                                              ; preds = %99
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %17, align 8
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %16, align 8
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %102
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 2
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i64, i64* %17, align 8
  %123 = call %struct.TYPE_3__* @get_ad(i64 %122)
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 -1
  store i32* %127, i32** %16, align 8
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %117
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %156

132:                                              ; preds = %128
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load double, double* %135, align 8
  %137 = load double, double* @EXPECTED_GAIN_USERADS_MULTIPLIER, align 8
  %138 = fmul double %136, %137
  store double %138, double* %18, align 8
  %139 = load double, double* %18, align 8
  %140 = fcmp olt double %139, 0.000000e+00
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %151

142:                                              ; preds = %132
  %143 = load double, double* %18, align 8
  %144 = fcmp ogt double %143, 2.000000e+09
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %149

146:                                              ; preds = %142
  %147 = load double, double* %18, align 8
  %148 = fadd double %147, 5.000000e-01
  br label %149

149:                                              ; preds = %146, %145
  %150 = phi double [ 2.000000e+09, %145 ], [ %148, %146 ]
  br label %151

151:                                              ; preds = %149, %141
  %152 = phi double [ 0.000000e+00, %141 ], [ %150, %149 ]
  %153 = fptosi double %152 to i32
  %154 = load i32*, i32** %16, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 -1
  store i32* %155, i32** %16, align 8
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %151, %128
  %157 = load i64, i64* %17, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %16, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 -1
  store i32* %160, i32** %16, align 8
  store i32 %158, i32* %160, align 4
  %161 = call i32 (...) @heap_pop()
  br label %99

162:                                              ; preds = %99
  %163 = load i32*, i32** %16, align 8
  %164 = load i32*, i32** @R, align 8
  %165 = icmp eq i32* %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  br label %185

168:                                              ; preds = %75
  br label %169

169:                                              ; preds = %172, %168
  %170 = load i32, i32* @HN, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @H, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i32*, i32** @R, align 8
  %179 = load i32, i32* @HN, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = call i32 (...) @heap_pop()
  br label %169

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %162
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* @R_cnt, align 4
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %185, %26
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @build_user_ad_heap(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @get_ad(i64) #1

declare dso_local i32 @heap_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
