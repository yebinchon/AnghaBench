; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_CheckConfig.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_CheckConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@NUM_IVO_TEMPLATES = common dso_local global i32 0, align 4
@s_ivo_templates = common dso_local global %struct.TYPE_12__* null, align 8
@s_graphicsoptions = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_CheckConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_CheckConfig() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %90, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_IVO_TEMPLATES, align 4
  %5 = sub nsw i32 %4, 1
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %93

7:                                                ; preds = %2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %90

17:                                               ; preds = %7
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %90

27:                                               ; preds = %17
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GraphicsOptions_FindDetectedResolution(i32 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %90

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %90

48:                                               ; preds = %38
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %90

58:                                               ; preds = %48
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %90

68:                                               ; preds = %58
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %90

78:                                               ; preds = %68
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @s_ivo_templates, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %1, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %96

90:                                               ; preds = %87, %77, %67, %57, %47, %37, %26, %16
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %2

93:                                               ; preds = %2
  %94 = load i32, i32* @NUM_IVO_TEMPLATES, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  br label %96

96:                                               ; preds = %93, %88
  ret void
}

declare dso_local i64 @GraphicsOptions_FindDetectedResolution(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
