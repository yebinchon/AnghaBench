; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes_written = common dso_local global i64 0, align 8
@idx_crc64_complement = common dso_local global i32 0, align 4
@Buff = common dso_local global i32 0, align 4
@BUFFSIZE = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @writeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeout(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @bytes_written, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* @bytes_written, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @idx_crc64_complement, align 4
  %14 = call i32 @crc64_partial(i8* %11, i64 %12, i32 %13)
  store i32 %14, i32* @idx_crc64_complement, align 4
  %15 = load i64, i64* %4, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %54, %2
  %19 = load i64, i64* %4, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %18
  %22 = load i32, i32* @Buff, align 4
  %23 = load i32, i32* @BUFFSIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @wptr, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* @wptr, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @wptr, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* @wptr, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call i32 (...) @flushout()
  br label %54

54:                                               ; preds = %52, %34
  br label %18

55:                                               ; preds = %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @crc64_partial(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
