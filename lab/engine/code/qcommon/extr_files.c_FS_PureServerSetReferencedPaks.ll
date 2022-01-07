; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_PureServerSetReferencedPaks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_PureServerSetReferencedPaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SEARCH_PATHS = common dso_local global i32 0, align 4
@fs_serverReferencedPaks = common dso_local global i32* null, align 8
@fs_serverReferencedPakNames = common dso_local global i32** null, align 8
@fs_numServerReferencedPaks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_PureServerSetReferencedPaks(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @Cmd_TokenizeString(i8* %8)
  %10 = call i32 (...) @Cmd_Argc()
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MAX_SEARCH_PATHS, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @Cmd_Argv(i32 %22)
  %24 = call i32 @atoi(i32 %23)
  %25 = load i32*, i32** @fs_serverReferencedPaks, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %17

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32**, i32*** @fs_serverReferencedPakNames, align 8
  %36 = call i32 @ARRAY_LEN(i32** %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i32**, i32*** @fs_serverReferencedPakNames, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32**, i32*** @fs_serverReferencedPakNames, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @Z_Free(i32* %50)
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32**, i32*** @fs_serverReferencedPakNames, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @Cmd_TokenizeString(i8* %69)
  %71 = call i32 (...) @Cmd_Argc()
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %68
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @Cmd_Argv(i32 %83)
  %85 = call i32* @CopyString(i32 %84)
  %86 = load i32**, i32*** @fs_serverReferencedPakNames, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %85, i32** %89, align 8
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %78

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %63, %60
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* @fs_numServerReferencedPaks, align 4
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @ARRAY_LEN(i32**) #1

declare dso_local i32 @Z_Free(i32*) #1

declare dso_local i32* @CopyString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
