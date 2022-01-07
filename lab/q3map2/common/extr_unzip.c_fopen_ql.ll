; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_fopen_ql.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_fopen_ql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@MAX_FILE_HANDLES = common dso_local global i32 0, align 4
@xored_open_files = common dso_local global i32** null, align 8
@xor_max_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error couldn't find a spot for %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fopen_ql(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @fopen(i8* %16, i8* %17)
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %15, %12, %2
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fread(i8* %23, i32 1, i32 4, i32* %24)
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 80
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 75
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %35, %30, %22
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i32 @fseek(i32* %42, i32 0, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  store i32* %48, i32** %3, align 8
  br label %83

49:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAX_FILE_HANDLES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i32**, i32*** @xored_open_files, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = load i32**, i32*** @xored_open_files, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* %62, i32** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @xor_max_pos, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* @xor_max_pos, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load i32*, i32** %6, align 8
  store i32* %73, i32** %3, align 8
  br label %83

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %79)
  store i32* null, i32** %3, align 8
  br label %83

81:                                               ; preds = %19
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %78, %72, %47
  %84 = load i32*, i32** %3, align 8
  ret i32* %84
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
