; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_ad_pricing.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_perform_ad_pricing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i64, i32* }

@R_cnt = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@R = common dso_local global i32* null, align 8
@heap_push_user_ad_ext = common dso_local global i32 0, align 4
@heap_push_user_ad_std = common dso_local global i32 0, align 4
@heap_push_user_ad = common dso_local global i32 0, align 4
@__use_factor = common dso_local global i32 0, align 4
@__use_views_limit = common dso_local global i64 0, align 8
@__exclude_ad_id = common dso_local global i32 0, align 4
@ADF_SITES_MASK_SHIFT = common dso_local global i32 0, align 4
@__and_mask = common dso_local global i32 0, align 4
@__xor_mask = common dso_local global i32 0, align 4
@__cat_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_ad_pricing(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.advert*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* @R_cnt, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 100
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  %32 = icmp sgt i32 %31, 1000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27, %24, %21, %6
  store i32 -1, i32* %7, align 4
  br label %161

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.advert* @get_ad_f(i32 %35, i32 0)
  store %struct.advert* %36, %struct.advert** %14, align 8
  %37 = load %struct.advert*, %struct.advert** %14, align 8
  %38 = icmp ne %struct.advert* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.advert*, %struct.advert** %14, align 8
  %41 = getelementptr inbounds %struct.advert, %struct.advert* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  store i32 -1, i32* %7, align 4
  br label %161

45:                                               ; preds = %39
  %46 = load i32, i32* @Q_limit, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1000, i32* @Q_limit, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* @Q_limit, align 4
  %51 = icmp sgt i32 %50, 10000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 10000, i32* @Q_limit, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32*, i32** @R, align 8
  %55 = load i32, i32* @Q_limit, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %54, i32 0, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @heap_push_user_ad_ext, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @heap_push_user_ad_std, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* @heap_push_user_ad, align 4
  store i32 1, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* @__exclude_ad_id, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %73 = shl i32 %71, %72
  store i32 %73, i32* @__and_mask, align 4
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 255
  %76 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* @__xor_mask, align 4
  store i64 -1, i64* @__cat_mask, align 8
  %78 = load %struct.advert*, %struct.advert** %14, align 8
  %79 = getelementptr inbounds %struct.advert, %struct.advert* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %16, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %67
  %86 = load i64, i64* %16, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %85, %67
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %91

91:                                               ; preds = %135, %88
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.advert*, %struct.advert** %14, align 8
  %94 = getelementptr inbounds %struct.advert, %struct.advert* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %91
  %98 = call i64 (...) @lrand48()
  %99 = load i64, i64* %16, align 8
  %100 = srem i64 %98, %99
  %101 = load i64, i64* %17, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %97
  %104 = load i64, i64* %17, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %17, align 8
  %106 = load %struct.advert*, %struct.advert** %14, align 8
  %107 = getelementptr inbounds %struct.advert, %struct.advert* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %15, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @user_ad_price(i32 %111, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* @Q_limit, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %103
  %118 = load i32, i32* @Q_limit, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %125

120:                                              ; preds = %103
  %121 = load i32, i32* %18, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %18, align 4
  br label %124

124:                                              ; preds = %123, %120
  br label %125

125:                                              ; preds = %124, %117
  %126 = load i32*, i32** @R, align 8
  %127 = load i32, i32* %18, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %97
  %133 = load i64, i64* %16, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %16, align 8
  br label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %15, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %15, align 8
  br label %91

138:                                              ; preds = %91
  store i32 0, i32* @__use_factor, align 4
  store i64 0, i64* @__use_views_limit, align 8
  store i32 0, i32* @__exclude_ad_id, align 4
  %139 = load i32, i32* @ADF_SITES_MASK_SHIFT, align 4
  %140 = shl i32 254, %139
  store i32 %140, i32* @__and_mask, align 4
  store i32 0, i32* @__xor_mask, align 4
  %141 = load i32, i32* @Q_limit, align 4
  store i32 %141, i32* @R_cnt, align 4
  br label %142

142:                                              ; preds = %156, %138
  %143 = load i32, i32* @R_cnt, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load i32*, i32** @R, align 8
  %147 = load i32, i32* @R_cnt, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %145, %142
  %155 = phi i1 [ false, %142 ], [ %153, %145 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i32, i32* @R_cnt, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* @R_cnt, align 4
  br label %142

159:                                              ; preds = %154
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %159, %44, %33
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @lrand48(...) #1

declare dso_local i32 @user_ad_price(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
