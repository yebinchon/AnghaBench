; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64 0, align 8
@buff = common dso_local global i64 0, align 8
@BUFFSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeout(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = load i64, i64* @wptr, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load i64, i64* @buff, align 8
  %15 = load i64, i64* @BUFFSIZE, align 8
  %16 = add nsw i64 %14, %15
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load i64, i64* @wptr, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @memcpy(i64 %19, i8* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @wptr, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* @wptr, align 8
  br label %50

27:                                               ; preds = %9
  %28 = load i64, i64* @buff, align 8
  %29 = load i64, i64* @BUFFSIZE, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @wptr, align 8
  %32 = sub nsw i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i64, i64* @wptr, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @memcpy(i64 %34, i8* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @wptr, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* @wptr, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = call i32 (...) @flushout()
  br label %6

50:                                               ; preds = %18, %6
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
