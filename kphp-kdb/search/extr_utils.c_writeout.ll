; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_utils.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_crc32_complement = common dso_local global i32 0, align 4
@Buff = common dso_local global i32 0, align 4
@BUFFSIZE = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeout(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @idx_crc32_complement, align 4
  %10 = call i32 @crc32_partial(i8* %7, i64 %8, i32 %9)
  store i32 %10, i32* @idx_crc32_complement, align 4
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load i32, i32* @Buff, align 4
  %17 = load i32, i32* @BUFFSIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @wptr, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load i32, i32* @wptr, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @memcpy(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @wptr, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @wptr, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = call i32 (...) @flushout()
  br label %48

48:                                               ; preds = %46, %28
  br label %12

49:                                               ; preds = %12
  ret void
}

declare dso_local i32 @crc32_partial(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
