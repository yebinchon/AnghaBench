; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__register_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c__register_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_omap_reg = type { i32 }
%struct.clk_div_table = type { i32 }
%struct.clk_omap_divider = type { i32, i32, i32, %struct.TYPE_2__, %struct.clk_div_table*, i32, i32 }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, i32* }

@CLK_DIVIDER_HIWORD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"divider value exceeds LOWORD field\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ti_clk_divider_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, i8*, i8*, i64, %struct.clk_omap_reg*, i32, i32, i32, i32, %struct.clk_div_table*)* @_register_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @_register_divider(%struct.device* %0, i8* %1, i8* %2, i64 %3, %struct.clk_omap_reg* %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.clk_div_table* %9) #0 {
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.clk_omap_reg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.clk_div_table*, align 8
  %22 = alloca %struct.clk_omap_divider*, align 8
  %23 = alloca %struct.clk*, align 8
  %24 = alloca %struct.clk_init_data, align 8
  store %struct.device* %0, %struct.device** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store %struct.clk_omap_reg* %4, %struct.clk_omap_reg** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.clk_div_table* %9, %struct.clk_div_table** %21, align 8
  %25 = load i32, i32* %20, align 4
  %26 = load i32, i32* @CLK_DIVIDER_HIWORD_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %10
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp sgt i32 %32, 16
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.clk* @ERR_PTR(i32 %37)
  store %struct.clk* %38, %struct.clk** %11, align 8
  br label %102

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %10
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.clk_omap_divider* @kzalloc(i32 40, i32 %41)
  store %struct.clk_omap_divider* %42, %struct.clk_omap_divider** %22, align 8
  %43 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %44 = icmp ne %struct.clk_omap_divider* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.clk* @ERR_PTR(i32 %47)
  store %struct.clk* %48, %struct.clk** %11, align 8
  br label %102

49:                                               ; preds = %40
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 4
  store i32* @ti_clk_divider_ops, i32** %52, align 8
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i8** [ %14, %57 ], [ null, %58 ]
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 2
  store i8** %60, i8*** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %24, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %68 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %67, i32 0, i32 6
  %69 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %16, align 8
  %70 = call i32 @memcpy(i32* %68, %struct.clk_omap_reg* %69, i32 4)
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %73 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %76 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %79 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %20, align 4
  %81 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %82 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %84 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store %struct.clk_init_data* %24, %struct.clk_init_data** %85, align 8
  %86 = load %struct.clk_div_table*, %struct.clk_div_table** %21, align 8
  %87 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %88 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %87, i32 0, i32 4
  store %struct.clk_div_table* %86, %struct.clk_div_table** %88, align 8
  %89 = load %struct.device*, %struct.device** %12, align 8
  %90 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %91 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %90, i32 0, i32 3
  %92 = load i8*, i8** %13, align 8
  %93 = call %struct.clk* @ti_clk_register(%struct.device* %89, %struct.TYPE_2__* %91, i8* %92)
  store %struct.clk* %93, %struct.clk** %23, align 8
  %94 = load %struct.clk*, %struct.clk** %23, align 8
  %95 = call i64 @IS_ERR(%struct.clk* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %59
  %98 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %22, align 8
  %99 = call i32 @kfree(%struct.clk_omap_divider* %98)
  br label %100

100:                                              ; preds = %97, %59
  %101 = load %struct.clk*, %struct.clk** %23, align 8
  store %struct.clk* %101, %struct.clk** %11, align 8
  br label %102

102:                                              ; preds = %100, %45, %34
  %103 = load %struct.clk*, %struct.clk** %11, align 8
  ret %struct.clk* %103
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local %struct.clk_omap_divider* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.clk_omap_reg*, i32) #1

declare dso_local %struct.clk* @ti_clk_register(%struct.device*, %struct.TYPE_2__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_omap_divider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
