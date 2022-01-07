; ModuleID = '/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_jboot_checksum.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_jboot_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @jboot_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jboot_checksum(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %25, %14
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 16
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 16
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %7, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %11
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast i32* %37 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 255
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %36, %33
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 16
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %7, align 4
  br label %47

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
