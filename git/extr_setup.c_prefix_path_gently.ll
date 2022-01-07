; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_prefix_path_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_prefix_path_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prefix_path_gently(i8* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i64 @is_absolute_path(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i8* @xmallocz(i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @normalize_path_copy_len(i8* %25, i8* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @free(i8* %31)
  store i8* null, i8** %5, align 8
  br label %69

33:                                               ; preds = %24
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @abspath_part_inside_repo(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @free(i8* %38)
  store i8* null, i8** %5, align 8
  br label %69

40:                                               ; preds = %33
  br label %67

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %47 ]
  %50 = load i8*, i8** %9, align 8
  %51 = call i8* @xstrfmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %49, i8* %50)
  store i8* %51, i8** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @normalize_path_copy_len(i8* %58, i8* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @free(i8* %64)
  store i8* null, i8** %5, align 8
  br label %69

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i8*, i8** %11, align 8
  store i8* %68, i8** %5, align 8
  br label %69

69:                                               ; preds = %67, %63, %37, %30
  %70 = load i8*, i8** %5, align 8
  ret i8* %70
}

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @normalize_path_copy_len(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @abspath_part_inside_repo(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
