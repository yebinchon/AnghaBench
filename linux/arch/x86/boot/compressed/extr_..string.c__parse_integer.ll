; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_..string.c__parse_integer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_..string.c__parse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULLONG_MAX = common dso_local global i64 0, align 8
@KSTRTOX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*)* @_parse_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_integer(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %3, %62
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, 32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ule i32 48, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* %9, align 4
  %22 = icmp ule i32 %21, 57
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %24, 48
  store i32 %25, i32* %11, align 4
  br label %38

26:                                               ; preds = %20, %12
  %27 = load i32, i32* %10, align 4
  %28 = icmp ule i32 97, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ule i32 %30, 102
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = sub i32 %33, 97
  %35 = add i32 %34, 10
  store i32 %35, i32* %11, align 4
  br label %37

36:                                               ; preds = %29, %26
  br label %74

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %74

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, -1152921504606846976
  %46 = call i64 @unlikely(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ULLONG_MAX, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @__div_u64(i64 %53, i32 %54)
  %56 = icmp ugt i64 %49, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @KSTRTOX_OVERFLOW, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %48
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = add i64 %66, %68
  store i64 %69, i64* %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %12

74:                                               ; preds = %42, %36
  %75 = load i64, i64* %7, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @__div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
