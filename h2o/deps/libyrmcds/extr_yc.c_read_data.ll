; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_read_data.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8**)* @read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_data(i8* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %15, i32* %6, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %90

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %14
  store i64 0, i64* %7, align 8
  store i64 1048576, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @malloc(i64 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8**, i8*** %5, align 8
  store i8* %27, i8** %28, align 8
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %90

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %76
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = sub i64 %35, %36
  %38 = icmp ult i64 %37, 1048576
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = mul i64 %42, 2
  %44 = call i64 @realloc(i8* %41, i64 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8**, i8*** %5, align 8
  store i8* null, i8** %52, align 8
  store i64 0, i64* %3, align 8
  br label %90

53:                                               ; preds = %39
  %54 = load i8*, i8** %9, align 8
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = mul i64 %56, 2
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %53, %34
  %59 = load i32, i32* %6, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = call i32 @read(i32 %59, i8* %63, i32 1048576)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8**, i8*** %5, align 8
  store i8* null, i8** %71, align 8
  store i64 0, i64* %3, align 8
  br label %90

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %34

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @STDIN_FILENO, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @close(i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %67, %48, %32, %22
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
