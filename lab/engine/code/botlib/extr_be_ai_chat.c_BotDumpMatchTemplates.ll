; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotDumpMatchTemplates.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_chat.c_BotDumpMatchTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@MT_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@MT_VARIABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" = (%d, %d);}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDumpMatchTemplates(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = call i32* (...) @Log_FilePointer()
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %96

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  br label %13

13:                                               ; preds = %92, %11
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %96

16:                                               ; preds = %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %5, align 8
  br label %22

22:                                               ; preds = %79, %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MT_STRING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %6, align 8
  br label %35

35:                                               ; preds = %52, %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %6, align 8
  br label %35

56:                                               ; preds = %35
  br label %70

57:                                               ; preds = %25
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MT_VARIABLE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %5, align 8
  br label %22

83:                                               ; preds = %22
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %4, align 8
  br label %13

96:                                               ; preds = %10, %13
  ret void
}

declare dso_local i32* @Log_FilePointer(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
