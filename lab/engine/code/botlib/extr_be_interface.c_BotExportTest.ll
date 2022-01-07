; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_interface.c_BotExportTest.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_interface.c_BotExportTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_23__*, i64, %struct.TYPE_19__*, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i32 (...)*, i32 (i32, double*, i32, i32)*, i32 (i32, i8*, double, double, double, i32)* }
%struct.TYPE_25__ = type { i32, double* }
%struct.TYPE_24__ = type { double, i32, %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_22__ = type { i32 }

@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AREACONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@AREACONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@AREACONTENTS_VIEWPORTAL = common dso_local global i32 0, align 4
@AREACONTENTS_WATER = common dso_local global i32 0, align 4
@LINECOLOR_BLUE = common dso_local global i32 0, align 4
@LINECOLOR_GREEN = common dso_local global i32 0, align 4
@LINECOLOR_RED = common dso_local global i32 0, align 4
@LINECOLOR_YELLOW = common dso_local global i32 0, align 4
@MASK_PLAYERSOLID = common dso_local global i32 0, align 4
@MAX_AVOIDREACH = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@TFL_DEFAULT = common dso_local global i32 0, align 4
@TFL_FUNCBOB = common dso_local global i32 0, align 4
@TFL_ROCKETJUMP = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@botimport = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@botlibglobals = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@bsptrace = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@ent = common dso_local global %struct.TYPE_23__* null, align 8
@face = common dso_local global i64 0, align 8
@trace = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotExportTest(i32 %0, i8* %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
