; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_crc32c_complement = common dso_local global i32 0, align 4
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
  %8 = load i8*, i8** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @idx_crc32c_complement, align 4
  %11 = call i32 @crc32c_partial(i8* %8, i64 %9, i32 %10)
  store i32 %11, i32* @idx_crc32c_complement, align 4
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load i32, i32* @Buff, align 4
  %20 = load i32, i32* @BUFFSIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @wptr, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* @wptr, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcpy(i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @wptr, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* @wptr, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %4, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = call i32 (...) @flushout()
  br label %51

51:                                               ; preds = %49, %31
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @crc32c_partial(i8*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
