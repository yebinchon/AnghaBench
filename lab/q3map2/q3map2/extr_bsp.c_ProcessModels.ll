; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessModels.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bsp.c_ProcessModels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@verbose = common dso_local global i32 0, align 4
@mapEntityNum = common dso_local global i64 0, align 8
@numEntities = common dso_local global i64 0, align 8
@entities = common dso_local global %struct.TYPE_3__* null, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"############### model %i ###############\0A\00", align 1
@numBSPModels = common dso_local global i32 0, align 4
@verboseEntities = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessModels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i32, i32* @verbose, align 4
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @BeginBSPFile()
  %5 = call i32 (...) @CreateMapFogs()
  store i64 0, i64* @mapEntityNum, align 8
  br label %6

6:                                                ; preds = %36, %0
  %7 = load i64, i64* @mapEntityNum, align 8
  %8 = load i64, i64* @numEntities, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @entities, align 8
  %12 = load i64, i64* @mapEntityNum, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %12
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %2, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %36

24:                                               ; preds = %18, %10
  %25 = load i32, i32* @SYS_VRB, align 4
  %26 = load i32, i32* @numBSPModels, align 4
  %27 = call i32 @Sys_FPrintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* @mapEntityNum, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 (...) @ProcessWorldModel()
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (...) @ProcessSubModel()
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* @verboseEntities, align 4
  store i32 %35, i32* @verbose, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i64, i64* @mapEntityNum, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @mapEntityNum, align 8
  br label %6

39:                                               ; preds = %6
  %40 = load i32, i32* %1, align 4
  store i32 %40, i32* @verbose, align 4
  %41 = call i32 (...) @EmitFogs()
  ret void
}

declare dso_local i32 @BeginBSPFile(...) #1

declare dso_local i32 @CreateMapFogs(...) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32) #1

declare dso_local i32 @ProcessWorldModel(...) #1

declare dso_local i32 @ProcessSubModel(...) #1

declare dso_local i32 @EmitFogs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
