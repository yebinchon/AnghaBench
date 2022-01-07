; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register_parents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.clk_plt_data = type { i32, i32* }
%struct.pmc_clk = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.platform_device*, %struct.clk_plt_data*, %struct.pmc_clk*)* @plt_clk_register_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @plt_clk_register_parents(%struct.platform_device* %0, %struct.clk_plt_data* %1, %struct.pmc_clk* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.clk_plt_data*, align 8
  %7 = alloca %struct.pmc_clk*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.clk_plt_data* %1, %struct.clk_plt_data** %6, align 8
  store %struct.pmc_clk* %2, %struct.pmc_clk** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %13 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  br label %14

14:                                               ; preds = %22, %3
  %15 = load %struct.pmc_clk*, %struct.pmc_clk** %7, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %15, i64 %17
  %19 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @devm_kcalloc(i32* %27, i32 %28, i32 4, i32 %29)
  %31 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %32 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %34 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i8** @ERR_PTR(i32 %39)
  store i8** %40, i8*** %4, align 8
  br label %131

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8** @kcalloc(i32 %42, i32 8, i32 %43)
  store i8** %44, i8*** %8, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i8** @ERR_PTR(i32 %49)
  store i8** %50, i8*** %4, align 8
  br label %131

51:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %114, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %52
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = load %struct.pmc_clk*, %struct.pmc_clk** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %58, i64 %60
  %62 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pmc_clk*, %struct.pmc_clk** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %64, i64 %66
  %68 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pmc_clk*, %struct.pmc_clk** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %70, i64 %72
  %74 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @plt_clk_register_fixed_rate(%struct.platform_device* %57, i64 %63, i32 %69, i32 %75)
  %77 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %78 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %84 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %56
  %93 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %94 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %10, align 4
  br label %122

101:                                              ; preds = %56
  %102 = load %struct.pmc_clk*, %struct.pmc_clk** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %102, i64 %104
  %106 = getelementptr inbounds %struct.pmc_clk, %struct.pmc_clk* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kstrdup_const(i64 %107, i32 %108)
  %110 = load i8**, i8*** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %109, i8** %113, align 8
  br label %114

114:                                              ; preds = %101
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %52

117:                                              ; preds = %52
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %120 = getelementptr inbounds %struct.clk_plt_data, %struct.clk_plt_data* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i8**, i8*** %8, align 8
  store i8** %121, i8*** %4, align 8
  br label %131

122:                                              ; preds = %92
  %123 = load %struct.clk_plt_data*, %struct.clk_plt_data** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @plt_clk_unregister_fixed_rate_loop(%struct.clk_plt_data* %123, i32 %124)
  %126 = load i8**, i8*** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @plt_clk_free_parent_names_loop(i8** %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = call i8** @ERR_PTR(i32 %129)
  store i8** %130, i8*** %4, align 8
  br label %131

131:                                              ; preds = %122, %117, %47, %37
  %132 = load i8**, i8*** %4, align 8
  ret i8** %132
}

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i8** @ERR_PTR(i32) #1

declare dso_local i8** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @plt_clk_register_fixed_rate(%struct.platform_device*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @kstrdup_const(i64, i32) #1

declare dso_local i32 @plt_clk_unregister_fixed_rate_loop(%struct.clk_plt_data*, i32) #1

declare dso_local i32 @plt_clk_free_parent_names_loop(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
