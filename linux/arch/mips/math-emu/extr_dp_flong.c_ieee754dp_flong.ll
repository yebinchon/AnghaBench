; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_flong.c_ieee754dp_flong.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dp_flong.c_ieee754dp_flong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754dp = type { i32 }

@DP_FBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_flong(i32 %0) #0 {
  %2 = alloca %union.ieee754dp, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call i32 (...) @ieee754_clearcx()
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @ieee754dp_zero(i32 0)
  %12 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  br label %93

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ieee754dp_one(i32 %22)
  %24 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %93

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, -10
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ieee754dp_ten(i32 %34)
  %36 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %93

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, -9223372036854775808
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %47
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32, i32* @DP_FBITS, align 4
  %56 = add nsw i32 %55, 3
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @DP_FBITS, align 4
  %59 = add nsw i32 %58, 1
  %60 = add nsw i32 %59, 3
  %61 = ashr i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %71, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DP_FBITS, align 4
  %67 = add nsw i32 %66, 1
  %68 = add nsw i32 %67, 3
  %69 = ashr i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (...) @XDPSRSX1()
  br label %64

73:                                               ; preds = %64
  br label %87

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %81, %74
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @DP_FBITS, align 4
  %78 = add nsw i32 %77, 3
  %79 = ashr i32 %76, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %5, align 4
  br label %75

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %73
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @ieee754dp_format(i32 %88, i32 %89, i32 %90)
  %92 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %31, %19, %10
  %94 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %2, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  ret i32 %95
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754dp_zero(i32) #1

declare dso_local i32 @ieee754dp_one(i32) #1

declare dso_local i32 @ieee754dp_ten(i32) #1

declare dso_local i32 @XDPSRSX1(...) #1

declare dso_local i32 @ieee754dp_format(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
