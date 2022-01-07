; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_devm_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_devm_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_hw = type { i32 }

@devm_clk_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @devm_clk_register(%struct.device* %0, %struct.clk_hw* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %5, align 8
  %8 = load i32, i32* @devm_clk_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.clk** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.clk** %10, %struct.clk*** %7, align 8
  %11 = load %struct.clk**, %struct.clk*** %7, align 8
  %12 = icmp ne %struct.clk** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.clk* @ERR_PTR(i32 %15)
  store %struct.clk* %16, %struct.clk** %3, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %20 = call %struct.clk* @clk_register(%struct.device* %18, %struct.clk_hw* %19)
  store %struct.clk* %20, %struct.clk** %6, align 8
  %21 = load %struct.clk*, %struct.clk** %6, align 8
  %22 = call i32 @IS_ERR(%struct.clk* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.clk*, %struct.clk** %6, align 8
  %26 = load %struct.clk**, %struct.clk*** %7, align 8
  store %struct.clk* %25, %struct.clk** %26, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.clk**, %struct.clk*** %7, align 8
  %29 = call i32 @devres_add(%struct.device* %27, %struct.clk** %28)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.clk**, %struct.clk*** %7, align 8
  %32 = call i32 @devres_free(%struct.clk** %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.clk*, %struct.clk** %6, align 8
  store %struct.clk* %34, %struct.clk** %3, align 8
  br label %35

35:                                               ; preds = %33, %13
  %36 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %36
}

declare dso_local %struct.clk** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @clk_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.clk**) #1

declare dso_local i32 @devres_free(%struct.clk**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
