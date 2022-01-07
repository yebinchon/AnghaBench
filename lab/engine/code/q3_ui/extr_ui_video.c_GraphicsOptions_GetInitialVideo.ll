; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_GetInitialVideo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_GraphicsOptions_GetInitialVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@s_graphicsoptions = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@s_ivo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_GetInitialVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_GetInitialVideo() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 9), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 8), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 7), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 6), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 5), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 4), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 3), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 2), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_ivo, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
