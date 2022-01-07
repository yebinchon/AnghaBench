; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_LoadCubemapEntities.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_R_LoadCubemapEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, float, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* (i32, i32)* }

@MAX_SPAWN_VARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_LoadCubemapEntities(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %18 = load i32, i32* @MAX_SPAWN_VARS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca [2 x i8*], i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %56, %1
  %23 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %24 = bitcast [2 x i8*]* %21 to i8***
  %25 = call i64 @R_ParseSpawnVars(i8* %23, i32 2048, i32* %4, i8*** %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %34
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %35, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = call i32 @Q_stricmp(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %42
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %43, i64 0, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @Q_stricmp(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %40, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %28

56:                                               ; preds = %28
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  br label %200

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_6__* (i32, i32)*, %struct.TYPE_6__* (i32, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @h_low, align 4
  %69 = call %struct.TYPE_6__* %63(i32 %67, i32 %68)
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 16
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(%struct.TYPE_6__* %70, i32 0, i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %197, %61
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %78 = bitcast [2 x i8*]* %21 to i8***
  %79 = call i64 @R_ParseSpawnVars(i8* %77, i32 2048, i32* %4, i8*** %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %199

81:                                               ; preds = %76
  %82 = load i32, i32* @MAX_QPATH, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %11, align 8
  %85 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %12, align 8
  %86 = load i64, i64* @qfalse, align 8
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* @qfalse, align 8
  store i64 %87, i64* %14, align 8
  store float 1.000000e+03, float* %16, align 4
  %88 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 0, i8* %88, align 16
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %168, %81
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %89
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %95
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %96, i64 0, i64 0
  %98 = load i8*, i8** %97, align 16
  %99 = call i32 @Q_stricmp(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %103
  %105 = getelementptr inbounds [2 x i8*], [2 x i8*]* %104, i64 0, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @Q_stricmp(i8* %106, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %101
  %111 = load i64, i64* @qtrue, align 8
  store i64 %111, i64* %13, align 8
  br label %112

112:                                              ; preds = %110, %101, %93
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %114
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %115, i64 0, i64 0
  %117 = load i8*, i8** %116, align 16
  %118 = call i32 @Q_stricmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %122
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %123, i64 0, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @MAX_QPATH, align 4
  %127 = call i32 @Q_strncpyz(i8* %85, i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %112
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %130
  %132 = getelementptr inbounds [2 x i8*], [2 x i8*]* %131, i64 0, i64 0
  %133 = load i8*, i8** %132, align 16
  %134 = call i32 @Q_stricmp(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %138
  %140 = getelementptr inbounds [2 x i8*], [2 x i8*]* %139, i64 0, i64 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = bitcast i32* %143 to float*
  %145 = load i32*, i32** %15, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32*, i32** %15, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = call i32 (i8*, i8*, float*, ...) @sscanf(i8* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), float* %144, i32* %146, i32* %148)
  %150 = load i64, i64* @qtrue, align 8
  store i64 %150, i64* %14, align 8
  br label %167

151:                                              ; preds = %128
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %153
  %155 = getelementptr inbounds [2 x i8*], [2 x i8*]* %154, i64 0, i64 0
  %156 = load i8*, i8** %155, align 16
  %157 = call i32 @Q_stricmp(i8* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 %161
  %163 = getelementptr inbounds [2 x i8*], [2 x i8*]* %162, i64 0, i64 1
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, i8*, float*, ...) @sscanf(i8* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), float* %16)
  br label %166

166:                                              ; preds = %159, %151
  br label %167

167:                                              ; preds = %166, %136
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %89

171:                                              ; preds = %89
  %172 = load i64, i64* %13, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %171
  %175 = load i64, i64* %14, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 1), align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %17, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* @MAX_QPATH, align 4
  %186 = call i32 @Q_strncpyz(i8* %184, i8* %85, i32 %185)
  %187 = load i32*, i32** %15, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @VectorCopy(i32* %187, i32 %190)
  %192 = load float, float* %16, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  store float %192, float* %194, align 8
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %177, %174, %171
  %198 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %198)
  br label %76

199:                                              ; preds = %76
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %199, %60
  %201 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %9, align 4
  switch i32 %202, label %204 [
    i32 0, label %203
    i32 1, label %203
  ]

203:                                              ; preds = %200, %200
  ret void

204:                                              ; preds = %200
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @R_ParseSpawnVars(i8*, i32, i32*, i8***) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, float*, ...) #2

declare dso_local i32 @VectorCopy(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
