; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_clean_output.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_clean_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"NULL data on clean_output.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&#34;\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"&nbsp;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @clean_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_output(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %41, %9
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %36 [
    i32 39, label %18
    i32 34, label %21
    i32 38, label %24
    i32 60, label %27
    i32 62, label %30
    i32 32, label %33
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %41

21:                                               ; preds = %14
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %41

24:                                               ; preds = %14
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %41

27:                                               ; preds = %14
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %41

30:                                               ; preds = %14
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %41

33:                                               ; preds = %14
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %41

36:                                               ; preds = %14
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @fputc(i8 signext %38, i32* %39)
  br label %41

41:                                               ; preds = %36, %33, %30, %27, %24, %21, %18
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  br label %10

44:                                               ; preds = %7, %10
  ret void
}

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
