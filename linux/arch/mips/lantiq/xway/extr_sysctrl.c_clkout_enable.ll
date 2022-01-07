; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkout_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_sysctrl.c_clkout_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64*, i64, i32 }

@ifccr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @clkout_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clkout_enable(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load %struct.clk*, %struct.clk** %3, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = getelementptr inbounds %struct.clk, %struct.clk* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 2, %26
  %28 = sub nsw i32 14, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 7, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @ifccr, align 4
  %34 = call i32 @ltq_cgu_r32(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 3, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ifccr, align 4
  %50 = call i32 @ltq_cgu_w32(i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %11
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %8

55:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %23
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ltq_cgu_r32(i32) #1

declare dso_local i32 @ltq_cgu_w32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
