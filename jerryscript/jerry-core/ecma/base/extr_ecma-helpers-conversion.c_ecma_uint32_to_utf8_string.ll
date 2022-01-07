; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_uint32_to_utf8_string.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_uint32_to_utf8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CHAR_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_uint32_to_utf8_string(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64* %12, i64** %7, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i64*, i64** %7, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = icmp uge i64* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @JERRY_ASSERT(i32 %17)
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 -1
  store i64* %20, i64** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 10
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @LIT_CHAR_0, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 10
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %13, label %32

32:                                               ; preds = %29
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = icmp uge i64* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @JERRY_ASSERT(i32 %36)
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64*, i64** %7, align 8
  %43 = ptrtoint i64* %41 to i64
  %44 = ptrtoint i64* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i64*, i64** %7, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = icmp ne i64* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @JERRY_LIKELY(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load i64*, i64** %5, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memmove(i64* %55, i64* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %32
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @JERRY_LIKELY(i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
