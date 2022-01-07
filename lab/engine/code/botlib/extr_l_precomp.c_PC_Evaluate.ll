; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_Evaluate.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_Evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, float, %struct.TYPE_14__* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no value after #if/#elif\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't evaluate %s, not defined\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@TT_PUNCTUATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"can't evaluate %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Evaluate(%struct.TYPE_15__* %0, i64* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i64* %1, i64** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %20, %4
  %23 = load float*, float** %8, align 8
  %24 = icmp ne float* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load float*, float** %8, align 8
  store float 0.000000e+00, float* %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = call i64 @PC_ReadLine(%struct.TYPE_15__* %28, %struct.TYPE_14__* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %5, align 4
  br label %167

35:                                               ; preds = %27
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  br label %36

36:                                               ; preds = %138, %35
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TT_NAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %16, align 4
  %46 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %13, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  br label %57

55:                                               ; preds = %44
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %11, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %12, align 8
  br label %104

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %61 = load float, float* %60, align 8
  %62 = call i32 @strcmp(float %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %16, align 4
  %66 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %13, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = icmp ne %struct.TYPE_14__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %74, align 8
  br label %77

75:                                               ; preds = %64
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %11, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %12, align 8
  br label %103

79:                                               ; preds = %59
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %84 = load float, float* %83, align 8
  %85 = call i32* @PC_FindDefine(i32 %82, float %84)
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %91 = load float, float* %90, align 8
  %92 = fpext float %91 to double
  %93 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double %92)
  %94 = load i32, i32* @qfalse, align 4
  store i32 %94, i32* %5, align 4
  br label %167

95:                                               ; preds = %79
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @PC_ExpandDefineIntoSource(%struct.TYPE_15__* %96, %struct.TYPE_14__* %10, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @qfalse, align 4
  store i32 %101, i32* %5, align 4
  br label %167

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %77
  br label %104

104:                                              ; preds = %103, %57
  br label %137

105:                                              ; preds = %36
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TT_NUMBER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TT_PUNCTUATION, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %110, %105
  %116 = call %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__* %10)
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %13, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = icmp ne %struct.TYPE_14__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  store %struct.TYPE_14__* %122, %struct.TYPE_14__** %124, align 8
  br label %127

125:                                              ; preds = %115
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %11, align 8
  br label %127

127:                                              ; preds = %125, %121
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %12, align 8
  br label %136

129:                                              ; preds = %110
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %132 = load float, float* %131, align 8
  %133 = fpext float %132 to double
  %134 = call i32 (%struct.TYPE_15__*, i8*, ...) @SourceError(%struct.TYPE_15__* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %133)
  %135 = load i32, i32* @qfalse, align 4
  store i32 %135, i32* %5, align 4
  br label %167

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %104
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %140 = call i64 @PC_ReadLine(%struct.TYPE_15__* %139, %struct.TYPE_14__* %10)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %36, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %145 = load i64*, i64** %7, align 8
  %146 = load float*, float** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @PC_EvaluateTokens(%struct.TYPE_15__* %143, %struct.TYPE_14__* %144, i64* %145, float* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @qfalse, align 4
  store i32 %151, i32* %5, align 4
  br label %167

152:                                              ; preds = %142
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %153, %struct.TYPE_14__** %13, align 8
  br label %154

154:                                              ; preds = %163, %152
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %156 = icmp ne %struct.TYPE_14__* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  store %struct.TYPE_14__* %160, %struct.TYPE_14__** %14, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %162 = call i32 @PC_FreeToken(%struct.TYPE_14__* %161)
  br label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %13, align 8
  br label %154

165:                                              ; preds = %154
  %166 = load i32, i32* @qtrue, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %150, %129, %100, %88, %31
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i64 @PC_ReadLine(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @SourceError(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @PC_CopyToken(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(float, i8*) #1

declare dso_local i32* @PC_FindDefine(i32, float) #1

declare dso_local i32 @PC_ExpandDefineIntoSource(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @PC_EvaluateTokens(%struct.TYPE_15__*, %struct.TYPE_14__*, i64*, float*, i32) #1

declare dso_local i32 @PC_FreeToken(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
