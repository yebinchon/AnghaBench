; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_read_request_eof.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_read_request_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_request_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"request was larger than our maximum size (%lu); try setting GIT_HTTP_MAX_REQUEST_BUFFER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8**)* @read_request_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_request_eof(i32 %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 8192, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i8* @xmalloc(i64 %10)
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* @max_request_buffer, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* @max_request_buffer, align 8
  br label %17

17:                                               ; preds = %15, %2
  br label %18

18:                                               ; preds = %17, %58
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %23, %24
  %26 = call i64 @read_in_full(i32 %19, i8* %22, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @free(i8* %30)
  store i64 -1, i64* %3, align 8
  br label %62

32:                                               ; preds = %18
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  br label %62

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @max_request_buffer, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* @max_request_buffer, align 8
  %49 = call i32 @die(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @alloc_nr(i64 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @max_request_buffer, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @max_request_buffer, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @REALLOC_ARRAY(i8* %59, i64 %60)
  br label %18

62:                                               ; preds = %39, %29
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @die(i8*, i64) #1

declare dso_local i64 @alloc_nr(i64) #1

declare dso_local i32 @REALLOC_ARRAY(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
