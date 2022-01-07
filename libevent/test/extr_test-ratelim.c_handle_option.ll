; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_handle_option.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_handle_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32*, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Too few arguments to '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't parse numeric value '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Value '%s' is out-of-range'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, %struct.option*)* @handle_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_option(i32 %0, i8** %1, i32* %2, %struct.option* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.option*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.option* %3, %struct.option** %9, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.option*, %struct.option** %9, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.option*, %struct.option** %9, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %100

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %5, align 4
  br label %100

35:                                               ; preds = %20
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strtol(i8* %42, i8** %11, i32 10)
  store i64 %43, i64* %10, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %35
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57, %54, %35
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 -1, i32* %5, align 4
  br label %100

72:                                               ; preds = %57
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.option*, %struct.option** %9, align 8
  %75 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %10, align 8
  %80 = icmp sgt i64 %79, 2147483647
  br i1 %80, label %81, label %91

81:                                               ; preds = %78, %72
  %82 = load i32, i32* @stderr, align 4
  %83 = load i8**, i8*** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %83, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  store i32 -1, i32* %5, align 4
  br label %100

91:                                               ; preds = %78
  %92 = load i64, i64* %10, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.option*, %struct.option** %9, align 8
  %95 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32 %93, i32* %96, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %91, %81, %62, %26, %16
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
