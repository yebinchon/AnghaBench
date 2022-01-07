; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_repair_bit.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_crc32.c_repair_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @repair_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repair_bit(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 5
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 31
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %29, %15
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 8
  store i32 %33, i32* %9, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -2, i32* %4, align 4
  br label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -3, i32* %4, align 4
  br label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 7, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 1, %46
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, %47
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %43, %42, %37, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
