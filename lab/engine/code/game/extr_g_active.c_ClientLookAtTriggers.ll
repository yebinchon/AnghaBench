; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientLookAtTriggers.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientLookAtTriggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64*, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@STAT_HEALTH = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_23__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_LOOKAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientLookAtTriggers(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = icmp ne %struct.TYPE_21__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %172

16:                                               ; preds = %1
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @STAT_HEALTH, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %16
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %27
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i64 %41
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %10, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %49, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %53 = call i32 %50(%struct.TYPE_23__* %51, %struct.TYPE_23__* %52, %struct.TYPE_22__* null)
  br label %54

54:                                               ; preds = %47, %34
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %27
  br label %172

60:                                               ; preds = %16
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @AngleVectors(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @CalcMuzzlePoint(%struct.TYPE_23__* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @VectorMA(i32 %77, i32 131072, i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @vec3_origin, align 4
  %83 = load i32, i32* @vec3_origin, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CONTENTS_SOLID, align 4
  %92 = load i32, i32* @CONTENTS_LOOKAT, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @trap_Trace(%struct.TYPE_22__* %3, i32 %81, i32 %82, i32 %83, i32 %84, i32 %90, i32 %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %60
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %107, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %101
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i64 %118
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %10, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %121, align 8
  %123 = icmp ne i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %111
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %126, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %130 = call i32 %127(%struct.TYPE_23__* %128, %struct.TYPE_23__* %129, %struct.TYPE_22__* null)
  br label %131

131:                                              ; preds = %124, %111
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %101, %60
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** @g_entities, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i64 %139
  store %struct.TYPE_23__* %140, %struct.TYPE_23__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CONTENTS_LOOKAT, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %136
  br label %172

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %162, align 8
  %164 = icmp ne i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %153
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = load i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_22__*)** %167, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %171 = call i32 %168(%struct.TYPE_23__* %169, %struct.TYPE_23__* %170, %struct.TYPE_22__* %3)
  br label %172

172:                                              ; preds = %15, %59, %152, %165, %153
  ret void
}

declare dso_local i32 @AngleVectors(i32, i32, i32, i32) #1

declare dso_local i32 @CalcMuzzlePoint(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
