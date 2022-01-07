; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Buff = common dso_local global i32 0, align 4
@BUFFSIZE = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeout(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %48, %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* @Buff, align 4
  %14 = load i32, i32* @BUFFSIZE, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @wptr, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* @wptr, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @wptr, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* @wptr, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = call i64 (...) @flushout()
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %50

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %25
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
