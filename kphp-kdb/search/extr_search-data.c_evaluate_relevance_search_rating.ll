; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_evaluate_relevance_search_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_evaluate_relevance_search_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double, double (%struct.TYPE_10__*, %struct.TYPE_11__*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@query_rate_weights = common dso_local global i32 0, align 4
@QRW = common dso_local global %struct.TYPE_11__* null, align 8
@QRP = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@QRT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@QRT_min_creation_time = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"evaluate_searchx_rating: r = %.lg\0A\00", align 1
@Q_optional_tags = common dso_local global i64 0, align 8
@Q_K_Opt_Tag = common dso_local global double 0.000000e+00, align 8
@optional_tags_mult_coeff = common dso_local global double 0.000000e+00, align 8
@Q_relevance = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"item_id = %lld, in title = %d, whole = %d\0A\00", align 1
@Q_order = common dso_local global i32 0, align 4
@FLAG_ONLY_TITLE_SEARCH = common dso_local global i32 0, align 4
@RELEVANCE_TABLE_SIZE = common dso_local global i32 0, align 4
@tbl_relevance = common dso_local global double* null, align 8
@Q_Relevance_Power = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"item_id = %lld, r = %.10lf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @evaluate_relevance_search_rating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_relevance_search_rating(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @query_rate_weights, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store double 5.000000e-01, double* %7, align 8
  br label %43

14:                                               ; preds = %2
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %37, %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @QRW, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @QRW, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load double (%struct.TYPE_10__*, %struct.TYPE_11__*)*, double (%struct.TYPE_10__*, %struct.TYPE_11__*)** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @QRW, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %31
  %33 = call double %27(%struct.TYPE_10__* %28, %struct.TYPE_11__* %32)
  %34 = fmul double %21, %33
  %35 = load double, double* %7, align 8
  %36 = fadd double %35, %34
  store double %36, double* %7, align 8
  br label %37

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @query_rate_weights, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %15, label %42

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @QRP, i32 0, i32 1), align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @QRP, i32 0, i32 0), align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sitofp i32 %49 to double
  %51 = load double, double* %7, align 8
  %52 = fadd double %51, %50
  store double %52, double* %7, align 8
  br label %53

53:                                               ; preds = %46, %43
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @QRT, i32 0, i32 0), align 4
  %55 = and i32 %54, -16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @QRT, i32 0, i32 0), align 4
  %60 = call i8* @get_rate_item_fast(%struct.TYPE_10__* %58, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @QRT_min_creation_time, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %175

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @now, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @QRT, i32 0, i32 1), align 4
  %72 = load i32, i32* @now, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = mul nsw i32 %71, %74
  %76 = call double @exp(i32 %75)
  %77 = load double, double* %7, align 8
  %78 = fmul double %77, %76
  store double %78, double* %7, align 8
  br label %79

79:                                               ; preds = %70, %66
  br label %80

80:                                               ; preds = %79, %53
  %81 = load double, double* %7, align 8
  %82 = fcmp olt double %81, 0.000000e+00
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load double, double* %7, align 8
  %85 = call i32 (i32, i8*, double, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %84)
  store i32 0, i32* %3, align 4
  br label %175

86:                                               ; preds = %80
  %87 = load double, double* %7, align 8
  %88 = fcmp ogt double %87, 1.000000e+00
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load double, double* %7, align 8
  %91 = call i32 (i32, i8*, double, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %90)
  store i32 2147483647, i32* %3, align 4
  br label %175

92:                                               ; preds = %86
  %93 = load i64, i64* @Q_optional_tags, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load double, double* @Q_K_Opt_Tag, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = call double @item_count_optional_tags_sum(%struct.TYPE_10__* %97)
  %99 = fmul double %96, %98
  %100 = fadd double 1.000000e+00, %99
  %101 = load double, double* @optional_tags_mult_coeff, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %7, align 8
  %104 = fmul double %103, %102
  store double %104, double* %7, align 8
  br label %105

105:                                              ; preds = %95, %92
  %106 = load i64, i64* @Q_relevance, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %165

108:                                              ; preds = %105
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = call i8* @get_rate_item_fast(%struct.TYPE_10__* %109, i32 13)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to double
  %116 = load i32, i32* %9, align 4
  %117 = lshr i32 %116, 16
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 65535
  %120 = call i32 (i32, i8*, double, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), double %115, i32 %117, i32 %119)
  %121 = load i32, i32* @Q_order, align 4
  %122 = load i32, i32* @FLAG_ONLY_TITLE_SEARCH, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load i32, i32* %9, align 4
  %127 = lshr i32 %126, 16
  br label %131

128:                                              ; preds = %108
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, 65535
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i32 [ %127, %125 ], [ %130, %128 ]
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @RELEVANCE_TABLE_SIZE, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @RELEVANCE_TABLE_SIZE, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %138, %131
  %142 = load double*, double** @tbl_relevance, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %142, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fcmp olt double %146, -5.000000e-01
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @Q_Relevance_Power, align 4
  %151 = call double @pow(i32 %149, i32 %150)
  %152 = fdiv double 1.000000e+00, %151
  %153 = load double*, double** @tbl_relevance, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  store double %152, double* %156, align 8
  br label %157

157:                                              ; preds = %148, %141
  %158 = load double*, double** @tbl_relevance, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %158, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load double, double* %7, align 8
  %164 = fmul double %163, %162
  store double %164, double* %7, align 8
  br label %165

165:                                              ; preds = %157, %105
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sitofp i32 %168 to double
  %170 = load double, double* %7, align 8
  %171 = call i32 (i32, i8*, double, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), double %169, double %170)
  %172 = load double, double* %7, align 8
  %173 = fmul double %172, 0x41DFFFFFFFC00000
  %174 = fptosi double %173 to i32
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %165, %89, %83, %65
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i8* @get_rate_item_fast(%struct.TYPE_10__*, i32) #1

declare dso_local double @exp(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, double, ...) #1

declare dso_local double @item_count_optional_tags_sum(%struct.TYPE_10__*) #1

declare dso_local double @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
