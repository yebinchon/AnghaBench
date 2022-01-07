; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_pll.c_clk_register_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_pll.c_clk_register_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_pll_data = type { i32 }
%struct.clk_init_data = type { i8*, i8**, i32, i64, i32* }
%struct.clk_pll = type { %struct.TYPE_2__, %struct.clk_pll_data* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, %struct.clk_pll_data*)* @clk_register_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_register_pll(%struct.device* %0, i8* %1, i8* %2, %struct.clk_pll_data* %3) #0 {
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.clk_pll_data*, align 8
  %10 = alloca %struct.clk_init_data, align 8
  %11 = alloca %struct.clk_pll*, align 8
  %12 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.clk_pll_data* %3, %struct.clk_pll_data** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.clk_pll* @kzalloc(i32 16, i32 %13)
  store %struct.clk_pll* %14, %struct.clk_pll** %11, align 8
  %15 = load %struct.clk_pll*, %struct.clk_pll** %11, align 8
  %16 = icmp ne %struct.clk_pll* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.clk* @ERR_PTR(i32 %19)
  store %struct.clk* %20, %struct.clk** %5, align 8
  br label %56

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 4
  store i32* @clk_pll_ops, i32** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i8** [ %8, %28 ], [ null, %29 ]
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 1
  store i8** %31, i8*** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.clk_pll_data*, %struct.clk_pll_data** %9, align 8
  %39 = load %struct.clk_pll*, %struct.clk_pll** %11, align 8
  %40 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %39, i32 0, i32 1
  store %struct.clk_pll_data* %38, %struct.clk_pll_data** %40, align 8
  %41 = load %struct.clk_pll*, %struct.clk_pll** %11, align 8
  %42 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.clk_init_data* %10, %struct.clk_init_data** %43, align 8
  %44 = load %struct.clk_pll*, %struct.clk_pll** %11, align 8
  %45 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %44, i32 0, i32 0
  %46 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_2__* %45)
  store %struct.clk* %46, %struct.clk** %12, align 8
  %47 = load %struct.clk*, %struct.clk** %12, align 8
  %48 = call i64 @IS_ERR(%struct.clk* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %53

51:                                               ; preds = %30
  %52 = load %struct.clk*, %struct.clk** %12, align 8
  store %struct.clk* %52, %struct.clk** %5, align 8
  br label %56

53:                                               ; preds = %50
  %54 = load %struct.clk_pll*, %struct.clk_pll** %11, align 8
  %55 = call i32 @kfree(%struct.clk_pll* %54)
  store %struct.clk* null, %struct.clk** %5, align 8
  br label %56

56:                                               ; preds = %53, %51, %17
  %57 = load %struct.clk*, %struct.clk** %5, align 8
  ret %struct.clk* %57
}

declare dso_local %struct.clk_pll* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
