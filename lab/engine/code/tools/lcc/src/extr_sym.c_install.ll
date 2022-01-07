; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_install.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, %struct.entry**, %struct.TYPE_8__* }
%struct.entry = type { %struct.TYPE_8__, %struct.entry* }

@HASHSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @install(i8* %0, %struct.TYPE_7__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.entry*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i32, i32* @HASHSIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = and i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br label %29

29:                                               ; preds = %23, %4
  %30 = phi i1 [ true, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.TYPE_7__* @table(%struct.TYPE_7__* %42, i32 %43)
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %45, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %9, align 8
  br label %46

46:                                               ; preds = %41, %35, %29
  %47 = load %struct.entry*, %struct.entry** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @NEW0(%struct.entry* %47, i32 %48)
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.entry*, %struct.entry** %10, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.entry*, %struct.entry** %10, align 8
  %56 = getelementptr inbounds %struct.entry, %struct.entry* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.entry*, %struct.entry** %10, align 8
  %62 = getelementptr inbounds %struct.entry, %struct.entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.entry*, %struct.entry** %10, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.entry**, %struct.entry*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.entry*, %struct.entry** %70, i64 %72
  %74 = load %struct.entry*, %struct.entry** %73, align 8
  %75 = load %struct.entry*, %struct.entry** %10, align 8
  %76 = getelementptr inbounds %struct.entry, %struct.entry* %75, i32 0, i32 1
  store %struct.entry* %74, %struct.entry** %76, align 8
  %77 = load %struct.entry*, %struct.entry** %10, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.entry**, %struct.entry*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.entry*, %struct.entry** %80, i64 %82
  store %struct.entry* %77, %struct.entry** %83, align 8
  %84 = load %struct.entry*, %struct.entry** %10, align 8
  %85 = getelementptr inbounds %struct.entry, %struct.entry* %84, i32 0, i32 0
  ret %struct.TYPE_8__* %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @table(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @NEW0(%struct.entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
