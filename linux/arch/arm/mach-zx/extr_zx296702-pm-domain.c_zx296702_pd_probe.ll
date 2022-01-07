; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-zx/extr_zx296702-pm-domain.c_zx296702_pd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-zx/extr_zx296702-pm-domain.c_zx296702_pd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.genpd_onecell_data = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zx296702_pm_domains = common dso_local global i32* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory resource defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pcubase = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ioremap fail.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx296702_pd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx296702_pd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.genpd_onecell_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_4__* %8, i32 16, i32 %9)
  store %struct.genpd_onecell_data* %10, %struct.genpd_onecell_data** %4, align 8
  %11 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %12 = icmp ne %struct.genpd_onecell_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %72

16:                                               ; preds = %1
  %17 = load i32*, i32** @zx296702_pm_domains, align 8
  %18 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %19 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** @zx296702_pm_domains, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %23 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %5, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %16
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = call i32 @devm_ioremap_resource(%struct.TYPE_4__* %37, %struct.resource* %38)
  store i32 %39, i32* @pcubase, align 4
  %40 = load i32, i32* @pcubase, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_4__* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %72

49:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** @zx296702_pm_domains, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** @zx296702_pm_domains, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_genpd_init(i32 %60, i32* null, i32 0)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %71 = call i32 @of_genpd_add_provider_onecell(i32 %69, %struct.genpd_onecell_data* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %43, %29, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_4__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pm_genpd_init(i32, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
