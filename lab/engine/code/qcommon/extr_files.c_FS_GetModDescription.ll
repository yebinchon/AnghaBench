; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_GetModDescription.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_GetModDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INSTALL_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s%cdescription.txt\00", align 1
@PATH_SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_GetModDescription(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MAX_INSTALL_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = trunc i64 %13 to i32
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @PATH_SEP, align 4
  %19 = call i32 @Com_sprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = call i32 @FS_SV_FOpenFileRead(i8* %15, i64* %7)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = call i32* @FS_FileForHandle(i64 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @Com_Memset(i8* %26, i32 0, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @fread(i8* %29, i32 1, i32 %30, i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %23
  br label %46

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @Q_strncpyz(i8* %42, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @FS_FCloseFile(i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i8*, i64*) #2

declare dso_local i32* @FS_FileForHandle(i64) #2

declare dso_local i32 @Com_Memset(i8*, i32, i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @FS_FCloseFile(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
