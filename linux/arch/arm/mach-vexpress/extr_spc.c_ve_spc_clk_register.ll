; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_init_data = type { i64, i32, i32*, i32 }
%struct.clk_spc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_spc_ops = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*)* @ve_spc_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @ve_spc_clk_register(%struct.device* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca %struct.clk_spc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.clk_spc* @kzalloc(i32 16, i32 %6)
  store %struct.clk_spc* %7, %struct.clk_spc** %5, align 8
  %8 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %9 = icmp ne %struct.clk_spc* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.clk* @ERR_PTR(i32 %12)
  store %struct.clk* %13, %struct.clk** %2, align 8
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %16 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @topology_physical_package_id(i32 %20)
  %22 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %23 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %25 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  br label %33

29:                                               ; preds = %14
  %30 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %31 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i64 [ 0, %28 ], [ %32, %29 ]
  %35 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %36 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @dev_name(%struct.device* %37)
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32* @clk_spc_ops, i32** %40, align 8
  %41 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load %struct.clk_spc*, %struct.clk_spc** %5, align 8
  %46 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %45, i32 0, i32 1
  %47 = call %struct.clk* @devm_clk_register(%struct.device* %44, %struct.TYPE_2__* %46)
  store %struct.clk* %47, %struct.clk** %2, align 8
  br label %48

48:                                               ; preds = %33, %10
  %49 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %49
}

declare dso_local %struct.clk_spc* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i64 @topology_physical_package_id(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
