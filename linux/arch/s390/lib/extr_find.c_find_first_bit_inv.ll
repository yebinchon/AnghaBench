; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_find.c_find_first_bit_inv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_find.c_find_first_bit_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_first_bit_inv(i64* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64*, i64** %4, align 8
  store i64* %9, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @BITS_PER_LONG, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = and i64 %11, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %6, align 8
  %21 = load i64, i64* %19, align 8
  store i64 %21, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %54

24:                                               ; preds = %18
  %25 = load i32, i32* @BITS_PER_LONG, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* @BITS_PER_LONG, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %63

38:                                               ; preds = %33
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @BITS_PER_LONG, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %42, %43
  %45 = shl i64 -1, %44
  %46 = and i64 %40, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %3, align 8
  br label %63

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @__fls(i64 %56)
  %58 = load i32, i32* @BITS_PER_LONG, align 4
  %59 = sub nsw i32 %58, 1
  %60 = xor i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = add i64 %55, %61
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %54, %49, %36
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @__fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
