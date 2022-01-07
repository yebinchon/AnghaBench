; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_localaddr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_localaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @localaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @localaddr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %109

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @generic(i32 %12)
  switch i32 %13, label %85 [
    i32 129, label %14
    i32 131, label %14
    i32 133, label %14
    i32 134, label %15
    i32 135, label %15
    i32 128, label %20
    i32 132, label %20
    i32 130, label %41
  ]

14:                                               ; preds = %9, %9, %9
  store i32* null, i32** %2, align 8
  br label %109

15:                                               ; preds = %9, %9
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %2, align 8
  br label %109

20:                                               ; preds = %9, %9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32* @localaddr(%struct.TYPE_5__* %32)
  store i32* %33, i32** %2, align 8
  br label %109

34:                                               ; preds = %20
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32* @localaddr(%struct.TYPE_5__* %39)
  store i32* %40, i32** %2, align 8
  br label %109

41:                                               ; preds = %9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 128
  br label %57

57:                                               ; preds = %48, %41
  %58 = phi i1 [ false, %41 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %67, i64 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32* @localaddr(%struct.TYPE_5__* %69)
  store i32* %70, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32*, i32** %4, align 8
  store i32* %73, i32** %2, align 8
  br label %109

74:                                               ; preds = %57
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %77, i64 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32* @localaddr(%struct.TYPE_5__* %83)
  store i32* %84, i32** %2, align 8
  br label %109

85:                                               ; preds = %9
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %85
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %95, i64 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = call i32* @localaddr(%struct.TYPE_5__* %97)
  store i32* %98, i32** %5, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32*, i32** %5, align 8
  store i32* %101, i32** %2, align 8
  br label %109

102:                                              ; preds = %92, %85
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %105, i64 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = call i32* @localaddr(%struct.TYPE_5__* %107)
  store i32* %108, i32** %2, align 8
  br label %109

109:                                              ; preds = %102, %100, %74, %72, %34, %27, %15, %14, %8
  %110 = load i32*, i32** %2, align 8
  ret i32* %110
}

declare dso_local i32 @generic(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
