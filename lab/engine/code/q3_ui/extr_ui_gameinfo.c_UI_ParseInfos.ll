; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_gameinfo.c_UI_ParseInfos.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_gameinfo.c_UI_ParseInfos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Missing { in info file\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Max infos exceeded\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected end of info file\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\\num\\\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_ARENAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_ParseInfos(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @MAX_INFO_STRING, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %101, %3
  br label %20

20:                                               ; preds = %19
  %21 = call i8* @COM_Parse(i8** %4)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %102

27:                                               ; preds = %20
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %102

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %102

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %40, align 16
  br label %41

41:                                               ; preds = %69, %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* @qtrue, align 4
  %44 = call i8* @COM_ParseExt(i8** %4, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %72

51:                                               ; preds = %42
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %72

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = trunc i64 %13 to i32
  %59 = call i32 @Q_strncpyz(i8* %15, i8* %57, i32 %58)
  %60 = load i32, i32* @qfalse, align 4
  %61 = call i8* @COM_ParseExt(i8** %4, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %56
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @Info_SetValueForKey(i8* %18, i8* %15, i8* %70)
  br label %41

72:                                               ; preds = %55, %49
  %73 = call i64 @strlen(i8* %18)
  %74 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @MAX_ARENAS, align 4
  %77 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %75, %78
  %80 = add nsw i64 %79, 1
  %81 = call i8* @UI_Alloc(i64 %80)
  %82 = load i8**, i8*** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %81, i8** %85, align 8
  %86 = load i8**, i8*** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %72
  %93 = load i8**, i8*** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcpy(i8* %97, i8* %18)
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %92, %72
  br label %19

102:                                              ; preds = %37, %31, %26
  %103 = load i32, i32* %8, align 4
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @COM_Parse(i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i8* @COM_ParseExt(i8**, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i8* @UI_Alloc(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @va(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
