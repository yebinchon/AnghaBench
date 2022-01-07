; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_prune.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_11__**, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@RX = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(clobbering %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__** (%struct.TYPE_11__*, %struct.TYPE_11__**)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__** @prune(%struct.TYPE_11__* %0, %struct.TYPE_11__** %1) #0 {
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %5, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__** %9, %struct.TYPE_11__*** %3, align 8
  br label %124

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %14, i64 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %19, i64 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %10
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %34, i64 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %43 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %41, %struct.TYPE_11__** %42)
  %44 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %36, %struct.TYPE_11__** %43)
  store %struct.TYPE_11__** %44, %struct.TYPE_11__*** %3, align 8
  br label %124

45:                                               ; preds = %10
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %47, align 8
  %49 = load i64, i64* @RX, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %48, i64 %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %102

53:                                               ; preds = %45
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %55, align 8
  %57 = load i64, i64* @RX, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %56, i64 %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = load i64, i64* @RX, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %102

74:                                               ; preds = %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @stderr, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %80, align 8
  %82 = load i64, i64* @RX, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @fprint(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = call i32 @debug(i32 %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %96, i64 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %100 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %98, %struct.TYPE_11__** %99)
  %101 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %93, %struct.TYPE_11__** %100)
  store %struct.TYPE_11__** %101, %struct.TYPE_11__*** %3, align 8
  br label %124

102:                                              ; preds = %63, %53, %45
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %105, i64 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %110, i64 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %116, i64 0
  %118 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %112, %struct.TYPE_11__** %117)
  %119 = call %struct.TYPE_11__** @prune(%struct.TYPE_11__* %107, %struct.TYPE_11__** %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %121, align 8
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 1
  store %struct.TYPE_11__** %123, %struct.TYPE_11__*** %3, align 8
  br label %124

124:                                              ; preds = %102, %74, %31, %8
  %125 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  ret %struct.TYPE_11__** %125
}

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @fprint(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
