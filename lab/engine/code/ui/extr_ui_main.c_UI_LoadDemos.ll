; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_LoadDemos.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_LoadDemos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@NAMEBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"com_legacyprotocol\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"com_protocol\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c".%s%d\00", align 1
@DEMOEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"demos\00", align 1
@uiInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_DEMOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_LoadDemos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_LoadDemos() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @NAMEBUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %0
  %19 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = load i32, i32* @DEMOEXT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @Com_sprintf(i8* %26, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %28)
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %31 = call i32 @ARRAY_LEN(i8* %13)
  %32 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* %13, i32 %31)
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  store i8* %13, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %87, %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %90

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %38 = load i32, i32* @MAX_DEMOS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MAX_DEMOS, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @String_Alloc(i8* %50)
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 1), align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i8*, i8** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %72 = load i32, i32* @MAX_DEMOS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %76 = load i32, i32* @DEMOEXT, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @Com_sprintf(i8* %75, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %80 = call i32 @ARRAY_LEN(i8* %13)
  %81 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %13, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uiInfo, i32 0, i32 0), align 8
  store i8* %13, i8** %4, align 8
  br label %85

84:                                               ; preds = %70, %67
  br label %90

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %33

90:                                               ; preds = %84, %33
  %91 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #2

declare dso_local i32 @ARRAY_LEN(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @String_Alloc(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
