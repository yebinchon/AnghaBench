; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_trace.c_tracecall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_trace.c_tracecall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32)* }
%struct.TYPE_14__ = type { i8*, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__** }

@STATIC = common dso_local global i32 0, align 4
@inttype = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@BSS = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_11__* null, align 8
@AUTO = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@frameno = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@INCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c") called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*)* @tracecall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracecall(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load i32, i32* @STATIC, align 4
  %8 = load i32, i32* @inttype, align 4
  %9 = load i32, i32* @GLOBAL, align 4
  %10 = call i8* @genident(i32 %7, i32 %8, i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %6, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = load i32, i32* @BSS, align 4
  %14 = call i32 @defglobal(%struct.TYPE_14__* %12, i32 %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IR, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %17(i32 %22)
  %24 = load i32, i32* @AUTO, align 4
  %25 = load i32, i32* @inttype, align 4
  %26 = load i32, i32* @level, align 4
  %27 = call i8* @genident(i32 %24, i32 %25, i32 %26)
  store i8* %27, i8** @frameno, align 8
  %28 = load i8*, i8** @frameno, align 8
  %29 = call i32 @addlocal(i8* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @appendstr(i8* %32)
  %34 = call i32 @appendstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** @frameno, align 8
  %36 = load i32, i32* @INCR, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = call i32 @idtree(%struct.TYPE_14__* %37)
  %39 = load i32, i32* @inttype, align 4
  %40 = call i32 @consttree(i32 1, i32 %39)
  %41 = call i32 @incr(i32 %36, i32 %38, i32 %40)
  %42 = call i32 @asgn(i8* %35, i32 %41)
  %43 = call i32 @tracevalue(i32 %42, i32 0)
  %44 = call i32 @appendstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %86, %2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %50, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @appendstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %66, i64 %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @appendstr(i8* %72)
  %74 = call i32 @appendstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %79, i64 %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call i32 @idtree(%struct.TYPE_14__* %83)
  %85 = call i32 @tracevalue(i32 %84, i32 0)
  br label %86

86:                                               ; preds = %61
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %45

89:                                               ; preds = %45
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = call i64 @variadic(%struct.TYPE_15__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @appendstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %89
  %98 = call i32 @appendstr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = call i32 @tracefinis(%struct.TYPE_14__* %99)
  ret void
}

declare dso_local i8* @genident(i32, i32, i32) #1

declare dso_local i32 @defglobal(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @addlocal(i8*) #1

declare dso_local i32 @appendstr(i8*) #1

declare dso_local i32 @tracevalue(i32, i32) #1

declare dso_local i32 @asgn(i8*, i32) #1

declare dso_local i32 @incr(i32, i32, i32) #1

declare dso_local i32 @idtree(%struct.TYPE_14__*) #1

declare dso_local i32 @consttree(i32, i32) #1

declare dso_local i64 @variadic(%struct.TYPE_15__*) #1

declare dso_local i32 @tracefinis(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
