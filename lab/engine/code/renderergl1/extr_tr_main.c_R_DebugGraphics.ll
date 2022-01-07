; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_DebugGraphics.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_DebugGraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32)* }

@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@r_debugSurface = common dso_local global %struct.TYPE_8__* null, align 8
@CT_FRONT_SIDED = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@R_DebugPolygon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DebugGraphics() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1, i32 0), align 4
  %2 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_debugSurface, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %21

12:                                               ; preds = %6
  %13 = call i32 (...) @R_IssuePendingRenderCommands()
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 4
  %15 = call i32 @GL_Bind(i32 %14)
  %16 = load i32, i32* @CT_FRONT_SIDED, align 4
  %17 = call i32 @GL_Cull(i32 %16)
  %18 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %19 = load i32, i32* @R_DebugPolygon, align 4
  %20 = call i32 %18(i32 %19)
  br label %21

21:                                               ; preds = %12, %11, %5
  ret void
}

declare dso_local i32 @R_IssuePendingRenderCommands(...) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @GL_Cull(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
