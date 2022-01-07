; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv1_setr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv1_setr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.alchemy_fgcs_clk = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @alchemy_clk_fgv1_setr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_clk_fgv1_setr(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.alchemy_fgcs_clk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw* %14)
  store %struct.alchemy_fgcs_clk* %15, %struct.alchemy_fgcs_clk** %8, align 8
  %16 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %17 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %13, align 4
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = udiv i64 %27, 2
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %22, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %68

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @alchemy_calc_div(i64 %34, i64 %35, i32 2, i32 512, i64* %9)
  store i64 %36, i64* %12, align 8
  %37 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %38 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @spin_lock_irqsave(i32 %39, i64 %40)
  %42 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %43 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @alchemy_rdsys(i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = shl i32 255, %46
  %48 = xor i32 %47, -1
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %10, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 %52, %54
  %56 = load i64, i64* %10, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %60 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @alchemy_wrsys(i64 %58, i32 %61)
  %63 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %64 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32 %65, i64 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %33, %30
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw*) #1

declare dso_local i64 @alchemy_calc_div(i64, i64, i32, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
