; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_partial_score_val_sort.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_partial_score_val_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @partial_score_val_sort(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x %struct.TYPE_5__*], align 16
  %8 = alloca [32 x %struct.TYPE_5__*], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %7, i64 0, i64 0
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %16, align 16
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 -1
  %22 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %8, i64 0, i64 0
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %22, align 16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %185, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %188

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %7, i64 0, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %8, i64 0, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %11, align 8
  br label %35

35:                                               ; preds = %183, %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %38 = icmp ult %struct.TYPE_5__* %36, %37
  br i1 %38, label %39, label %184

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = ptrtoint %struct.TYPE_5__* %40 to i64
  %43 = ptrtoint %struct.TYPE_5__* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  %46 = ashr i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dl_swap(i64 %54, i64 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 1
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %13, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %14, align 8
  br label %61

61:                                               ; preds = %39, %104
  br label %62

62:                                               ; preds = %77, %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = icmp ult %struct.TYPE_5__* %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i1 [ false, %62 ], [ %73, %66 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 1
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %13, align 8
  br label %62

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %96, %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = icmp uge %struct.TYPE_5__* %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br label %93

93:                                               ; preds = %85, %81
  %94 = phi i1 [ false, %81 ], [ %92, %85 ]
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 -1
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %14, align 8
  br label %81

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %102 = icmp uge %struct.TYPE_5__* %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %116

104:                                              ; preds = %99
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @dl_swap(i64 %108, i64 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 1
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %13, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 -1
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %14, align 8
  br label %61

116:                                              ; preds = %103
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @dl_swap(i64 %120, i64 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = ptrtoint %struct.TYPE_5__* %124 to i64
  %127 = ptrtoint %struct.TYPE_5__* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %132 = ptrtoint %struct.TYPE_5__* %130 to i64
  %133 = ptrtoint %struct.TYPE_5__* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 8
  %136 = icmp sle i64 %129, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %116
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %141 = icmp ult %struct.TYPE_5__* %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %137
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 1
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %147
  %149 = icmp ult %struct.TYPE_5__* %144, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %142
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 1
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %7, i64 0, i64 %154
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %155, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %8, i64 0, i64 %159
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %160, align 8
  br label %161

161:                                              ; preds = %150, %142, %137
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 -1
  store %struct.TYPE_5__* %163, %struct.TYPE_5__** %11, align 8
  br label %183

164:                                              ; preds = %116
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 -1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %168 = icmp ugt %struct.TYPE_5__* %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %7, i64 0, i64 %172
  store %struct.TYPE_5__* %170, %struct.TYPE_5__** %173, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 -1
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds [32 x %struct.TYPE_5__*], [32 x %struct.TYPE_5__*]* %8, i64 0, i64 %178
  store %struct.TYPE_5__* %175, %struct.TYPE_5__** %179, align 8
  br label %180

180:                                              ; preds = %169, %164
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 1
  store %struct.TYPE_5__* %182, %struct.TYPE_5__** %10, align 8
  br label %183

183:                                              ; preds = %180, %161
  br label %35

184:                                              ; preds = %35
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %9, align 4
  br label %23

188:                                              ; preds = %23
  ret void
}

declare dso_local i32 @dl_swap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
