; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowReachableAreas.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowReachableAreas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 (i32, i8*)* }

@AAS_ShowReachableAreas.reach = internal global %struct.TYPE_7__ zeroinitializer, align 4
@AAS_ShowReachableAreas.index = internal global i32 0, align 4
@AAS_ShowReachableAreas.lastareanum = internal global i32 0, align 4
@AAS_ShowReachableAreas.lasttime = internal global float 0.000000e+00, align 4
@aasworld = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ShowReachableAreas(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AAS_ShowReachableAreas.lastareanum, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  store i32 0, i32* @AAS_ShowReachableAreas.index, align 4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @AAS_ShowReachableAreas.lastareanum, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 1), align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 %12
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %54

19:                                               ; preds = %9
  %20 = load i32, i32* @AAS_ShowReachableAreas.index, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* @AAS_ShowReachableAreas.index, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = call float (...) @AAS_Time()
  %28 = load float, float* @AAS_ShowReachableAreas.lasttime, align 4
  %29 = fsub float %27, %28
  %30 = fpext float %29 to double
  %31 = fcmp ogt double %30, 1.500000e+00
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aasworld, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AAS_ShowReachableAreas.index, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  %41 = call i32 @Com_Memcpy(%struct.TYPE_7__* @AAS_ShowReachableAreas.reach, i32* %40, i32 4)
  %42 = load i32, i32* @AAS_ShowReachableAreas.index, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @AAS_ShowReachableAreas.index, align 4
  %44 = call float (...) @AAS_Time()
  store float %44, float* @AAS_ShowReachableAreas.lasttime, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AAS_ShowReachableAreas.reach, i32 0, i32 0), align 4
  %46 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @AAS_PrintTravelType(i32 %47)
  %49 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @botimport, i32 0, i32 0), align 8
  %50 = load i32, i32* @PRT_MESSAGE, align 4
  %51 = call i32 %49(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %32, %26
  %53 = call i32 @AAS_ShowReachability(%struct.TYPE_7__* @AAS_ShowReachableAreas.reach)
  br label %54

54:                                               ; preds = %52, %18
  ret void
}

declare dso_local float @AAS_Time(...) #1

declare dso_local i32 @Com_Memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @AAS_PrintTravelType(i32) #1

declare dso_local i32 @AAS_ShowReachability(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
