; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_find_best_with_parent_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mp.c_ccu_mp_find_best_with_parent_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64*, i64, i32, i32)* @ccu_mp_find_best_with_parent_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_mp_find_best_with_parent_adj(%struct.clk_hw* %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %15, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul i32 %22, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %19, align 8
  %26 = load i64, i64* @ULONG_MAX, align 8
  %27 = load i64, i64* %9, align 8
  %28 = udiv i64 %26, %27
  %29 = load i64, i64* %19, align 8
  %30 = call i64 @min(i64 %28, i64 %29)
  store i64 %30, i64* %19, align 8
  store i32 1, i32* %17, align 4
  br label %31

31:                                               ; preds = %93, %5
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %31
  store i32 1, i32* %16, align 4
  br label %36

36:                                               ; preds = %89, %35
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %19, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %92

49:                                               ; preds = %40
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %18, align 4
  %52 = zext i32 %51 to i64
  %53 = mul i64 %50, %52
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %6, align 8
  br label %98

60:                                               ; preds = %49
  %61 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = call i64 @clk_hw_round_rate(%struct.clk_hw* %61, i64 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* %18, align 4
  %69 = zext i32 %68 to i64
  %70 = udiv i64 %67, %69
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %60
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64*, i64** %8, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %6, align 8
  br label %98

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %74, %60
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %16, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %36

92:                                               ; preds = %48, %36
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %31

96:                                               ; preds = %31
  %97 = load i64, i64* %15, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %85, %56
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
