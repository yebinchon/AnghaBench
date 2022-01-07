; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_lo0bits.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_lo0bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtoa_context*, i32*)* @lo0bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo0bits(%struct.dtoa_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtoa_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %81

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %3, align 4
  br label %81

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 2
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 2, i32* %3, align 4
  br label %81

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 65535
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  store i32 16, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 16
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 255
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 8
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 8
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, 15
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 2
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  store i32 32, i32* %3, align 4
  br label %81

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %5, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %75, %26, %22, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
