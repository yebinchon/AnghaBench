; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_hi0bits.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_hi0bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtoa_context*, i32)* @hi0bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi0bits(%struct.dtoa_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtoa_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -65536
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  store i32 16, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 16
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, -16777216
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -268435456
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, -1073741824
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 2
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, -2147483648
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 1073741824
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 32, i32* %3, align 4
  br label %54

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
