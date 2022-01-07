; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_escape_json_output.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_escape_json_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @escape_json_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @escape_json_output(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %40, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %37 [
    i32 34, label %13
    i32 92, label %16
    i32 8, label %19
    i32 12, label %22
    i32 10, label %25
    i32 13, label %28
    i32 9, label %31
    i32 47, label %34
  ]

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pjson(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %40

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pjson(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %40

19:                                               ; preds = %9
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @pjson(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %40

22:                                               ; preds = %9
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pjson(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %40

25:                                               ; preds = %9
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pjson(i32* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %40

28:                                               ; preds = %9
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @pjson(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %40

31:                                               ; preds = %9
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pjson(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %40

34:                                               ; preds = %9
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @pjson(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %40

37:                                               ; preds = %9
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @escape_json_other(i32* %38, i8** %4)
  br label %40

40:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %13
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pjson(i32*, i8*) #1

declare dso_local i32 @escape_json_other(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
