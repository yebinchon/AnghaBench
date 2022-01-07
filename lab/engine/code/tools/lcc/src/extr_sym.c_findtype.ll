; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_findtype.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_findtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.entry**, %struct.TYPE_6__* }
%struct.entry = type { %struct.TYPE_7__, %struct.entry* }
%struct.TYPE_7__ = type { i64, i64 }

@identifiers = common dso_local global %struct.TYPE_6__* null, align 8
@HASHSIZE = common dso_local global i32 0, align 4
@TYPEDEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @findtype(i64 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.entry*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @identifiers, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_6__* %8)
  br label %10

10:                                               ; preds = %53, %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %49, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HASHSIZE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.entry**, %struct.entry*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.entry*, %struct.entry** %18, i64 %20
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  store %struct.entry* %22, %struct.entry** %6, align 8
  br label %23

23:                                               ; preds = %44, %15
  %24 = load %struct.entry*, %struct.entry** %6, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load %struct.entry*, %struct.entry** %6, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.entry*, %struct.entry** %6, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TYPEDEF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.entry*, %struct.entry** %6, align 8
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 0
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %2, align 8
  br label %59

43:                                               ; preds = %33, %26
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.entry*, %struct.entry** %6, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 1
  %47 = load %struct.entry*, %struct.entry** %46, align 8
  store %struct.entry* %47, %struct.entry** %6, align 8
  br label %23

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %11

52:                                               ; preds = %11
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %4, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %10, label %58

58:                                               ; preds = %53
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %60
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
