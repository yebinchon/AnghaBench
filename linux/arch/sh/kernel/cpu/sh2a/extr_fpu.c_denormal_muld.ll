; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_muld.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2a/extr_fpu.c_denormal_muld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @denormal_muld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @denormal_muld(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, 9223372036854775807
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, 9223372036854775807
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %18, 4503599627370496
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %2
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = xor i64 %24, %25
  %27 = and i64 %26, -9223372036854775808
  store i64 %27, i64* %3, align 8
  br label %111

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, 9218868437227405312
  %31 = lshr i64 %30, 52
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, 4503599627370495
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %35, 4503599627370495
  %37 = or i64 %36, 4503599627370496
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @mult64(i64 %38, i64 %39, i64* %8, i64* %9)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %11, align 8
  store i32 -1, i32* %13, align 4
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %49, %45
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = lshr i64 %50, 1
  store i64 %51, i64* %10, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %46

54:                                               ; preds = %46
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 64
  store i32 %56, i32* %13, align 4
  br label %67

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %61, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* %11, align 8
  %63 = lshr i64 %62, 1
  store i64 %63, i64* %11, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %58

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %68, 1022
  %70 = sub nsw i32 %69, 104
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 %78, 52
  %80 = call i32 @rshift64(i64 %76, i64 %77, i32 %79)
  %81 = sext i32 %80 to i64
  %82 = and i64 %81, 4503599627370495
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = shl i64 %84, 52
  %86 = or i64 %82, %85
  store i64 %86, i64* %6, align 8
  br label %103

87:                                               ; preds = %67
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 51
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 51
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @rshift64(i64 %92, i64 %93, i32 %97)
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 4503599627370495
  store i64 %100, i64* %6, align 8
  br label %102

101:                                              ; preds = %87
  store i64 0, i64* %6, align 8
  br label %102

102:                                              ; preds = %101, %91
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i64, i64* %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = xor i64 %104, %105
  %107 = and i64 %106, -9223372036854775808
  %108 = load i64, i64* %6, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %103, %23
  %112 = load i64, i64* %3, align 8
  ret i64 %112
}

declare dso_local i32 @mult64(i64, i64, i64*, i64*) #1

declare dso_local i32 @rshift64(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
