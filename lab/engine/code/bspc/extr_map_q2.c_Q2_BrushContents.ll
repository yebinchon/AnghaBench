; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_BrushContents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_BrushContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }

@texinfo = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Entity %i, Brush %i: mixed face contents\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"texture name = %s\0A\00", align 1
@SURF_TRANS33 = common dso_local global i32 0, align 4
@SURF_TRANS66 = common dso_local global i32 0, align 4
@CONTENTS_Q2TRANSLUCENT = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Q2_BrushContents(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 0
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @texinfo, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %65, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @texinfo, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %27
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @Log_Print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @texinfo, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @Log_Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %70

64:                                               ; preds = %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 1
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %4, align 8
  br label %21

70:                                               ; preds = %48, %21
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SURF_TRANS33, align 4
  %73 = load i32, i32* @SURF_TRANS66, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %70
  %78 = load i32, i32* @CONTENTS_Q2TRANSLUCENT, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @CONTENTS_SOLID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load i32, i32* @CONTENTS_SOLID, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* @CONTENTS_WINDOW, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %77
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @Log_Print(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
