; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisFormatSdsCommandArgv.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_hiredis.c_redisFormatSdsCommandArgv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"*%i\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"$%u\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisFormatSdsCommandArgv(i32** %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp eq i32** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %119

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @countDigits(i32 %18)
  %20 = add nsw i32 1, %19
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %49, %17
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  br label %43

36:                                               ; preds = %27
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = phi i64 [ %35, %30 ], [ %42, %36 ]
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @bulklen(i64 %45)
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %23

52:                                               ; preds = %23
  %53 = call i32* (...) @sdsempty()
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %119

57:                                               ; preds = %52
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32* @sdsMakeRoomFor(i32* %58, i64 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %119

64:                                               ; preds = %57
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32* @sdscatfmt(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %67)
  store i32* %68, i32** %10, align 8
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %105, %64
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = load i64*, i64** %9, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i64*, i64** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  br label %89

82:                                               ; preds = %73
  %83 = load i8**, i8*** %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strlen(i8* %87)
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi i64 [ %81, %76 ], [ %88, %82 ]
  store i64 %90, i64* %13, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32* @sdscatfmt(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32* @sdscatlen(i32* %94, i8* %99, i32 %101)
  store i32* %102, i32** %10, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32* @sdscatlen(i32* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32* %104, i32** %10, align 8
  br label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %69

108:                                              ; preds = %69
  %109 = load i32*, i32** %10, align 8
  %110 = call i64 @sdslen(i32* %109)
  %111 = load i64, i64* %11, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i32*, i32** %10, align 8
  %116 = load i32**, i32*** %6, align 8
  store i32* %115, i32** %116, align 8
  %117 = load i64, i64* %11, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %108, %63, %56, %16
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @countDigits(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @bulklen(i64) #1

declare dso_local i32* @sdsempty(...) #1

declare dso_local i32* @sdsMakeRoomFor(i32*, i64) #1

declare dso_local i32* @sdscatfmt(i32*, i8*, i64) #1

declare dso_local i32* @sdscatlen(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sdslen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
