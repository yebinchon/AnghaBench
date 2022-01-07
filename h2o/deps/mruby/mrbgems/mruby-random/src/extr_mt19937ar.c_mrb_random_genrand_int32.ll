; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_mt19937ar.c_mrb_random_genrand_int32.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-random/src/extr_mt19937ar.c_mrb_random_genrand_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@mrb_random_genrand_int32.mag01 = internal constant [2 x i64] [i64 0, i64 128], align 16
@N = common dso_local global i32 0, align 4
@M = common dso_local global i32 0, align 4
@UPPER_MASK = common dso_local global i64 0, align 8
@LOWER_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mrb_random_genrand_int32(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @N, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %173

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @N, align 4
  %15 = add nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @mrb_random_init_genrand(%struct.TYPE_6__* %18, i64 5489)
  br label %20

20:                                               ; preds = %17, %10
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %71, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @N, align 4
  %24 = load i32, i32* @M, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UPPER_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LOWER_MASK, align 8
  %46 = and i64 %44, %45
  %47 = or i64 %36, %46
  store i64 %47, i64* %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @M, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %50, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = lshr i64 %57, 1
  %59 = xor i64 %56, %58
  %60 = load i64, i64* %3, align 8
  %61 = and i64 %60, 1
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* @mrb_random_genrand_int32.mag01, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = xor i64 %59, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  br label %71

71:                                               ; preds = %27
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %21

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %126, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @N, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %129

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UPPER_MASK, align 8
  %89 = and i64 %87, %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LOWER_MASK, align 8
  %99 = and i64 %97, %98
  %100 = or i64 %89, %99
  store i64 %100, i64* %3, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @M, align 4
  %106 = load i32, i32* @N, align 4
  %107 = sub nsw i32 %105, %106
  %108 = add nsw i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %103, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %3, align 8
  %113 = lshr i64 %112, 1
  %114 = xor i64 %111, %113
  %115 = load i64, i64* %3, align 8
  %116 = and i64 %115, 1
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* @mrb_random_genrand_int32.mag01, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = xor i64 %114, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %126

126:                                              ; preds = %80
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %75

129:                                              ; preds = %75
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* @N, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @UPPER_MASK, align 8
  %139 = and i64 %137, %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @LOWER_MASK, align 8
  %146 = and i64 %144, %145
  %147 = or i64 %139, %146
  store i64 %147, i64* %3, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* @M, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %3, align 8
  %157 = lshr i64 %156, 1
  %158 = xor i64 %155, %157
  %159 = load i64, i64* %3, align 8
  %160 = and i64 %159, 1
  %161 = getelementptr inbounds [2 x i64], [2 x i64]* @mrb_random_genrand_int32.mag01, i64 0, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = xor i64 %158, %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* @N, align 4
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  store i64 %163, i64* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  br label %173

173:                                              ; preds = %129, %1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i64, i64* %176, i64 %181
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %3, align 8
  %184 = load i64, i64* %3, align 8
  %185 = lshr i64 %184, 11
  %186 = load i64, i64* %3, align 8
  %187 = xor i64 %186, %185
  store i64 %187, i64* %3, align 8
  %188 = load i64, i64* %3, align 8
  %189 = shl i64 %188, 7
  %190 = and i64 %189, 2636928640
  %191 = load i64, i64* %3, align 8
  %192 = xor i64 %191, %190
  store i64 %192, i64* %3, align 8
  %193 = load i64, i64* %3, align 8
  %194 = shl i64 %193, 15
  %195 = and i64 %194, 4022730752
  %196 = load i64, i64* %3, align 8
  %197 = xor i64 %196, %195
  store i64 %197, i64* %3, align 8
  %198 = load i64, i64* %3, align 8
  %199 = lshr i64 %198, 18
  %200 = load i64, i64* %3, align 8
  %201 = xor i64 %200, %199
  store i64 %201, i64* %3, align 8
  %202 = load i64, i64* %3, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %3, align 8
  ret i64 %206
}

declare dso_local i32 @mrb_random_init_genrand(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
