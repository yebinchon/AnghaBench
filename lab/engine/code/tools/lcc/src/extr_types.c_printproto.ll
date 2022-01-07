; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_printproto.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_printproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }

@voidtype = common dso_local global %struct.TYPE_15__* null, align 8
@PERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printproto(%struct.TYPE_14__* %0, %struct.TYPE_14__** %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %4, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = call i32 @printdecl(%struct.TYPE_14__* %16, %struct.TYPE_15__* %19)
  br label %62

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %22, i64 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @voidtype, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @append(%struct.TYPE_15__* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %52

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %32, i64 %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %39, i64 %41
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @append(%struct.TYPE_15__* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @freturn(%struct.TYPE_15__* %56)
  %58 = load i32, i32* @PERM, align 4
  %59 = call i32 @ltov(i32* %6, i32 %58)
  %60 = call %struct.TYPE_15__* @func(i32 %57, i32 %59, i32 0)
  %61 = call i32 @printdecl(%struct.TYPE_14__* %53, %struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %52, %15
  ret void
}

declare dso_local i32 @printdecl(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @append(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @func(i32, i32, i32) #1

declare dso_local i32 @freturn(%struct.TYPE_15__*) #1

declare dso_local i32 @ltov(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
