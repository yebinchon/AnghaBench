; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_main.c_AAS_ContinueInit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_main.c_AAS_ContinueInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@aasworld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"forcewrite\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"aasoptimize\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@botimport = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRT_MESSAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s written successfully\0A\00", align 1
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"couldn't write %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ContinueInit(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 3), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %47

6:                                                ; preds = %1
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %47

10:                                               ; preds = %6
  %11 = load float, float* %2, align 4
  %12 = call i64 @AAS_ContinueInitReachability(float %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %47

15:                                               ; preds = %10
  %16 = call i32 (...) @AAS_InitClustering()
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = trunc i64 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19, %15
  %24 = call i64 @LibVarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %25 = trunc i64 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @AAS_Optimize()
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %31 = call i64 @AAS_WriteAASFile(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botimport, i32 0, i32 0), align 8
  %35 = load i32, i32* @PRT_MESSAGE, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %37 = call i32 %34(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %29
  %39 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @botimport, i32 0, i32 0), align 8
  %40 = load i32, i32* @PRT_ERROR, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %42 = call i32 %39(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %19
  %45 = call i32 (...) @AAS_InitRouting()
  %46 = call i32 (...) @AAS_SetInitialized()
  br label %47

47:                                               ; preds = %44, %14, %9, %5
  ret void
}

declare dso_local i64 @AAS_ContinueInitReachability(float) #1

declare dso_local i32 @AAS_InitClustering(...) #1

declare dso_local i64 @LibVarGetValue(i8*) #1

declare dso_local i64 @LibVarValue(i8*, i8*) #1

declare dso_local i32 @AAS_Optimize(...) #1

declare dso_local i64 @AAS_WriteAASFile(i32) #1

declare dso_local i32 @AAS_InitRouting(...) #1

declare dso_local i32 @AAS_SetInitialized(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
