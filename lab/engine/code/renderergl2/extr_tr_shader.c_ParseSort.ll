; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ParseSort.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shader.c_ParseSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_3__ = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WARNING: missing sort parameter in shader '%s'\0A\00", align 1
@shader = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"portal\00", align 1
@SS_PORTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"sky\00", align 1
@SS_ENVIRONMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@SS_OPAQUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"decal\00", align 1
@SS_DECAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"seeThrough\00", align 1
@SS_SEE_THROUGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"banner\00", align 1
@SS_BANNER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"additive\00", align 1
@SS_BLEND1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1
@SS_NEAREST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"underwater\00", align 1
@SS_UNDERWATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseSort(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %4 = load i8**, i8*** %2, align 8
  %5 = load i32, i32* @qfalse, align 4
  %6 = call i8* @COM_ParseExt(i8** %4, i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRINT_WARNING, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 1), align 4
  %16 = call i32 %13(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %82

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @Q_stricmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @SS_PORTAL, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %82

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @Q_stricmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @SS_ENVIRONMENT, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %81

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @Q_stricmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @SS_OPAQUE, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %80

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @Q_stricmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @SS_DECAL, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %79

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @Q_stricmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @SS_SEE_THROUGH, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %78

47:                                               ; preds = %41
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @Q_stricmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @SS_BANNER, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %77

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @Q_stricmp(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @SS_BLEND1, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %76

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @Q_stricmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @SS_NEAREST, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %75

65:                                               ; preds = %59
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @SS_UNDERWATER, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %74

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @atof(i8* %72)
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shader, i32 0, i32 0), align 4
  br label %74

74:                                               ; preds = %71, %69
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %51
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %79, %33
  br label %81

81:                                               ; preds = %80, %27
  br label %82

82:                                               ; preds = %12, %81, %21
  ret void
}

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
