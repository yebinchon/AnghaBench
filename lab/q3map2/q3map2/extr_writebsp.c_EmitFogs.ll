; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitFogs.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_writebsp.c_EmitFogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@numMapFogs = common dso_local global i32 0, align 4
@numBSPFogs = common dso_local global i32 0, align 4
@bspFogs = common dso_local global %struct.TYPE_10__* null, align 8
@mapFogs = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Fog %d has visible side %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitFogs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @numMapFogs, align 4
  store i32 %3, i32* @numBSPFogs, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %110, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @numMapFogs, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %113

8:                                                ; preds = %4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %14, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = icmp eq %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  br label %109

42:                                               ; preds = %8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %42
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  br label %110

75:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %2, align 4
  %78 = icmp slt i32 %77, 6
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapFogs, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %79
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @Sys_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bspFogs, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 4
  br label %108

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %76

108:                                              ; preds = %94, %76
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %109, %63
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %1, align 4
  br label %4

113:                                              ; preds = %4
  ret void
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @Sys_Printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
