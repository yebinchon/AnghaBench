; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kr_rand.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kr_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@kr_rand.mag01 = internal constant [2 x i32] [i32 0, i32 -1452926487], align 4
@KR_NN = common dso_local global i32 0, align 4
@KR_MM = common dso_local global i32 0, align 4
@KR_UM = common dso_local global i32 0, align 4
@KR_LM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kr_rand(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @KR_NN, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %176

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KR_NN, align 4
  %15 = add nsw i32 %14, 1
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @kr_srand0(i64 5489, %struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %17, %10
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %72, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @KR_NN, align 4
  %24 = load i32, i32* @KR_MM, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KR_UM, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @KR_LM, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %36, %46
  store i32 %47, i32* %3, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @KR_MM, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = ashr i32 %57, 1
  %59 = xor i32 %56, %58
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* @kr_rand.mag01, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %59, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %27
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %21

75:                                               ; preds = %21
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @KR_NN, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @KR_UM, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @KR_LM, align 4
  %100 = and i32 %98, %99
  %101 = or i32 %90, %100
  store i32 %101, i32* %3, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @KR_MM, align 4
  %107 = load i32, i32* @KR_NN, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %3, align 4
  %114 = ashr i32 %113, 1
  %115 = xor i32 %112, %114
  %116 = load i32, i32* %3, align 4
  %117 = and i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* @kr_rand.mag01, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %115, %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %81
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %76

131:                                              ; preds = %76
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @KR_NN, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @KR_UM, align 4
  %141 = and i32 %139, %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @KR_LM, align 4
  %148 = and i32 %146, %147
  %149 = or i32 %141, %148
  store i32 %149, i32* %3, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* @KR_MM, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %3, align 4
  %159 = ashr i32 %158, 1
  %160 = xor i32 %157, %159
  %161 = load i32, i32* %3, align 4
  %162 = and i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* @kr_rand.mag01, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %160, %165
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @KR_NN, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %166, i32* %173, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %131, %1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* %3, align 4
  %188 = ashr i32 %187, 29
  %189 = sext i32 %188 to i64
  %190 = and i64 %189, 6148914691236517205
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = xor i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %3, align 4
  %195 = load i32, i32* %3, align 4
  %196 = shl i32 %195, 17
  %197 = sext i32 %196 to i64
  %198 = and i64 %197, 8202884508482404352
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = xor i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %3, align 4
  %203 = load i32, i32* %3, align 4
  %204 = shl i32 %203, 37
  %205 = sext i32 %204 to i64
  %206 = and i64 %205, -2270628950310912
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = xor i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %3, align 4
  %212 = ashr i32 %211, 43
  %213 = load i32, i32* %3, align 4
  %214 = xor i32 %213, %212
  store i32 %214, i32* %3, align 4
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @kr_srand0(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
