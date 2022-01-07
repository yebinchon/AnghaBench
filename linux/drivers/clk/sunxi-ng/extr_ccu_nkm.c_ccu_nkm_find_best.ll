; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkm.c_ccu_nkm_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ccu_nkm = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct._ccu_nkm*)* @ccu_nkm_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_nkm_find_best(i64 %0, i64 %1, %struct._ccu_nkm* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._ccu_nkm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._ccu_nkm* %2, %struct._ccu_nkm** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %16 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %78, %3
  %19 = load i64, i64* %12, align 8
  %20 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %21 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %18
  %25 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %26 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %74, %24
  %29 = load i64, i64* %11, align 8
  %30 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %31 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ule i64 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %36 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %70, %34
  %39 = load i64, i64* %13, align 8
  %40 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %41 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ule i64 %39, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %11, align 8
  %47 = mul i64 %45, %46
  %48 = load i64, i64* %12, align 8
  %49 = mul i64 %47, %48
  %50 = load i64, i64* %13, align 8
  %51 = udiv i64 %49, %50
  store i64 %51, i64* %14, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %70

56:                                               ; preds = %44
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %14, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %60, %61
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %12, align 8
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %64, %56
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %38

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  br label %18

81:                                               ; preds = %18
  %82 = load i64, i64* %8, align 8
  %83 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %84 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %87 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %86, i32 0, i32 7
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct._ccu_nkm*, %struct._ccu_nkm** %6, align 8
  %90 = getelementptr inbounds %struct._ccu_nkm, %struct._ccu_nkm* %89, i32 0, i32 8
  store i64 %88, i64* %90, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
