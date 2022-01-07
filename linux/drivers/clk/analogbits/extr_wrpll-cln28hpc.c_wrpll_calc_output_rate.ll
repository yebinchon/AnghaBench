; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/analogbits/extr_wrpll-cln28hpc.c_wrpll_calc_output_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/analogbits/extr_wrpll-cln28hpc.c_wrpll_calc_output_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrpll_cfg = type { i32, i32, i64, i64 }

@WRPLL_FLAGS_EXT_FEEDBACK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"external feedback mode not yet supported\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wrpll_calc_output_rate(%struct.wrpll_cfg* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wrpll_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.wrpll_cfg* %0, %struct.wrpll_cfg** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WRPLL_FLAGS_EXT_FEEDBACK_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @ULONG_MAX, align 8
  store i64 %16, i64* %3, align 8
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %4, align 8
  %19 = call i64 @__wrpll_calc_fbdiv(%struct.wrpll_cfg* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 %20, %21
  %23 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %22, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i64 @div_u64(i64 %29, i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = lshr i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @__wrpll_calc_fbdiv(%struct.wrpll_cfg*) #1

declare dso_local i64 @div_u64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
