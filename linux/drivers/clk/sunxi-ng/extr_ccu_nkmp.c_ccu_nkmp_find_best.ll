; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nkmp.c_ccu_nkmp_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ccu_nkmp = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct._ccu_nkmp*)* @ccu_nkmp_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_nkmp_find_best(i64 %0, i64 %1, %struct._ccu_nkmp* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._ccu_nkmp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._ccu_nkmp* %2, %struct._ccu_nkmp** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %18 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  br label %20

20:                                               ; preds = %94, %3
  %21 = load i64, i64* %13, align 8
  %22 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %23 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ule i64 %21, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %20
  %27 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %28 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %90, %26
  %31 = load i64, i64* %12, align 8
  %32 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %33 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ule i64 %31, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %30
  %37 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %38 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %86, %36
  %41 = load i64, i64* %14, align 8
  %42 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %43 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ule i64 %41, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %40
  %47 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %48 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %82, %46
  %51 = load i64, i64* %15, align 8
  %52 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %53 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @ccu_nkmp_calc_rate(i64 %57, i64 %58, i64 %59, i64 %60, i64 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %82

67:                                               ; preds = %56
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %16, align 8
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %71, %72
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i64, i64* %16, align 8
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %15, align 8
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i64, i64* %15, align 8
  %84 = shl i64 %83, 1
  store i64 %84, i64* %15, align 8
  br label %50

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %14, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %14, align 8
  br label %40

89:                                               ; preds = %40
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %30

93:                                               ; preds = %30
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %13, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %13, align 8
  br label %20

97:                                               ; preds = %20
  %98 = load i64, i64* %8, align 8
  %99 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %100 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %99, i32 0, i32 8
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %103 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %102, i32 0, i32 9
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %106 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %105, i32 0, i32 10
  store i64 %104, i64* %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct._ccu_nkmp*, %struct._ccu_nkmp** %6, align 8
  %109 = getelementptr inbounds %struct._ccu_nkmp, %struct._ccu_nkmp* %108, i32 0, i32 11
  store i64 %107, i64* %109, align 8
  ret void
}

declare dso_local i64 @ccu_nkmp_calc_rate(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
