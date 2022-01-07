; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_acpu_round_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_acpu_round_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi6220_stub_clk = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@ACPU_DFS_FLAG = common dso_local global i32 0, align 4
@ACPU_DFS_LOCK_FLAG = common dso_local global i32 0, align 4
@ACPU_DFS_FREQ_LMT = common dso_local global i32 0, align 4
@ACPU_DFS_FREQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hi6220_stub_clk*, i32)* @hi6220_acpu_round_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_acpu_round_freq(%struct.hi6220_stub_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.hi6220_stub_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hi6220_stub_clk* %0, %struct.hi6220_stub_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @UINT_MAX, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %3, align 8
  %10 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACPU_DFS_FLAG, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ACPU_DFS_LOCK_FLAG, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %3, align 8
  %19 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ACPU_DFS_FREQ_LMT, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %6)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %3, align 8
  %25 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ACPU_DFS_FREQ_MAX, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %7)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ugt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
