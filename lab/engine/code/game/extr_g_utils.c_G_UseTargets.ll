; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_UseTargets.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_utils.c_G_UseTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { double }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)*, i32, %struct.TYPE_11__*, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }

@level = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CS_SHADERSTATE = common dso_local global i32 0, align 4
@targetname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: Entity used itself.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"entity was removed while using targets\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_UseTargets(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = icmp ne %struct.TYPE_12__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %117

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load double, double* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %22 = fmul double %21, 1.000000e-03
  %23 = fptrunc double %22 to float
  store float %23, float* %6, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load float, float* %6, align 4
  %31 = call i32 @AddRemap(i64 %26, i64 %29, float %30)
  %32 = load i32, i32* @CS_SHADERSTATE, align 4
  %33 = call i32 (...) @BuildShaderStateConfig()
  %34 = call i32 @trap_SetConfigstring(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %20, %15, %10
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %117

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @dmlab_can_trigger(i32 %49, i32 %52, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %117

60:                                               ; preds = %46, %41
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = call i64 @dmlab_override_trigger(i32 %68, i32 %71, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %117

79:                                               ; preds = %65, %60
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %80

80:                                               ; preds = %116, %79
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = load i32, i32* @targetname, align 4
  %83 = call i32 @FOFS(i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.TYPE_12__* @G_Find(%struct.TYPE_12__* %81, i32 %83, i32 %86)
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %5, align 8
  %88 = icmp ne %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %117

89:                                               ; preds = %80
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = icmp eq %struct.TYPE_12__* %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = call i32 @G_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %109

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)** %97, align 8
  %99 = icmp ne i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)** %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = call i32 %103(%struct.TYPE_12__* %104, %struct.TYPE_12__* %105, %struct.TYPE_12__* %106)
  br label %108

108:                                              ; preds = %100, %95
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 @G_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %117

116:                                              ; preds = %109
  br label %80

117:                                              ; preds = %9, %40, %59, %78, %114, %80
  ret void
}

declare dso_local i32 @AddRemap(i64, i64, float) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @BuildShaderStateConfig(...) #1

declare dso_local i32 @dmlab_can_trigger(i32, i32, i32*) #1

declare dso_local i64 @dmlab_override_trigger(i32, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @G_Find(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i32 @G_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
