; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_sq_dequote_to_argv_internal.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_sq_dequote_to_argv_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***, i32*, i32*, %struct.argv_array*)* @sq_dequote_to_argv_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_dequote_to_argv_internal(i8* %0, i8*** %1, i32* %2, i32* %3, %struct.argv_array* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.argv_array*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.argv_array* %4, %struct.argv_array** %11, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i8*, i8** %12, align 8
  %22 = call i8* @sq_dequote_step(i8* %21, i8** %12)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 -1, i32* %6, align 4
  br label %58

26:                                               ; preds = %20
  %27 = load i8***, i8**** %8, align 8
  %28 = icmp ne i8*** %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i8***, i8**** %8, align 8
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ALLOC_GROW(i8** %31, i32 %34, i32 %36)
  %38 = load i8*, i8** %13, align 8
  %39 = load i8***, i8**** %8, align 8
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8*, i8** %40, i64 %44
  store i8* %38, i8** %45, align 8
  br label %46

46:                                               ; preds = %29, %26
  %47 = load %struct.argv_array*, %struct.argv_array** %11, align 8
  %48 = icmp ne %struct.argv_array* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.argv_array*, %struct.argv_array** %11, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @argv_array_push(%struct.argv_array* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %20, label %57

57:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %25, %18
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i8* @sq_dequote_step(i8*, i8**) #1

declare dso_local i32 @ALLOC_GROW(i8**, i32, i32) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
