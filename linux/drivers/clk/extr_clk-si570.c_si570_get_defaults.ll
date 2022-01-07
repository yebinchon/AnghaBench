; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_get_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_get_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i32, i64, i64, i64, i8*, i32 }

@SI570_REG_CONTROL = common dso_local global i32 0, align 4
@SI570_CNTRL_RECALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si570*, i64)* @si570_get_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_get_defaults(%struct.clk_si570* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si570*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_si570* %0, %struct.clk_si570** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %9 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SI570_REG_CONTROL, align 4
  %12 = load i32, i32* @SI570_CNTRL_RECALL, align 4
  %13 = call i32 @regmap_write(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %15 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %16 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %15, i32 0, i32 0
  %17 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %18 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %17, i32 0, i32 1
  %19 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %20 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %19, i32 0, i32 2
  %21 = call i32 @si570_get_divs(%struct.clk_si570* %14, i32* %16, i64* %18, i64* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %29 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %27, %30
  %32 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %33 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %31, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sge i64 %36, 68719476736
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %39, 24
  %41 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %42 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 4
  %45 = call i8* @div64_u64(i64 %40, i32 %44)
  %46 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %47 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %57

48:                                               ; preds = %26
  %49 = load i64, i64* %7, align 8
  %50 = shl i64 %49, 28
  %51 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %52 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @div64_u64(i64 %50, i32 %53)
  %55 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %56 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %48, %38
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.clk_si570*, %struct.clk_si570** %4, align 8
  %60 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @si570_get_divs(%struct.clk_si570*, i32*, i64*, i64*) #1

declare dso_local i8* @div64_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
