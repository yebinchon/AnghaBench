; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_dove-divider.c_dove_calc_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_dove-divider.c_dove_calc_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dove_clk = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dove_clk*, i64, i64, i32)* @dove_calc_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_calc_divider(%struct.dove_clk* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dove_clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dove_clk* %0, %struct.dove_clk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @DIV_ROUND_CLOSEST(i64 %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.dove_clk*, %struct.dove_clk** %6, align 8
  %17 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load %struct.dove_clk*, %struct.dove_clk** %6, align 8
  %23 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.dove_clk*, %struct.dove_clk** %6, align 8
  %33 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %10, align 4
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %12, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %21

46:                                               ; preds = %40, %21
  %47 = load %struct.dove_clk*, %struct.dove_clk** %6, align 8
  %48 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %91

58:                                               ; preds = %46
  br label %89

59:                                               ; preds = %4
  %60 = load %struct.dove_clk*, %struct.dove_clk** %6, align 8
  %61 = getelementptr inbounds %struct.dove_clk, %struct.dove_clk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 1, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %91

76:                                               ; preds = %69, %59
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = sub i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %88

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %80
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %73, %55
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
