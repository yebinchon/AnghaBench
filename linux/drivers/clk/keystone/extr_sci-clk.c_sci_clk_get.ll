; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.sci_clk_provider = type { i32, i32 }
%struct.sci_clk = type { %struct.clk_hw, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@_cmp_sci_clk = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @sci_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @sci_clk_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sci_clk_provider*, align 8
  %7 = alloca %struct.sci_clk**, align 8
  %8 = alloca %struct.sci_clk, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sci_clk_provider*
  store %struct.sci_clk_provider* %10, %struct.sci_clk_provider** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.clk_hw* @ERR_PTR(i32 %17)
  store %struct.clk_hw* %18, %struct.clk_hw** %3, align 8
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %8, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %33 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sci_clk_provider*, %struct.sci_clk_provider** %6, align 8
  %36 = getelementptr inbounds %struct.sci_clk_provider, %struct.sci_clk_provider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @_cmp_sci_clk, align 4
  %39 = call %struct.sci_clk** @bsearch(%struct.sci_clk* %8, i32 %34, i32 %37, i32 8, i32 %38)
  store %struct.sci_clk** %39, %struct.sci_clk*** %7, align 8
  %40 = load %struct.sci_clk**, %struct.sci_clk*** %7, align 8
  %41 = icmp ne %struct.sci_clk** %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %19
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.clk_hw* @ERR_PTR(i32 %44)
  store %struct.clk_hw* %45, %struct.clk_hw** %3, align 8
  br label %50

46:                                               ; preds = %19
  %47 = load %struct.sci_clk**, %struct.sci_clk*** %7, align 8
  %48 = load %struct.sci_clk*, %struct.sci_clk** %47, align 8
  %49 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %48, i32 0, i32 0
  store %struct.clk_hw* %49, %struct.clk_hw** %3, align 8
  br label %50

50:                                               ; preds = %46, %42, %15
  %51 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %51
}

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local %struct.sci_clk** @bsearch(%struct.sci_clk*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
