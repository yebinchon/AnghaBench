; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_extend_address_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_extend_address_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64, i32)* @extend_address_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extend_address_range(i64* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %8, align 4
  br label %16

15:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64*, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %104

33:                                               ; preds = %24, %16
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i64, i64* %7, align 8
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = load i64*, i64** %6, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %103

56:                                               ; preds = %33
  %57 = load i64, i64* %7, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %57, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i64, i64* %9, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %61
  br label %102

70:                                               ; preds = %56
  %71 = load i64, i64* %9, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* %7, align 8
  %82 = load i64*, i64** %5, align 8
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %80, %75
  br label %101

84:                                               ; preds = %70
  %85 = load i64, i64* %9, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %85, %87
  %89 = load i64*, i64** %5, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = sub nsw i64 %90, %91
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i64, i64* %9, align 8
  %96 = load i64*, i64** %6, align 8
  store i64 %95, i64* %96, align 8
  br label %100

97:                                               ; preds = %84
  %98 = load i64, i64* %7, align 8
  %99 = load i64*, i64** %5, align 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %69
  br label %103

103:                                              ; preds = %102, %55
  br label %104

104:                                              ; preds = %103, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
