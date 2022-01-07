; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_unicode-utils.c_binary_search_ranges.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_unicode-utils.c_binary_search_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @binary_search_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binary_search_ranges(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ugt i32 %11, 1114111
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %22, 2
  %24 = ashr i32 %23, 2
  %25 = shl i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 2
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %33
  br label %15

39:                                               ; preds = %15
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %49, %54
  %56 = load i32, i32* %10, align 4
  %57 = xor i32 %56, -1
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %4, align 4
  br label %80

59:                                               ; preds = %39
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 1114111
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %80

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 2097152
  switch i32 %66, label %77 [
    i32 0, label %67
    i32 1, label %70
    i32 2, label %73
  ]

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -2
  store i32 %69, i32* %4, align 4
  br label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %80

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, 1
  %76 = or i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %80

77:                                               ; preds = %64
  %78 = call i32 @assert(i32 0)
  %79 = call i32 @exit(i32 1) #3
  unreachable

80:                                               ; preds = %73, %70, %67, %62, %48, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
