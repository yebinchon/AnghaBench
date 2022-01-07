; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Script_SetColor.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Script_SetColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float*, float*, float*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"backcolor\00", align 1
@WINDOW_BACKCOLORSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"forecolor\00", align 1
@WINDOW_FORECOLORSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bordercolor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_SetColor(%struct.TYPE_5__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = call i64 @String_Parse(i8** %9, i8** %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %74

12:                                               ; preds = %2
  store float** null, float*** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @Q_stricmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store float** %19, float*** %8, align 8
  %20 = load i32, i32* @WINDOW_BACKCOLORSET, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 8
  br label %50

26:                                               ; preds = %12
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store float** %33, float*** %8, align 8
  %34 = load i32, i32* @WINDOW_FORECOLORSET, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  br label %49

40:                                               ; preds = %26
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @Q_stricmp(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store float** %47, float*** %8, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %16
  %51 = load float**, float*** %8, align 8
  %52 = icmp ne float** %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i8**, i8*** %4, align 8
  %59 = call i32 @Float_Parse(i8** %58, float* %7)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %74

62:                                               ; preds = %57
  %63 = load float, float* %7, align 4
  %64 = load float**, float*** %8, align 8
  %65 = load float*, float** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  store float %63, float* %68, align 4
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %50
  br label %74

74:                                               ; preds = %61, %73, %2
  ret void
}

declare dso_local i64 @String_Parse(i8**, i8**) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Float_Parse(i8**, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
