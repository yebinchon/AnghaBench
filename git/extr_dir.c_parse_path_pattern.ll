; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_parse_path_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_parse_path_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATTERN_FLAG_NEGATIVE = common dso_local global i32 0, align 4
@PATTERN_FLAG_MUSTBEDIR = common dso_local global i32 0, align 4
@PATTERN_FLAG_NODIR = common dso_local global i32 0, align 4
@PATTERN_FLAG_ENDSWITH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_path_pattern(i8** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 33
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @PATTERN_FLAG_NEGATIVE, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* @PATTERN_FLAG_MUSTBEDIR, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %31, %26
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 47
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %47

63:                                               ; preds = %58, %47
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @PATTERN_FLAG_NODIR, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @simple_length(i8* %73)
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %72
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 42
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = call i64 @no_wildcard(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i32, i32* @PATTERN_FLAG_ENDSWITH, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %90, %85
  %101 = load i8*, i8** %9, align 8
  %102 = load i8**, i8*** %5, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i64, i64* %11, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @simple_length(i8*) #1

declare dso_local i64 @no_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
