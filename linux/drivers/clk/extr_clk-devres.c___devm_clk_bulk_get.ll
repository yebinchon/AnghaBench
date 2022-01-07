; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-devres.c___devm_clk_bulk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-devres.c___devm_clk_bulk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk_bulk_data = type { i32 }
%struct.clk_bulk_devres = type { i32, %struct.clk_bulk_data* }

@devm_clk_bulk_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.clk_bulk_data*, i32)* @__devm_clk_bulk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devm_clk_bulk_get(%struct.device* %0, i32 %1, %struct.clk_bulk_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk_bulk_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_bulk_devres*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.clk_bulk_data* %2, %struct.clk_bulk_data** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @devm_clk_bulk_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.clk_bulk_devres* @devres_alloc(i32 %12, i32 16, i32 %13)
  store %struct.clk_bulk_devres* %14, %struct.clk_bulk_devres** %10, align 8
  %15 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %10, align 8
  %16 = icmp ne %struct.clk_bulk_devres* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %27 = call i32 @clk_bulk_get_optional(%struct.device* %24, i32 %25, %struct.clk_bulk_data* %26)
  store i32 %27, i32* %11, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %32 = call i32 @clk_bulk_get(%struct.device* %29, i32 %30, %struct.clk_bulk_data* %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %8, align 8
  %38 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %10, align 8
  %39 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %38, i32 0, i32 1
  store %struct.clk_bulk_data* %37, %struct.clk_bulk_data** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %10, align 8
  %42 = getelementptr inbounds %struct.clk_bulk_devres, %struct.clk_bulk_devres* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %10, align 8
  %45 = call i32 @devres_add(%struct.device* %43, %struct.clk_bulk_devres* %44)
  br label %49

46:                                               ; preds = %33
  %47 = load %struct.clk_bulk_devres*, %struct.clk_bulk_devres** %10, align 8
  %48 = call i32 @devres_free(%struct.clk_bulk_devres* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.clk_bulk_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @clk_bulk_get_optional(%struct.device*, i32, %struct.clk_bulk_data*) #1

declare dso_local i32 @clk_bulk_get(%struct.device*, i32, %struct.clk_bulk_data*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.clk_bulk_devres*) #1

declare dso_local i32 @devres_free(%struct.clk_bulk_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
