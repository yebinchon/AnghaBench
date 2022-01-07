; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_add_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.krait_div2_clk = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8*, i8**, i32, i32* }
%struct.clk = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@krait_div2_clk_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hfpll%s_div\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"hfpll%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*, i32)* @krait_add_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krait_add_div(%struct.device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.krait_div2_clk*, align 8
  %11 = alloca %struct.clk_init_data, align 8
  %12 = alloca [1 x i8*], align 8
  %13 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i8** null, i8*** %16, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  %18 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 4
  store i32* @krait_div2_clk_ops, i32** %19, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.krait_div2_clk* @devm_kzalloc(%struct.device* %20, i32 24, i32 %21)
  store %struct.krait_div2_clk* %22, %struct.krait_div2_clk** %10, align 8
  %23 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %24 = icmp ne %struct.krait_div2_clk* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %4
  %29 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %30 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %32 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %31, i32 0, i32 1
  store i32 6, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %37 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %40 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %42 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.clk_init_data* %11, %struct.clk_init_data** %43, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @kasprintf(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %28
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %83

54:                                               ; preds = %28
  %55 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i8** %55, i8*** %56, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @kasprintf(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %83

70:                                               ; preds = %54
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %10, align 8
  %73 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %72, i32 0, i32 4
  %74 = call %struct.clk* @devm_clk_register(%struct.device* %71, %struct.TYPE_2__* %73)
  store %struct.clk* %74, %struct.clk** %13, align 8
  %75 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load %struct.clk*, %struct.clk** %13, align 8
  %82 = call i32 @PTR_ERR_OR_ZERO(%struct.clk* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %70, %64, %51, %25
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.krait_div2_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.clk* @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
