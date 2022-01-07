; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c__randombytes_linux_getrandom.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c__randombytes_linux_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @_randombytes_linux_getrandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_randombytes_linux_getrandom(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ule i64 %6, 256
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @getrandom(i8* %11, i64 %12, i32 0)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EAGAIN, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi i1 [ false, %14 ], [ %26, %25 ]
  br i1 %28, label %10, label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = sub nsw i32 %34, 1
  ret i32 %35
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getrandom(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
