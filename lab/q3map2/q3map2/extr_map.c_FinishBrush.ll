; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_FinishBrush.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_FinishBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_14__*, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@buildBrush = common dso_local global %struct.TYPE_17__* null, align 8
@C_ORIGIN = common dso_local global i32 0, align 4
@numEntities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Entity %i, Brush %i: origin brushes not allowed in world\0A\00", align 1
@mapEnt = common dso_local global %struct.TYPE_15__* null, align 8
@entitySourceBrushes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@entities = common dso_local global %struct.TYPE_16__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@C_AREAPORTAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Entity %i, Brush %i: areaportals only allowed in world\0A\00", align 1
@CM_VOLUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @FinishBrush() #0 {
  %1 = alloca %struct.TYPE_14__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i64*, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %6 = call i32 @CreateBrushWindings(%struct.TYPE_17__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %1, align 8
  br label %169

9:                                                ; preds = %0
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @C_ORIGIN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  %17 = load i32, i32* @numEntities, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @entitySourceBrushes, align 4
  %24 = call i32 @Sys_Printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %1, align 8
  br label %169

25:                                               ; preds = %16
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %4, align 8
  %33 = call i32 @VectorAdd(i32 %28, i32 %31, i64* %32)
  %34 = load i64*, i64** %4, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = call i32 @VectorScale(i64* %34, double 5.000000e-01, i64* %35)
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @entities, align 8
  %52 = load i32, i32* @numEntities, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %54
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %57 = call i32 @SetKeyValue(%struct.TYPE_16__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i64*, i64** %4, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** @entities, align 8
  %60 = load i32, i32* @numEntities, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @VectorCopy(i64* %58, i32 %65)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %1, align 8
  br label %169

67:                                               ; preds = %9
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @C_AREAPORTAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32, i32* @numEntities, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @numEntities, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @entitySourceBrushes, align 4
  %81 = call i32 @Sys_Printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %80)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %1, align 8
  br label %169

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = call i32 (...) @AddBrushBevels()
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** @buildBrush, align 8
  %86 = call %struct.TYPE_14__* @CopyBrush(%struct.TYPE_17__* %85)
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %2, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @entitySourceBrushes, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %83
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = icmp eq %struct.TYPE_14__* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %102, %83
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 3
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = icmp eq %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %123, align 8
  br label %124

124:                                              ; preds = %120, %107
  br label %136

125:                                              ; preds = %102
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %135, align 8
  br label %136

136:                                              ; preds = %125, %124
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = icmp ne %struct.TYPE_13__* %139, null
  br i1 %140, label %141, label %167

141:                                              ; preds = %136
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = icmp ne %struct.TYPE_12__* %146, null
  br i1 %147, label %148, label %167

148:                                              ; preds = %141
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CM_VOLUME, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %148
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  store %struct.TYPE_14__* %161, %struct.TYPE_14__** %163, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mapEnt, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %166, align 8
  br label %167

167:                                              ; preds = %158, %148, %141, %136
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %1, align 8
  br label %169

169:                                              ; preds = %167, %77, %25, %19, %8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %1, align 8
  ret %struct.TYPE_14__* %170
}

declare dso_local i32 @CreateBrushWindings(%struct.TYPE_17__*) #1

declare dso_local i32 @Sys_Printf(i8*, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @AddBrushBevels(...) #1

declare dso_local %struct.TYPE_14__* @CopyBrush(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
