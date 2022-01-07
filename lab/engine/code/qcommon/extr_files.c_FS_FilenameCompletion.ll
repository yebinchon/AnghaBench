; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FilenameCompletion.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FilenameCompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_STRING_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_FilenameCompletion(i8* %0, i8* %1, i64 %2, void (i8*)* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store void (i8*)* %3, void (i8*)** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @MAX_STRING_CHARS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %14, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %15, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i8** @FS_ListFilteredFiles(i8* %20, i8* %21, i32* null, i32* %12, i64 %22)
  store i8** %23, i8*** %11, align 8
  %24 = load i8**, i8*** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @FS_SortFileList(i8** %24, i32 %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %52, %5
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i8**, i8*** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @FS_ConvertPath(i8* %36)
  %38 = load i8**, i8*** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @MAX_STRING_CHARS, align 4
  %44 = call i32 @Q_strncpyz(i8* %19, i8* %42, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = trunc i64 %17 to i32
  %49 = call i32 @COM_StripExtension(i8* %19, i8* %19, i32 %48)
  br label %50

50:                                               ; preds = %47, %31
  %51 = load void (i8*)*, void (i8*)** %9, align 8
  call void %51(i8* %19)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i8**, i8*** %11, align 8
  %57 = call i32 @FS_FreeFileList(i8** %56)
  %58 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8** @FS_ListFilteredFiles(i8*, i8*, i32*, i32*, i64) #2

declare dso_local i32 @FS_SortFileList(i8**, i32) #2

declare dso_local i32 @FS_ConvertPath(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @COM_StripExtension(i8*, i8*, i32) #2

declare dso_local i32 @FS_FreeFileList(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
