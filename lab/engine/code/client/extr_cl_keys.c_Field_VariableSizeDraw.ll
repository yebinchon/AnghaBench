; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Field_VariableSizeDraw.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Field_VariableSizeDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"drawLen >= MAX_STRING_CHARS\00", align 1
@SMALLCHAR_WIDTH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@key_overstrikeMode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Field_VariableSizeDraw(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca [4 x float], align 16
  %23 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %24 = load i32, i32* @MAX_STRING_CHARS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %66

40:                                               ; preds = %7
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %15, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %48
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %62, %39
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @MAX_STRING_CHARS, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @ERR_DROP, align 4
  %82 = call i32 @Com_Error(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @Com_Memcpy(i8* %27, i8* %89, i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %27, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %83
  %99 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 3
  store float 1.000000e+00, float* %99, align 4
  %100 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 2
  store float 1.000000e+00, float* %100, align 8
  %101 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 1
  store float 1.000000e+00, float* %101, align 4
  %102 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 0
  store float 1.000000e+00, float* %102, align 16
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 0
  %106 = load i64, i64* @qfalse, align 8
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @SCR_DrawSmallStringExt(i32 %103, i32 %104, i8* %27, float* %105, i64 %106, i64 %107)
  br label %114

109:                                              ; preds = %83
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i64, i64* %14, align 8
  %113 = call i32 @SCR_DrawBigString(i32 %110, i32 %111, i8* %27, double 1.000000e+00, i64 %112)
  br label %114

114:                                              ; preds = %109, %98
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %170

117:                                              ; preds = %114
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 1, i32* %23, align 4
  br label %171

123:                                              ; preds = %117
  %124 = load i64, i64* @key_overstrikeMode, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 11, i32* %18, align 4
  br label %128

127:                                              ; preds = %123
  store i32 10, i32* %18, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @strlen(i8* %27)
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SMALLCHAR_WIDTH, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %128
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %21, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %12, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %136, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @SCR_DrawSmallChar(i32 %146, i32 %147, i32 %148)
  br label %169

150:                                              ; preds = %128
  %151 = load i32, i32* %18, align 4
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 %152, i8* %153, align 16
  %154 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %154, align 1
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %17, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32, i32* %21, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* %12, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %155, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i64, i64* @qfalse, align 8
  %168 = call i32 @SCR_DrawBigString(i32 %165, i32 %166, i8* %27, double 1.000000e+00, i64 %167)
  br label %169

169:                                              ; preds = %150, %135
  br label %170

170:                                              ; preds = %169, %114
  store i32 0, i32* %23, align 4
  br label %171

171:                                              ; preds = %170, %122
  %172 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %23, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @Com_Memcpy(i8*, i8*, i32) #2

declare dso_local i32 @SCR_DrawSmallStringExt(i32, i32, i8*, float*, i64, i64) #2

declare dso_local i32 @SCR_DrawBigString(i32, i32, i8*, double, i64) #2

declare dso_local i32 @SCR_DrawSmallChar(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
