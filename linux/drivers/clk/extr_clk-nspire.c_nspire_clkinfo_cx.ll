; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nspire.c_nspire_clkinfo_cx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nspire.c_nspire_clkinfo_cx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nspire_clk_info = type { i32, i32, i32 }

@FIXED_BASE = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@CX_BASE = common dso_local global i32 0, align 4
@BASE_CPU = common dso_local global i32 0, align 4
@CX_UNKNOWN = common dso_local global i32 0, align 4
@CPU_AHB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nspire_clk_info*)* @nspire_clkinfo_cx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nspire_clkinfo_cx(i32 %0, %struct.nspire_clk_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nspire_clk_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.nspire_clk_info* %1, %struct.nspire_clk_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FIXED_BASE, align 4
  %7 = call i32 @EXTRACT(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @MHZ, align 4
  %11 = mul nsw i32 48, %10
  %12 = load %struct.nspire_clk_info*, %struct.nspire_clk_info** %4, align 8
  %13 = getelementptr inbounds %struct.nspire_clk_info, %struct.nspire_clk_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CX_BASE, align 4
  %17 = call i32 @EXTRACT(i32 %15, i32 %16)
  %18 = mul nsw i32 6, %17
  %19 = load i32, i32* @MHZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.nspire_clk_info*, %struct.nspire_clk_info** %4, align 8
  %22 = getelementptr inbounds %struct.nspire_clk_info, %struct.nspire_clk_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @BASE_CPU, align 4
  %26 = call i32 @EXTRACT(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CX_UNKNOWN, align 4
  %29 = call i32 @EXTRACT(i32 %27, i32 %28)
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.nspire_clk_info*, %struct.nspire_clk_info** %4, align 8
  %32 = getelementptr inbounds %struct.nspire_clk_info, %struct.nspire_clk_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nspire_clk_info*, %struct.nspire_clk_info** %4, align 8
  %34 = getelementptr inbounds %struct.nspire_clk_info, %struct.nspire_clk_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @CPU_AHB, align 4
  %38 = call i32 @EXTRACT(i32 %36, i32 %37)
  %39 = add nsw i32 %38, 1
  %40 = mul nsw i32 %35, %39
  %41 = load %struct.nspire_clk_info*, %struct.nspire_clk_info** %4, align 8
  %42 = getelementptr inbounds %struct.nspire_clk_info, %struct.nspire_clk_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @EXTRACT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
