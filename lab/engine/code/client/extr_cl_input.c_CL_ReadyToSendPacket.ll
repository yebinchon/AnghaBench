; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_ReadyToSendPacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_ReadyToSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_9__, i64*, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@clc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@CA_ACTIVE = common dso_local global i64 0, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@cl_lanForcePackets = common dso_local global %struct.TYPE_14__* null, align 8
@cl_maxpackets = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"cl_maxpackets\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"125\00", align 1
@PACKET_MASK = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_ReadyToSendPacket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 4), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %8 = load i64, i64* @CA_CINEMATIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %1, align 4
  br label %97

12:                                               ; preds = %6
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 3), align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 1), align 8
  %19 = sub nsw i32 %17, %18
  %20 = icmp slt i32 %19, 50
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %1, align 4
  br label %97

23:                                               ; preds = %16, %12
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %25 = load i64, i64* @CA_ACTIVE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %29 = load i64, i64* @CA_PRIMED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 3), align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 1), align 8
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %1, align 4
  br label %97

42:                                               ; preds = %35, %31, %27, %23
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 2, i32 1, i32 0), align 8
  %44 = load i64, i64* @NA_LOOPBACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @qtrue, align 4
  store i32 %47, i32* %1, align 4
  br label %97

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cl_lanForcePackets, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 2, i32 1, i32 0), align 8
  %55 = call i64 @Sys_IsLANAddress(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @qtrue, align 4
  store i32 %58, i32* %1, align 4
  br label %97

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_maxpackets, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 15
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_maxpackets, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 125
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 2, i32 0), align 8
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @PACKET_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cl, i32 0, i32 0), align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %79, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_maxpackets, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 1000, %90
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %74
  %94 = load i32, i32* @qfalse, align 4
  store i32 %94, i32* %1, align 4
  br label %97

95:                                               ; preds = %74
  %96 = load i32, i32* @qtrue, align 4
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %95, %93, %57, %46, %40, %21, %10
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

declare dso_local i64 @Sys_IsLANAddress(i64) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
