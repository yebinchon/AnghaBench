; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nk.c_ccu_nk_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ccu_nk = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct._ccu_nk*)* @ccu_nk_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_nk_find_best(i64 %0, i64 %1, %struct._ccu_nk* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._ccu_nk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._ccu_nk* %2, %struct._ccu_nk** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %14 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %61, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %19 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ule i32 %17, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %16
  %23 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %24 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %57, %22
  %27 = load i32, i32* %11, align 4
  %28 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %29 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ule i32 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %36, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %57

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %12, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %48, %49
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %44
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %26

60:                                               ; preds = %26
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %8, align 4
  %66 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %67 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct._ccu_nk*, %struct._ccu_nk** %6, align 8
  %70 = getelementptr inbounds %struct._ccu_nk, %struct._ccu_nk* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
