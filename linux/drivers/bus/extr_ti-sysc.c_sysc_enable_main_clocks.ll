; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_enable_main_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_enable_main_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.clk** }
%struct.clk = type { i32 }

@SYSC_OPTFCK0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_enable_main_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_enable_main_clocks(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %7 = load %struct.sysc*, %struct.sysc** %3, align 8
  %8 = getelementptr inbounds %struct.sysc, %struct.sysc* %7, i32 0, i32 0
  %9 = load %struct.clk**, %struct.clk*** %8, align 8
  %10 = icmp ne %struct.clk** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SYSC_OPTFCK0, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.sysc*, %struct.sysc** %3, align 8
  %19 = getelementptr inbounds %struct.sysc, %struct.sysc* %18, i32 0, i32 0
  %20 = load %struct.clk**, %struct.clk*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.clk*, %struct.clk** %20, i64 %22
  %24 = load %struct.clk*, %struct.clk** %23, align 8
  store %struct.clk* %24, %struct.clk** %4, align 8
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = call i64 @IS_ERR_OR_NULL(%struct.clk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.clk*, %struct.clk** %4, align 8
  %31 = call i32 @clk_enable(%struct.clk* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %66

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %61, %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.sysc*, %struct.sysc** %3, align 8
  %48 = getelementptr inbounds %struct.sysc, %struct.sysc* %47, i32 0, i32 0
  %49 = load %struct.clk**, %struct.clk*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.clk*, %struct.clk** %49, i64 %51
  %53 = load %struct.clk*, %struct.clk** %52, align 8
  store %struct.clk* %53, %struct.clk** %4, align 8
  %54 = load %struct.clk*, %struct.clk** %4, align 8
  %55 = call i64 @IS_ERR_OR_NULL(%struct.clk* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.clk*, %struct.clk** %4, align 8
  %60 = call i32 @clk_disable(%struct.clk* %59)
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %39, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
