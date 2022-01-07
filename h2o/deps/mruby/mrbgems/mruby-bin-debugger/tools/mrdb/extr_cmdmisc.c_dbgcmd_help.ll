; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_dbgcmd_help.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_cmdmisc.c_dbgcmd_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32** }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid command \22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\22. Try \22help\22.\0A\00", align 1
@DBGST_PROMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgcmd_help(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %31 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %12
    i32 3, label %19
  ]

10:                                               ; preds = %2, %2
  %11 = call i32 (...) @show_short_help()
  store i32 %11, i32* %5, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @show_long_help(i32* %17, i32* null)
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @show_long_help(i32* %24, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %19, %12, %10
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %57, %36
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 1
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32* %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %38

60:                                               ; preds = %38
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %33
  %63 = load i32, i32* @DBGST_PROMPT, align 4
  ret i32 %63
}

declare dso_local i32 @show_short_help(...) #1

declare dso_local i32 @show_long_help(i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
