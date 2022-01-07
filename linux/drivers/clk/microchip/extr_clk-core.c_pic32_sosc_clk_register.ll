; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pic32_sosc_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pic32_sosc_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.pic32_sec_osc_data = type { i64, i64, i32, i32, i32, i32 }
%struct.pic32_clk_common = type { i32, i64 }
%struct.pic32_sec_osc = type { %struct.TYPE_2__, i64, i64, i32, i32, i32, %struct.pic32_clk_common* }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @pic32_sosc_clk_register(%struct.pic32_sec_osc_data* %0, %struct.pic32_clk_common* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.pic32_sec_osc_data*, align 8
  %5 = alloca %struct.pic32_clk_common*, align 8
  %6 = alloca %struct.pic32_sec_osc*, align 8
  store %struct.pic32_sec_osc_data* %0, %struct.pic32_sec_osc_data** %4, align 8
  store %struct.pic32_clk_common* %1, %struct.pic32_clk_common** %5, align 8
  %7 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %8 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pic32_sec_osc* @devm_kzalloc(i32 %9, i32 48, i32 %10)
  store %struct.pic32_sec_osc* %11, %struct.pic32_sec_osc** %6, align 8
  %12 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %13 = icmp ne %struct.pic32_sec_osc* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.clk* @ERR_PTR(i32 %16)
  store %struct.clk* %17, %struct.clk** %3, align 8
  br label %66

18:                                               ; preds = %2
  %19 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %20 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %21 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %20, i32 0, i32 6
  store %struct.pic32_clk_common* %19, %struct.pic32_clk_common** %21, align 8
  %22 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %23 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %22, i32 0, i32 5
  %24 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %25 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %28 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %31 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %33 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %36 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %38 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %41 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %43 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %46 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %50 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.pic32_sec_osc_data*, %struct.pic32_sec_osc_data** %4, align 8
  %52 = getelementptr inbounds %struct.pic32_sec_osc_data, %struct.pic32_sec_osc_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %55 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %59 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %5, align 8
  %61 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pic32_sec_osc*, %struct.pic32_sec_osc** %6, align 8
  %64 = getelementptr inbounds %struct.pic32_sec_osc, %struct.pic32_sec_osc* %63, i32 0, i32 0
  %65 = call %struct.clk* @devm_clk_register(i32 %62, %struct.TYPE_2__* %64)
  store %struct.clk* %65, %struct.clk** %3, align 8
  br label %66

66:                                               ; preds = %18, %14
  %67 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %67
}

declare dso_local %struct.pic32_sec_osc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
