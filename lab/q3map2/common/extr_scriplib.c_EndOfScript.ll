; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_EndOfScript.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_EndOfScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Line %i is incomplete\0A\00", align 1
@scriptline = common dso_local global i32 0, align 4
@script = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"memory buffer\00", align 1
@qtrue = common dso_local global i32 0, align 4
@endofscript = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@SYS_WRN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"WARNING: Attempt to free already freed script buffer\0A\00", align 1
@scriptstack = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"returning to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EndOfScript(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @scriptline, align 4
  %8 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @strcmp(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @qtrue, align 4
  store i32 %16, i32* @endofscript, align 4
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %2, align 4
  br label %53

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @SYS_WRN, align 4
  %25 = call i32 @Sys_FPrintf(i32 %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @free(i32* %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %37 = icmp eq %struct.TYPE_3__* %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @qtrue, align 4
  store i32 %39, i32* @endofscript, align 4
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 -1
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** @script, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @scriptline, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @Sys_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @GetToken(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %38, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

declare dso_local i32 @GetToken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
