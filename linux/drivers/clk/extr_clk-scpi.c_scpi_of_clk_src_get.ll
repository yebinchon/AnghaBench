; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_of_clk_src_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_of_clk_src_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.scpi_clk = type { i32, %struct.clk_hw }
%struct.scpi_clk_data = type { i32, %struct.scpi_clk** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @scpi_of_clk_src_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @scpi_of_clk_src_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scpi_clk*, align 8
  %7 = alloca %struct.scpi_clk_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.scpi_clk_data*
  store %struct.scpi_clk_data* %11, %struct.scpi_clk_data** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %40, %2
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %7, align 8
  %20 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %7, align 8
  %25 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %24, i32 0, i32 1
  %26 = load %struct.scpi_clk**, %struct.scpi_clk*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.scpi_clk*, %struct.scpi_clk** %26, i64 %28
  %30 = load %struct.scpi_clk*, %struct.scpi_clk** %29, align 8
  store %struct.scpi_clk* %30, %struct.scpi_clk** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.scpi_clk*, %struct.scpi_clk** %6, align 8
  %33 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.scpi_clk*, %struct.scpi_clk** %6, align 8
  %38 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %37, i32 0, i32 1
  store %struct.clk_hw* %38, %struct.clk_hw** %3, align 8
  br label %47

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.clk_hw* @ERR_PTR(i32 %45)
  store %struct.clk_hw* %46, %struct.clk_hw** %3, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %48
}

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
