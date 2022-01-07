; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_setr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_setr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.alchemy_fgcs_clk = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @alchemy_clk_fgv2_setr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_clk_fgv2_setr(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.alchemy_fgcs_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
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
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %25
  %33 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %34 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @alchemy_rdsys(i32 %35)
  %37 = and i32 %36, 1073741824
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 2
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 256, i32 512
  %49 = call i64 @alchemy_calc_div(i64 %39, i64 %40, i32 %44, i32 %48, i64* %10)
  store i64 %49, i64* %13, align 8
  %50 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %51 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_lock_irqsave(i32 %52, i64 %53)
  %55 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %56 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @alchemy_rdsys(i32 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 255, %60
  %62 = xor i32 %61, -1
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %11, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = and i64 %66, 255
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 %67, %69
  %71 = load i64, i64* %11, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %75 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @alchemy_wrsys(i64 %73, i32 %76)
  %78 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %8, align 8
  %79 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32 %80, i64 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %32, %29
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw*) #1

declare dso_local i32 @alchemy_rdsys(i32) #1

declare dso_local i64 @alchemy_calc_div(i64, i64, i32, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
