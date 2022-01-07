; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_ReadDollarDirective.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_precomp.c_PC_ReadDollarDirective.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*)*, i64 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"found $ without name\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"found $ at end of line\00", align 1
@TT_NAME = common dso_local global i64 0, align 8
@dollardirectives = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown precompiler directive %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_ReadDollarDirective(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @PC_ReadSourceToken(i32* %6, %struct.TYPE_5__* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 (i32*, i8*, ...) @SourceError(i32* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %2, align 4
  br label %70

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @PC_UnreadSourceToken(i32* %18, %struct.TYPE_5__* %4)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 (i32*, i8*, ...) @SourceError(i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TT_NAME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dollardirectives, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dollardirectives, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcmp(i64 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dollardirectives, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i32*)*, i32 (i32*)** %53, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 %54(i32* %55)
  store i32 %56, i32* %2, align 4
  br label %70

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %29

61:                                               ; preds = %29
  br label %62

62:                                               ; preds = %61, %23
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @PC_UnreadSourceToken(i32* %63, %struct.TYPE_5__* %4)
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, ...) @SourceError(i32* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %48, %17, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @PC_ReadSourceToken(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

declare dso_local i32 @PC_UnreadSourceToken(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
