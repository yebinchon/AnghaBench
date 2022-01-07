; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_trace.c_tracefinis.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_trace.c_tracefinis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__** }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }

@fp = common dso_local global i64* null, align 8
@fmt = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_13__* null, align 8
@ARG = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@charptype = common dso_local global i32 0, align 4
@fmtend = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @tracefinis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracefinis(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__**, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load i64*, i64** @fp, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @fmt, align 4
  %7 = call i32 @string(i32 %6)
  %8 = call %struct.TYPE_14__* @mkstr(i32 %7)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__** @args, %struct.TYPE_13__*** %3, align 8
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %18, i64 1
  store %struct.TYPE_13__** %19, %struct.TYPE_13__*** %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load i64, i64* @ARG, align 8
  %22 = load i64, i64* @P, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @charptype, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = call i32 @idtree(%struct.TYPE_14__* %29)
  %31 = call i32 @pointer(i32 %30)
  %32 = call %struct.TYPE_13__* @tree(i64 %23, i32 %24, i32 %31, i32 0)
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %3, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = call i32 @idtree(%struct.TYPE_14__* %34)
  %36 = call i32 @pointer(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @freturn(i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @args, align 8
  %42 = call i32 @calltree(i32 %36, i32 %40, %struct.TYPE_13__* %41, i32* null)
  %43 = call i32 @walk(i32 %42, i32 0, i32 0)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @args, align 8
  store i64* null, i64** @fmtend, align 8
  store i64* null, i64** @fp, align 8
  ret void
}

declare dso_local %struct.TYPE_14__* @mkstr(i32) #1

declare dso_local i32 @string(i32) #1

declare dso_local %struct.TYPE_13__* @tree(i64, i32, i32, i32) #1

declare dso_local i32 @pointer(i32) #1

declare dso_local i32 @idtree(%struct.TYPE_14__*) #1

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @calltree(i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @freturn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
