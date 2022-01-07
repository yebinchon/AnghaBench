; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_Pickup_Powerup.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_Pickup_Powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32*, i64*, i32*, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__, %struct.TYPE_25__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_23__ = type { double }

@level = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CON_DISCONNECTED = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@PLAYEREVENT_DENIEDREWARD = common dso_local global i32 0, align 4
@PERS_PLAYEREVENTS = common dso_local global i64 0, align 8
@RESPAWN_POWERUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Pickup_Powerup(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %29 = srem i32 %28, 1000
  %30 = sub nsw i32 %27, %29
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32 %30, i32* %42, align 4
  br label %43

43:                                               ; preds = %26, %2
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  br label %58

52:                                               ; preds = %43
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %60
  store i32 %74, i32* %72, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %181, %58
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %184

79:                                               ; preds = %75
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 2), align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i64 %82
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %7, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  %88 = icmp eq %struct.TYPE_25__* %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %181

90:                                               ; preds = %79
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CON_DISCONNECTED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %181

98:                                               ; preds = %90
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @STAT_HEALTH, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %181

108:                                              ; preds = %98
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %110 = load i64, i64* @GT_TEAM, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %181

125:                                              ; preds = %112, %108
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @VectorSubtract(i32 %130, i32 %134, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = call float @VectorNormalize(i32 %137)
  store float %138, float* %9, align 4
  %139 = load float, float* %9, align 4
  %140 = fcmp ogt float %139, 1.920000e+02
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %181

142:                                              ; preds = %125
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @AngleVectors(i32 %146, i32 %147, i32* null, i32* null)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call double @DotProduct(i32 %149, i32 %150)
  %152 = fcmp olt double %151, 4.000000e-01
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %181

154:                                              ; preds = %142
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ENTITYNUM_NONE, align 4
  %165 = load i32, i32* @CONTENTS_SOLID, align 4
  %166 = call i32 @trap_Trace(%struct.TYPE_23__* %11, i32 %158, i32* null, i32* null, i32 %163, i32 %164, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %168 = load double, double* %167, align 8
  %169 = fcmp une double %168, 1.000000e+00
  br i1 %169, label %170, label %171

170:                                              ; preds = %154
  br label %181

171:                                              ; preds = %154
  %172 = load i32, i32* @PLAYEREVENT_DENIEDREWARD, align 4
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = xor i32 %179, %172
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %171, %170, %153, %141, %124, %107, %97, %89
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %75

184:                                              ; preds = %75
  %185 = load i32, i32* @RESPAWN_POWERUP, align 4
  ret i32 %185
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32) #1

declare dso_local i32 @AngleVectors(i32, i32, i32*, i32*) #1

declare dso_local double @DotProduct(i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_23__*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
