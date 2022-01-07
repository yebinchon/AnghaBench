; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ccu_nm = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct._ccu_nm*)* @ccu_nm_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_nm_find_best(i64 %0, i64 %1, %struct._ccu_nm* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._ccu_nm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._ccu_nm* %2, %struct._ccu_nm** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %14 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i64, i64* %10, align 8
  %18 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %19 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %24 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %54, %22
  %27 = load i64, i64* %11, align 8
  %28 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %29 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ule i64 %27, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @ccu_nm_calc_rate(i64 %33, i64 %34, i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %54

41:                                               ; preds = %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %26

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %16

61:                                               ; preds = %16
  %62 = load i64, i64* %8, align 8
  %63 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %64 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct._ccu_nm*, %struct._ccu_nm** %6, align 8
  %67 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %66, i32 0, i32 5
  store i64 %65, i64* %67, align 8
  ret void
}

declare dso_local i64 @ccu_nm_calc_rate(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
