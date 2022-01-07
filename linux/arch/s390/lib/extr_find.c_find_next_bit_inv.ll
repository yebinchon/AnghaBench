; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_find.c_find_next_bit_inv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_find.c_find_next_bit_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_next_bit_inv(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @BITS_PER_LONG, align 8
  %14 = udiv i64 %12, %13
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  store i64* %15, i64** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @BITS_PER_LONG, align 8
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  %20 = and i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %4, align 8
  br label %109

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* @BITS_PER_LONG, align 8
  %31 = load i64, i64* %7, align 8
  %32 = urem i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %8, align 8
  %38 = load i64, i64* %36, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = lshr i64 -1, %39
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @BITS_PER_LONG, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %87

47:                                               ; preds = %35
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %101

51:                                               ; preds = %47
  %52 = load i64, i64* @BITS_PER_LONG, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* @BITS_PER_LONG, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %51, %26
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @BITS_PER_LONG, align 8
  %62 = sub i64 %61, 1
  %63 = xor i64 %62, -1
  %64 = and i64 %60, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %8, align 8
  %69 = load i64, i64* %67, align 8
  store i64 %69, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %101

72:                                               ; preds = %66
  %73 = load i64, i64* @BITS_PER_LONG, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* @BITS_PER_LONG, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %6, align 8
  br label %59

79:                                               ; preds = %59
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %109

84:                                               ; preds = %79
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %84, %46
  %88 = load i64, i64* @BITS_PER_LONG, align 8
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %88, %89
  %91 = shl i64 -1, %90
  %92 = load i64, i64* %10, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %97, %98
  store i64 %99, i64* %4, align 8
  br label %109

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %71, %50
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @__fls(i64 %103)
  %105 = load i64, i64* @BITS_PER_LONG, align 8
  %106 = sub i64 %105, 1
  %107 = xor i64 %104, %106
  %108 = add i64 %102, %107
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %101, %96, %82, %24
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i64 @__fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
