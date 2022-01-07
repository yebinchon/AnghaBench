; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_readline.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i64 0, i64* @errno, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = call i32 (...) @getchar()
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 16
  store i32 %18, i32* %6, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @realloc(i8* %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %49

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %12
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %31, i8* %36, align 1
  br label %8

37:                                               ; preds = %28, %8
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %49

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i8**, i8*** %2, align 8
  store i8* %46, i8** %47, align 8
  store i8* null, i8** %7, align 8
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %40, %23
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @getchar(...) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
