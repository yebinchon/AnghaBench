; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__new_node.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_yoml-parser.h_yoml__new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i32, i32, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i8*, i64, i64, i32*, i32*, %struct.TYPE_13__*)* @yoml__new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @yoml__new_node(i8* %0, i64 %1, i64 %2, i32* %3, i32* %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.TYPE_12__* @malloc(i64 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %13, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i8*, i8** %7, align 8
  %20 = call i32* @strdup(i8* %19)
  br label %22

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32* [ %20, %18 ], [ null, %21 ]
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %22
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %49 [
    i32 128, label %44
    i32 129, label %44
  ]

44:                                               ; preds = %38, %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %44
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = call i32* @yoml__strdup(i32* %61)
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32* [ %62, %60 ], [ null, %63 ]
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @yoml__strdup(i32* %71)
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32* [ %72, %70 ], [ null, %73 ]
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  ret %struct.TYPE_12__* %80
}

declare dso_local %struct.TYPE_12__* @malloc(i64) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @yoml__strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
