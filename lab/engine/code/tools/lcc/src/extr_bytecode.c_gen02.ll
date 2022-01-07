; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_bytecode.c_gen02.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_bytecode.c_gen02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, %struct.TYPE_10__** }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@ARG = common dso_local global i64 0, align 8
@argoffset = common dso_local global i32 0, align 4
@CALL = common dso_local global i64 0, align 8
@maxargoffset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @gen02 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen02(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_10__* %3)
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @generic(i32 %7)
  %9 = load i64, i64* @ARG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %14, i64 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %41

30:                                               ; preds = %11
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %33, i64 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %30, %29
  %42 = phi i32 [ 4, %29 ], [ %40, %30 ]
  %43 = load i32, i32* @argoffset, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* @argoffset, align 4
  br label %63

45:                                               ; preds = %1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @generic(i32 %48)
  %50 = load i64, i64* @CALL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i32, i32* @argoffset, align 4
  %54 = load i32, i32* @maxargoffset, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @argoffset, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @maxargoffset, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* @maxargoffset, align 4
  store i32 0, i32* @argoffset, align 4
  br label %62

62:                                               ; preds = %60, %45
  br label %63

63:                                               ; preds = %62, %41
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
