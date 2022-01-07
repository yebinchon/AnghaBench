; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_enable_opt_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_enable_opt_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.clk** }
%struct.clk = type { i32 }

@SYSC_OPTFCK0 = common dso_local global i32 0, align 4
@SYSC_MAX_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_enable_opt_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_enable_opt_clocks(%struct.sysc* %0) #0 {
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
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @SYSC_OPTFCK0, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %37, %12
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SYSC_MAX_CLOCKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.sysc*, %struct.sysc** %3, align 8
  %20 = getelementptr inbounds %struct.sysc, %struct.sysc* %19, i32 0, i32 0
  %21 = load %struct.clk**, %struct.clk*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.clk*, %struct.clk** %21, i64 %23
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  store %struct.clk* %25, %struct.clk** %4, align 8
  %26 = load %struct.clk*, %struct.clk** %4, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.clk* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %67

30:                                               ; preds = %18
  %31 = load %struct.clk*, %struct.clk** %4, align 8
  %32 = call i32 @clk_enable(%struct.clk* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %41

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %14

40:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %67

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %62, %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load %struct.sysc*, %struct.sysc** %3, align 8
  %49 = getelementptr inbounds %struct.sysc, %struct.sysc* %48, i32 0, i32 0
  %50 = load %struct.clk**, %struct.clk*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.clk*, %struct.clk** %50, i64 %52
  %54 = load %struct.clk*, %struct.clk** %53, align 8
  store %struct.clk* %54, %struct.clk** %4, align 8
  %55 = load %struct.clk*, %struct.clk** %4, align 8
  %56 = call i64 @IS_ERR_OR_NULL(%struct.clk* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.clk*, %struct.clk** %4, align 8
  %61 = call i32 @clk_disable(%struct.clk* %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %40, %29, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
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
