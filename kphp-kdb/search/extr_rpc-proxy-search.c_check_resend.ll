; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_check_resend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_check_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i32, %struct.TYPE_2__*, %struct.search_extra* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.search_extra = type { i32, double }

@TL_SEARCH_RESULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"total_sum = %d, limit = %d, count = %d, tot_num = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Resending #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_resend(%struct.gather* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.search_extra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gather* %0, %struct.gather** %3, align 8
  %13 = load %struct.gather*, %struct.gather** %3, align 8
  %14 = getelementptr inbounds %struct.gather, %struct.gather* %13, i32 0, i32 2
  %15 = load %struct.search_extra*, %struct.search_extra** %14, align 8
  store %struct.search_extra* %15, %struct.search_extra** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %83, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gather*, %struct.gather** %3, align 8
  %19 = getelementptr inbounds %struct.gather, %struct.gather* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %16
  %23 = load %struct.gather*, %struct.gather** %3, align 8
  %24 = getelementptr inbounds %struct.gather, %struct.gather* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 16
  br i1 %31, label %32, label %82

32:                                               ; preds = %22
  %33 = load %struct.gather*, %struct.gather** %3, align 8
  %34 = getelementptr inbounds %struct.gather, %struct.gather* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TL_SEARCH_RESULT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %82

45:                                               ; preds = %32
  %46 = load %struct.gather*, %struct.gather** %3, align 8
  %47 = getelementptr inbounds %struct.gather, %struct.gather* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.gather*, %struct.gather** %3, align 8
  %57 = getelementptr inbounds %struct.gather, %struct.gather* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.search_extra*, %struct.search_extra** %5, align 8
  %68 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %45
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %71, %45
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %32, %22
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %16

86:                                               ; preds = %16
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.search_extra*, %struct.search_extra** %5, align 8
  %89 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.gather*, %struct.gather** %3, align 8
  %93 = getelementptr inbounds %struct.gather, %struct.gather* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %87, double %90, i32 %91, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = sitofp i32 %96 to double
  %98 = load %struct.search_extra*, %struct.search_extra** %5, align 8
  %99 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %98, i32 0, i32 1
  %100 = load double, double* %99, align 8
  %101 = fmul double 1.500000e+00, %100
  %102 = fcmp olt double %97, %101
  br i1 %102, label %103, label %191

103:                                              ; preds = %86
  %104 = load i32, i32* %7, align 4
  %105 = sitofp i32 %104 to double
  %106 = load %struct.gather*, %struct.gather** %3, align 8
  %107 = getelementptr inbounds %struct.gather, %struct.gather* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sitofp i32 %108 to double
  %110 = fmul double 1.000000e-01, %109
  %111 = fcmp olt double %105, %110
  br i1 %111, label %112, label %191

112:                                              ; preds = %103
  store i32 0, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %184, %112
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.gather*, %struct.gather** %3, align 8
  %116 = getelementptr inbounds %struct.gather, %struct.gather* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %187

119:                                              ; preds = %113
  %120 = load %struct.gather*, %struct.gather** %3, align 8
  %121 = getelementptr inbounds %struct.gather, %struct.gather* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 16
  br i1 %128, label %129, label %183

129:                                              ; preds = %119
  %130 = load %struct.gather*, %struct.gather** %3, align 8
  %131 = getelementptr inbounds %struct.gather, %struct.gather* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TL_SEARCH_RESULT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %129
  %143 = load %struct.gather*, %struct.gather** %3, align 8
  %144 = getelementptr inbounds %struct.gather, %struct.gather* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %11, align 4
  %153 = load %struct.gather*, %struct.gather** %3, align 8
  %154 = getelementptr inbounds %struct.gather, %struct.gather* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.search_extra*, %struct.search_extra** %5, align 8
  %165 = getelementptr inbounds %struct.search_extra, %struct.search_extra* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %163, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %142
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load i32, i32* %4, align 4
  %174 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load %struct.gather*, %struct.gather** %3, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i64 @resend_one(%struct.gather* %175, i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %172, %168, %142
  br label %183

183:                                              ; preds = %182, %129, %119
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %113

187:                                              ; preds = %113
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %2, align 4
  br label %192

191:                                              ; preds = %103, %86
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %187
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @resend_one(%struct.gather*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
