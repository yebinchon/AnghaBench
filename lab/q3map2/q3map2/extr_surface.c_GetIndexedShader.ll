; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_GetIndexedShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_GetIndexedShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, i64, i32, i32*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"textures/%s_%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"textures/%s_%dto%d\00", align 1
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @GetIndexedShader(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @MAX_QPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23, %4
  %30 = call %struct.TYPE_7__* @ShaderInfoForShader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %211

31:                                               ; preds = %26
  store i32 255, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %58, %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %32

68:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  br label %91

86:                                               ; preds = %73
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 255, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %81
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 (i8*, i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %102, i32 %103)
  br label %112

105:                                              ; preds = %95
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 (i8*, i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %99
  %113 = call %struct.TYPE_7__* @ShaderInfoForShader(i8* %20)
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %15, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i8*, i8** @qtrue, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** @qtrue, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i8*, i8** @qtrue, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %131
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load double, double* %142, align 8
  %144 = fcmp oeq double %143, 0.000000e+00
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store double %148, double* %150, align 8
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %151
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @qfalse, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %156
  %163 = load i8*, i8** @qtrue, align 8
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @VectorCopy(i32 %171, i32 %176)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @VectorCopy(i32 %182, i32 %187)
  br label %189

189:                                              ; preds = %162, %156, %151
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call float @VectorLength(i32 %192)
  %194 = fcmp ogt float %193, 0.000000e+00
  br i1 %194, label %195, label %209

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call float @VectorLength(i32 %198)
  %200 = fcmp ole float %199, 0.000000e+00
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @VectorCopy(i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %201, %195, %189
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %210, %struct.TYPE_7__** %5, align 8
  store i32 1, i32* %16, align 4
  br label %211

211:                                              ; preds = %209, %29
  %212 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @ShaderInfoForShader(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, ...) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local float @VectorLength(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
