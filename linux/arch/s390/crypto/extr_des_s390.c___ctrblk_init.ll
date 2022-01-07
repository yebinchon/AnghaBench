; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_des_s390.c___ctrblk_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_des_s390.c___ctrblk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @__ctrblk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctrblk_init(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @PAGE_SIZE, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi i32 [ %13, %12 ], [ %19, %14 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %25 = call i32 @memcpy(i32* %22, i32* %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %28 = udiv i32 %26, %27
  %29 = sub i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %51, %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %46 = call i32 @crypto_inc(i32* %44, i32 %45)
  %47 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
