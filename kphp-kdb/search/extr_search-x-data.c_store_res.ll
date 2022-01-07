; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_store_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_store_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.item = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"store_res (item_id = %lld, w = %.10lf\0A\00", align 1
@n_ranges = common dso_local global i32 0, align 4
@Q_range = common dso_local global %struct.TYPE_2__* null, align 8
@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i64 0, align 8
@Q_hash_group_mode = common dso_local global i64 0, align 8
@R_cnt = common dso_local global i64 0, align 8
@RR = common dso_local global double* null, align 8
@R = common dso_local global %struct.item** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_res(%struct.item* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.item*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store double %1, double* %5, align 8
  %10 = load %struct.item*, %struct.item** %4, align 8
  %11 = getelementptr inbounds %struct.item, %struct.item* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load double, double* %5, align 8
  %14 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %12, double %13)
  %15 = load double, double* %5, align 8
  %16 = fcmp olt double %15, 1.000000e-09
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %202

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @n_ranges, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.item*, %struct.item** %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_rate_item_fast(%struct.item* %24, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %23
  store i32 1, i32* %3, align 4
  br label %202

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %19

54:                                               ; preds = %19
  %55 = load i32, i32* @R_tot, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @R_tot, align 4
  %57 = load i64, i64* @Q_limit, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %202

60:                                               ; preds = %54
  %61 = load %struct.item*, %struct.item** %4, align 8
  %62 = load double, double* %5, align 8
  %63 = call double @evaluate_rating(%struct.item* %61, double %62)
  store double %63, double* %9, align 8
  %64 = load i64, i64* @Q_hash_group_mode, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.item*, %struct.item** %4, align 8
  %68 = load double, double* %9, align 8
  %69 = call i32 @store_res_group_mode(%struct.item* %67, double %68)
  store i32 1, i32* %3, align 4
  br label %202

70:                                               ; preds = %60
  %71 = load i64, i64* @R_cnt, align 8
  %72 = load i64, i64* @Q_limit, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %152

74:                                               ; preds = %70
  %75 = load double*, double** @RR, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  %77 = load double, double* %76, align 8
  %78 = load double, double* %9, align 8
  %79 = fcmp ole double %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %202

81:                                               ; preds = %74
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %121
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 %83, 2
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @R_cnt, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %141

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @R_cnt, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load double*, double** @RR, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = load double*, double** @RR, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = fcmp ogt double %101, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %95
  br label %112

112:                                              ; preds = %111, %90
  %113 = load double*, double** @RR, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double, double* %9, align 8
  %119 = fcmp ole double %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %141

121:                                              ; preds = %112
  %122 = load %struct.item**, %struct.item*** @R, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.item*, %struct.item** %122, i64 %124
  %126 = load %struct.item*, %struct.item** %125, align 8
  %127 = load %struct.item**, %struct.item*** @R, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.item*, %struct.item** %127, i64 %129
  store %struct.item* %126, %struct.item** %130, align 8
  %131 = load double*, double** @RR, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %131, i64 %133
  %135 = load double, double* %134, align 8
  %136 = load double*, double** @RR, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, double* %136, i64 %138
  store double %135, double* %139, align 8
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %6, align 4
  br label %82

141:                                              ; preds = %120, %89
  %142 = load %struct.item*, %struct.item** %4, align 8
  %143 = load %struct.item**, %struct.item*** @R, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.item*, %struct.item** %143, i64 %145
  store %struct.item* %142, %struct.item** %146, align 8
  %147 = load double, double* %9, align 8
  %148 = load double*, double** @RR, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  store double %147, double* %151, align 8
  br label %201

152:                                              ; preds = %70
  %153 = load i64, i64* @R_cnt, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* @R_cnt, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %170, %152
  %157 = load i32, i32* %6, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %190

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %7, align 4
  %162 = load double*, double** @RR, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load double, double* %9, align 8
  %168 = fcmp oge double %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %190

170:                                              ; preds = %159
  %171 = load %struct.item**, %struct.item*** @R, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.item*, %struct.item** %171, i64 %173
  %175 = load %struct.item*, %struct.item** %174, align 8
  %176 = load %struct.item**, %struct.item*** @R, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.item*, %struct.item** %176, i64 %178
  store %struct.item* %175, %struct.item** %179, align 8
  %180 = load double*, double** @RR, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %180, i64 %182
  %184 = load double, double* %183, align 8
  %185 = load double*, double** @RR, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  store double %184, double* %188, align 8
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %6, align 4
  br label %156

190:                                              ; preds = %169, %156
  %191 = load %struct.item*, %struct.item** %4, align 8
  %192 = load %struct.item**, %struct.item*** @R, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.item*, %struct.item** %192, i64 %194
  store %struct.item* %191, %struct.item** %195, align 8
  %196 = load double, double* %9, align 8
  %197 = load double*, double** @RR, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, double* %197, i64 %199
  store double %196, double* %200, align 8
  br label %201

201:                                              ; preds = %190, %141
  store i32 1, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %80, %66, %59, %49, %17
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @vkprintf(i32, i8*, i32, double) #1

declare dso_local i32 @get_rate_item_fast(%struct.item*, i32) #1

declare dso_local double @evaluate_rating(%struct.item*, double) #1

declare dso_local i32 @store_res_group_mode(%struct.item*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
