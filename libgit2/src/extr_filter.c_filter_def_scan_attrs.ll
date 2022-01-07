; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_def_scan_attrs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_def_scan_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i8*)* @filter_def_scan_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_def_scan_attrs(i32* %0, i64* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i64*, i64** %8, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %7, align 8
  store i64 0, i64* %15, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %107

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %105, %19
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @git__isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %11, align 8
  br label %25

33:                                               ; preds = %25
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %55, %33
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @git__isspace(i8 signext %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %35
  %47 = phi i1 [ false, %35 ], [ %45, %40 ]
  br i1 %47, label %48, label %58

48:                                               ; preds = %46
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %35

58:                                               ; preds = %46
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ugt i8* %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 33
  br i1 %82, label %83, label %87

83:                                               ; preds = %78, %73, %68, %62
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @git_buf_putc(i32* %91, i8 signext 61)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @git_buf_put(i32* %94, i8* %95, i32 %101)
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @git_buf_putc(i32* %103, i8 signext 0)
  br label %105

105:                                              ; preds = %93, %58
  br label %20

106:                                              ; preds = %20
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %18
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @git__isspace(i8 signext) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
