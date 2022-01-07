; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_merge.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXQ = common dso_local global i32 0, align 4
@ratings = common dso_local global i64* null, align 8
@RATING_MIN = common dso_local global i64 0, align 8
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8
@stemmed_names = common dso_local global i64* null, align 8
@q = common dso_local global i64* null, align 8
@rating_q = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %204, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAXQ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i64*, i64** @ratings, align 8
  %13 = load i64*, i64** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %12, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RATING_MIN, align 8
  %21 = icmp sgt i64 %19, %20
  br label %22

22:                                               ; preds = %11, %7
  %23 = phi i1 [ false, %7 ], [ %21, %11 ]
  br i1 %23, label %24, label %207

24:                                               ; preds = %22
  %25 = load i64, i64* @names_buff, align 8
  %26 = load i64*, i64** @names, align 8
  %27 = load i64*, i64** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %25, %33
  %35 = call i32 @black_list_check(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %203, label %37

37:                                               ; preds = %24
  %38 = load i64*, i64** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call float @get_rating(i64 %42)
  store float %43, float* %5, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %128, %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MAXQ, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %131

48:                                               ; preds = %44
  %49 = load i64*, i64** @stemmed_names, align 8
  %50 = load i64*, i64** @q, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %49, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** @stemmed_names, align 8
  %58 = load i64*, i64** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %56, %64
  br i1 %65, label %66, label %127

66:                                               ; preds = %48
  %67 = load float, float* %5, align 4
  %68 = load float*, float** @rating_q, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fcmp ogt float %67, %72
  br i1 %73, label %74, label %126

74:                                               ; preds = %66
  %75 = load float, float* %5, align 4
  %76 = load float*, float** @rating_q, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  store float %75, float* %79, align 4
  br label %80

80:                                               ; preds = %98, %74
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load float*, float** @rating_q, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %84, i64 %87
  %89 = load float, float* %88, align 4
  %90 = load float*, float** @rating_q, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fcmp olt float %89, %94
  br label %96

96:                                               ; preds = %83, %80
  %97 = phi i1 [ false, %80 ], [ %95, %83 ]
  br i1 %97, label %98, label %125

98:                                               ; preds = %96
  %99 = load float*, float** @rating_q, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %99, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fptoui float %104 to i64
  %106 = load float*, float** @rating_q, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fptoui float %110 to i64
  %112 = call i32 @swap(i64 %105, i64 %111)
  %113 = load i64*, i64** @q, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** @q, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @swap(i64 %118, i64 %123)
  br label %80

125:                                              ; preds = %96
  br label %126

126:                                              ; preds = %125, %66
  br label %131

127:                                              ; preds = %48
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %44

131:                                              ; preds = %126, %44
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @MAXQ, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %202

135:                                              ; preds = %131
  %136 = load float*, float** @rating_q, align 8
  %137 = load i32, i32* @MAXQ, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %136, i64 %139
  %141 = load float, float* %140, align 4
  %142 = load float, float* %5, align 4
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %201

144:                                              ; preds = %135
  %145 = load i32, i32* @MAXQ, align 4
  %146 = sub nsw i32 %145, 2
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %181, %144
  %148 = load i32, i32* %6, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load float*, float** @rating_q, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = load float, float* %5, align 4
  %157 = fcmp olt float %155, %156
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i1 [ false, %147 ], [ %157, %150 ]
  br i1 %159, label %160, label %184

160:                                              ; preds = %158
  %161 = load i64*, i64** @q, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** @q, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  store i64 %165, i64* %170, align 8
  %171 = load float*, float** @rating_q, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  %176 = load float*, float** @rating_q, align 8
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %176, i64 %179
  store float %175, float* %180, align 4
  br label %181

181:                                              ; preds = %160
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %6, align 4
  br label %147

184:                                              ; preds = %158
  %185 = load i64*, i64** %2, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i64*, i64** @q, align 8
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  store i64 %189, i64* %194, align 8
  %195 = load float, float* %5, align 4
  %196 = load float*, float** @rating_q, align 8
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %196, i64 %199
  store float %195, float* %200, align 4
  br label %201

201:                                              ; preds = %184, %135
  br label %202

202:                                              ; preds = %201, %131
  br label %203

203:                                              ; preds = %202, %24
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %3, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %3, align 4
  br label %7

207:                                              ; preds = %22
  ret void
}

declare dso_local i32 @black_list_check(i64) #1

declare dso_local float @get_rating(i64) #1

declare dso_local i32 @swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
