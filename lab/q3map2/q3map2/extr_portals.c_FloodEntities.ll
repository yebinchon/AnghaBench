; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FloodEntities.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_portals.c_FloodEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i64 }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"--- FloodEntities ---\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@c_floodedleafs = common dso_local global i64 0, align 8
@numEntities = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_skybox\00", align 1
@qtrue = common dso_local global i8* null, align 8
@skyboxPresent = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"_scale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"angles\00", align 1
@skyboxTransform = common dso_local global i32 0, align 4
@eXYZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Entity leaked\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%9d flooded leafs\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"no entities in open -- no filling\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"entity reached from outside -- no filling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FloodEntities(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* @SYS_VRB, align 4
  %20 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** @qfalse, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** @qfalse, align 8
  store i8* %25, i8** %11, align 8
  store i64 0, i64* @c_floodedleafs, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %156, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @numEntities, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %159

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @entities, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @GetVectorForKey(%struct.TYPE_12__* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @vec3_origin, align 4
  %40 = call i64 @VectorCompare(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %156

43:                                               ; preds = %30
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %45 = call i8* @ValueForKey(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 @Q_stricmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %120, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** @qtrue, align 8
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** @qtrue, align 8
  store i8* %51, i8** @skyboxPresent, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @VectorScale(i32* %52, float -1.000000e+00, i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @VectorSet(i32* %55, float 6.400000e+01, float 6.400000e+01, float 6.400000e+01)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %58 = call i8* @ValueForKey(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %49
  %65 = load i8*, i8** %15, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = call i32 @sscanf(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %67, i32* %69, i32* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %64
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @VectorClear(i32* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = call i32 @FloatForKey(%struct.TYPE_12__* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %95 = call i8* @ValueForKey(%struct.TYPE_12__* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i8* %95, i8** %15, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %87
  %102 = load i8*, i8** %15, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @sscanf(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %104, i32* %106, i32* %108)
  br label %110

110:                                              ; preds = %101, %87
  %111 = load i32, i32* @skyboxTransform, align 4
  %112 = call i32 @m4x4_identity(i32 %111)
  %113 = load i32, i32* @skyboxTransform, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @eXYZ, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @m4x4_pivoted_transform_by_vec3(i32 %113, i32* %114, i32* %115, i32 %116, i32* %117, i32* %118)
  br label %122

120:                                              ; preds = %43
  %121 = load i8*, i8** @qfalse, align 8
  store i8* %121, i8** %12, align 8
  br label %122

122:                                              ; preds = %120, %110
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32*, i32** %13, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i8* @PlaceOccupant(i32* %127, i32* %128, %struct.TYPE_12__* %129, i8* %130)
  store i8* %131, i8** %9, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i8*, i8** @qtrue, align 8
  store i8* %135, i8** %10, align 8
  br label %136

136:                                              ; preds = %134, %122
  %137 = load i8*, i8** %9, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %139, %136
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** @qfalse, align 8
  %153 = call i32 @xml_Select(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %151, i32 0, i8* %152)
  %154 = load i8*, i8** @qtrue, align 8
  store i8* %154, i8** %11, align 8
  br label %155

155:                                              ; preds = %148, %145, %139
  br label %156

156:                                              ; preds = %155, %42
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %26

159:                                              ; preds = %26
  %160 = load i32, i32* @SYS_VRB, align 4
  %161 = load i64, i64* @c_floodedleafs, align 8
  %162 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %161)
  %163 = load i8*, i8** %10, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @SYS_VRB, align 4
  %167 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %178

168:                                              ; preds = %159
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load i32, i32* @SYS_VRB, align 4
  %176 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %175, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %168
  br label %178

178:                                              ; preds = %177, %165
  %179 = load i8*, i8** %10, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  %187 = xor i1 %186, true
  br label %188

188:                                              ; preds = %181, %178
  %189 = phi i1 [ false, %178 ], [ %187, %181 ]
  %190 = zext i1 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  ret i8* %192
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i64 @VectorCompare(i32*, i32) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSet(i32*, float, float, float) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @FloatForKey(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @m4x4_identity(i32) #1

declare dso_local i32 @m4x4_pivoted_transform_by_vec3(i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @PlaceOccupant(i32*, i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @xml_Select(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
