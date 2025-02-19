; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_parse_int64.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_parse_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to parse '%s' as an integer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_parse_int64(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i64 @git__strntol64(i32* %7, i8* %11, i32 %13, i8** %6, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  br label %41

17:                                               ; preds = %10
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %40 [
    i32 103, label %21
    i32 71, label %21
    i32 109, label %24
    i32 77, label %24
    i32 107, label %27
    i32 75, label %27
    i32 0, label %37
  ]

21:                                               ; preds = %17, %17
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 1024
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %17, %17, %21
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 1024
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %17, %17, %24
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 1024
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %51

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %17, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %51

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %47 ]
  %50 = call i32 @git_error_set(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %37, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @git__strntol64(i32*, i8*, i32, i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
