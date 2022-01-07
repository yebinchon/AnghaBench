; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_store_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_store_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"store_res!!, n_ranges = %d\0A\00", align 1
@n_ranges = common dso_local global i32 0, align 4
@Q_range = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"ranges: r0 = %d, Q_range[i].minr = %d, Q_range[i].maxr = %d\0A\00", align 1
@R_tot = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i64 0, align 8
@Q_type = common dso_local global i64 0, align 8
@MAX_RATES = common dso_local global i64 0, align 8
@Q_order = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i64 0, align 8
@R = common dso_local global i32** null, align 8
@RV = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @store_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_res(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @n_ranges, align 4
  %9 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @n_ranges, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_rate_item(i32* %15, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %29, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %37, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %14
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Q_range, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %46, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45, %14
  store i32 1, i32* %2, align 4
  br label %233

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %10

59:                                               ; preds = %10
  %60 = load i32, i32* @R_tot, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @R_tot, align 4
  %62 = load i64, i64* @Q_limit, align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %233

65:                                               ; preds = %59
  %66 = load i64, i64* @Q_type, align 8
  %67 = load i64, i64* @MAX_RATES, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32, i32* @Q_order, align 4
  %71 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64, i64* @R_cnt, align 8
  %76 = load i64, i64* @Q_limit, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i64 0, i64* @R_cnt, align 8
  br label %79

79:                                               ; preds = %78, %74, %69
  %80 = load i64, i64* @R_cnt, align 8
  %81 = load i64, i64* @Q_limit, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32*, i32** %3, align 8
  %85 = load i32**, i32*** @R, align 8
  %86 = load i64, i64* @R_cnt, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* @R_cnt, align 8
  %88 = getelementptr inbounds i32*, i32** %85, i64 %86
  store i32* %84, i32** %88, align 8
  br label %89

89:                                               ; preds = %83, %79
  store i32 1, i32* %2, align 4
  br label %233

90:                                               ; preds = %65
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @evaluate_rating(i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @Q_order, align 4
  %94 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load i64, i64* @R_cnt, align 8
  %103 = load i64, i64* @Q_limit, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %183

105:                                              ; preds = %101
  %106 = load i32*, i32** @RV, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  br label %233

112:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %152
  %114 = load i32, i32* %4, align 4
  %115 = mul nsw i32 %114, 2
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @R_cnt, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %172

121:                                              ; preds = %113
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @R_cnt, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i32*, i32** @RV, align 8
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** @RV, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %132, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %126
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %139, %126
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32*, i32** @RV, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %172

152:                                              ; preds = %143
  %153 = load i32**, i32*** @R, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32**, i32*** @R, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* %157, i32** %161, align 8
  %162 = load i32*, i32** @RV, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** @RV, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %4, align 4
  br label %113

172:                                              ; preds = %151, %120
  %173 = load i32*, i32** %3, align 8
  %174 = load i32**, i32*** @R, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  store i32* %173, i32** %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32*, i32** @RV, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  br label %232

183:                                              ; preds = %101
  %184 = load i64, i64* @R_cnt, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* @R_cnt, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %201, %183
  %188 = load i32, i32* %4, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %221

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = ashr i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = load i32*, i32** @RV, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %221

201:                                              ; preds = %190
  %202 = load i32**, i32*** @R, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = load i32**, i32*** @R, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  store i32* %206, i32** %210, align 8
  %211 = load i32*, i32** @RV, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** @RV, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32, i32* %5, align 4
  store i32 %220, i32* %4, align 4
  br label %187

221:                                              ; preds = %200, %187
  %222 = load i32*, i32** %3, align 8
  %223 = load i32**, i32*** @R, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  store i32* %222, i32** %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32*, i32** @RV, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %221, %172
  store i32 1, i32* %2, align 4
  br label %233

233:                                              ; preds = %232, %111, %89, %64, %54
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @get_rate_item(i32*, i32) #1

declare dso_local i32 @evaluate_rating(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
