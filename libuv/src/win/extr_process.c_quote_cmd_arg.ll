; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_quote_cmd_arg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_quote_cmd_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 32, i32 9, i32 34, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 34, i32 92, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quote_cmd_arg(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @wcslen(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 34, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %5, align 8
  store i32 34, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %3, align 8
  br label %102

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @wcspbrk(i32* %21, i8* bitcast ([4 x i32]* @.str to i8*))
  %23 = icmp eq i32* null, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @wcsncpy(i32* %25, i32* %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  store i32* %32, i32** %3, align 8
  br label %102

33:                                               ; preds = %20
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @wcspbrk(i32* %34, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %36 = icmp eq i32* null, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  store i32 34, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @wcsncpy(i32* %40, i32* %41, i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %5, align 8
  store i32 34, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  store i32* %49, i32** %3, align 8
  br label %102

50:                                               ; preds = %33
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  store i32 34, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  store i32* %53, i32** %9, align 8
  store i32 1, i32* %8, align 4
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %91, %50
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %7, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %5, align 8
  store i32 92, i32* %76, align 4
  br label %90

78:                                               ; preds = %68, %58
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 34
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  store i32 1, i32* %8, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %5, align 8
  store i32 92, i32* %86, align 4
  br label %89

88:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %7, align 8
  br label %55

94:                                               ; preds = %55
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 0, i32* %96, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @wcsrev(i32* %97)
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  store i32 34, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  store i32* %101, i32** %3, align 8
  br label %102

102:                                              ; preds = %94, %37, %24, %14
  %103 = load i32*, i32** %3, align 8
  ret i32* %103
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32* @wcspbrk(i32*, i8*) #1

declare dso_local i32 @wcsncpy(i32*, i32*, i64) #1

declare dso_local i32 @wcsrev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
