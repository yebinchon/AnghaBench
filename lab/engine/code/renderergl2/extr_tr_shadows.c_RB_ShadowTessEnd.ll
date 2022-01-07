; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shadows.c_RB_ShadowTessEnd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shadows.c_RB_ShadowTessEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, float**, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@CT_BACK_SIDED = common dso_local global i32 0, align 4
@CT_FRONT_SIDED = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ZERO = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GL_ALWAYS = common dso_local global i32 0, align 4
@GL_COLOR_WRITEMASK = common dso_local global i32 0, align 4
@GL_DECR = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_INCR = common dso_local global i32 0, align 4
@GL_KEEP = common dso_local global i32 0, align 4
@GL_STENCIL_TEST = common dso_local global i32 0, align 4
@TB_COLORMAP = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@facing = common dso_local global i32* null, align 8
@glConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@numEdgeDefs = common dso_local global i32 0, align 4
@shadowXyz = common dso_local global i32* null, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ShadowTessEnd() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
