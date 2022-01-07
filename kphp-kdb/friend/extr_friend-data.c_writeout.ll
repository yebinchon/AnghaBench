; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_writeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_writeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Buff = common dso_local global i32 0, align 4
@BUFFSIZE = common dso_local global i32 0, align 4
@wptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @writeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeout(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %52, %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = load i32, i32* @Buff, align 4
  %13 = load i32, i32* @BUFFSIZE, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @wptr, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load i32, i32* @wptr, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memcpy(i32 %22, i8* %23, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @wptr, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @wptr, align 4
  br label %53

32:                                               ; preds = %11
  %33 = load i32, i32* @wptr, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy(i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @wptr, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @wptr, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = call i32 (...) @flushout()
  br label %52

52:                                               ; preds = %50, %32
  br label %8

53:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flushout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
