; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotAvoidSpots.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotAvoidSpots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@AVOID_CLEAR = common dso_local global i32 0, align 4
@AVOID_ALWAYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAvoidSpots(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %50 [
    i32 130, label %20
    i32 140, label %22
    i32 142, label %24
    i32 134, label %26
    i32 129, label %28
    i32 136, label %30
    i32 132, label %32
    i32 128, label %34
    i32 131, label %36
    i32 139, label %38
    i32 137, label %40
    i32 133, label %42
    i32 141, label %44
    i32 135, label %46
    i32 138, label %48
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @qtrue, align 4
  store i32 %21, i32* %10, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* %10, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load i32, i32* @qtrue, align 4
  store i32 %25, i32* %10, align 4
  br label %52

26:                                               ; preds = %4
  %27 = load i32, i32* @qtrue, align 4
  store i32 %27, i32* %10, align 4
  br label %52

28:                                               ; preds = %4
  %29 = load i32, i32* @qfalse, align 4
  store i32 %29, i32* %10, align 4
  br label %52

30:                                               ; preds = %4
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %10, align 4
  br label %52

32:                                               ; preds = %4
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %10, align 4
  br label %52

34:                                               ; preds = %4
  %35 = load i32, i32* @qtrue, align 4
  store i32 %35, i32* %10, align 4
  br label %52

36:                                               ; preds = %4
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %10, align 4
  br label %52

38:                                               ; preds = %4
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %10, align 4
  br label %52

40:                                               ; preds = %4
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %10, align 4
  br label %52

42:                                               ; preds = %4
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %10, align 4
  br label %52

44:                                               ; preds = %4
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %10, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %10, align 4
  br label %52

48:                                               ; preds = %4
  %49 = load i32, i32* @qfalse, align 4
  store i32 %49, i32* %10, align 4
  br label %52

50:                                               ; preds = %4
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20
  %53 = load i32, i32* @AVOID_CLEAR, align 4
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %182, %52
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %185

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call float @Square(i32 %64)
  store float %65, float* %14, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call float @DistanceFromLineSquared(i32 %71, i32 %72, i32 %75)
  store float %76, float* %13, align 4
  %77 = load float, float* %13, align 4
  %78 = load float, float* %14, align 4
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %58
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call float @VectorDistanceSquared(i32 %86, i32 %87)
  %89 = load float, float* %13, align 4
  %90 = fcmp ogt float %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  br label %175

98:                                               ; preds = %80, %58
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %98
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call float @DistanceFromLineSquared(i32 %107, i32 %110, i32 %113)
  store float %114, float* %13, align 4
  %115 = load float, float* %13, align 4
  %116 = load float, float* %14, align 4
  %117 = fcmp olt float %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %101
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call float @VectorDistanceSquared(i32 %124, i32 %127)
  %129 = load float, float* %13, align 4
  %130 = fcmp ogt float %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %131, %118, %101
  br label %174

139:                                              ; preds = %98
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call float @VectorDistanceSquared(i32 %145, i32 %148)
  %150 = load float, float* %13, align 4
  %151 = load float, float* %14, align 4
  %152 = fcmp olt float %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %139
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call float @VectorDistanceSquared(i32 %159, i32 %162)
  %164 = load float, float* %13, align 4
  %165 = fcmp ogt float %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %153
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %166, %153, %139
  br label %174

174:                                              ; preds = %173, %138
  br label %175

175:                                              ; preds = %174, %91
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @AVOID_ALWAYS, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %5, align 4
  br label %187

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %54

185:                                              ; preds = %54
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %179
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local float @Square(i32) #1

declare dso_local float @DistanceFromLineSquared(i32, i32, i32) #1

declare dso_local float @VectorDistanceSquared(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
