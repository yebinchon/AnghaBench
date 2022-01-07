; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFuzzyPointReachabilityArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotFuzzyPointReachabilityArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFuzzyPointReachabilityArea(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [10 x i32*], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @AAS_PointAreaNum(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @AAS_AreaReachability(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %2, align 4
  br label %164

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @VectorCopy(i32* %31, i32* %32)
  %34 = load i32*, i32** %17, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %41 = getelementptr inbounds [10 x i32*], [10 x i32*]* %15, i64 0, i64 0
  %42 = call i32 @AAS_TraceAreas(i32* %38, i32* %39, i32* %40, i32** %41, i32 10)
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %60, %30
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @AAS_AreaReachability(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %2, align 4
  br label %164

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %43

63:                                               ; preds = %43
  store float 9.999990e+05, float* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %159, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, -1
  br i1 %66, label %67, label %162

67:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %150, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, -1
  br i1 %70, label %71, label %153

71:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %146, %71
  %73 = load i32, i32* %7, align 4
  %74 = icmp sge i32 %73, -1
  br i1 %74, label %75, label %149

75:                                               ; preds = %72
  %76 = load i32*, i32** %3, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @VectorCopy(i32* %76, i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %79, 8
  %81 = load i32*, i32** %17, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 8
  %87 = load i32*, i32** %17, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 12
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %100 = getelementptr inbounds [10 x i32*], [10 x i32*]* %15, i64 0, i64 0
  %101 = call i32 @AAS_TraceAreas(i32* %97, i32* %98, i32* %99, i32** %100, i32 10)
  store i32 %101, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %142, %75
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @AAS_AreaReachability(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32*], [10 x i32*]* %15, i64 0, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @VectorSubtract(i32* %117, i32* %118, i32* %119)
  %121 = load i32*, i32** %16, align 8
  %122 = call float @VectorLength(i32* %121)
  store float %122, float* %13, align 4
  %123 = load float, float* %13, align 4
  %124 = load float, float* %14, align 4
  %125 = fcmp olt float %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  %131 = load float, float* %13, align 4
  store float %131, float* %14, align 4
  br label %132

132:                                              ; preds = %126, %113
  br label %133

133:                                              ; preds = %132, %106
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %102

145:                                              ; preds = %102
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %72

149:                                              ; preds = %72
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %6, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %68

153:                                              ; preds = %68
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %2, align 4
  br label %164

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %8, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %64

162:                                              ; preds = %64
  %163 = load i32, i32* %4, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %156, %54, %27
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @AAS_PointAreaNum(i32*) #1

declare dso_local i64 @AAS_AreaReachability(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AAS_TraceAreas(i32*, i32*, i32*, i32**, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @VectorLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
