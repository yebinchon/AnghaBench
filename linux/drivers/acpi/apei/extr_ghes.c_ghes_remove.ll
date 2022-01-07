; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_ghes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_ghes.c_ghes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ghes = type { i32, i32, i32, i32, %struct.acpi_hest_generic* }
%struct.acpi_hest_generic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GHES_EXITING = common dso_local global i32 0, align 4
@ghes_list_mutex = common dso_local global i32 0, align 4
@ghes_hed = common dso_local global i32 0, align 4
@ghes_notifier_hed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ghes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghes_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ghes*, align 8
  %6 = alloca %struct.acpi_hest_generic*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.ghes* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.ghes* %8, %struct.ghes** %5, align 8
  %9 = load %struct.ghes*, %struct.ghes** %5, align 8
  %10 = getelementptr inbounds %struct.ghes, %struct.ghes* %9, i32 0, i32 4
  %11 = load %struct.acpi_hest_generic*, %struct.acpi_hest_generic** %10, align 8
  store %struct.acpi_hest_generic* %11, %struct.acpi_hest_generic** %6, align 8
  %12 = load i32, i32* @GHES_EXITING, align 4
  %13 = load %struct.ghes*, %struct.ghes** %5, align 8
  %14 = getelementptr inbounds %struct.ghes, %struct.ghes* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.acpi_hest_generic*, %struct.acpi_hest_generic** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_hest_generic, %struct.acpi_hest_generic* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %57 [
    i32 131, label %21
    i32 135, label %25
    i32 130, label %31
    i32 133, label %31
    i32 134, label %31
    i32 129, label %43
    i32 132, label %46
    i32 128, label %49
  ]

21:                                               ; preds = %1
  %22 = load %struct.ghes*, %struct.ghes** %5, align 8
  %23 = getelementptr inbounds %struct.ghes, %struct.ghes* %22, i32 0, i32 2
  %24 = call i32 @del_timer_sync(i32* %23)
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.ghes*, %struct.ghes** %5, align 8
  %27 = getelementptr inbounds %struct.ghes, %struct.ghes* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ghes*, %struct.ghes** %5, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.ghes* %29)
  br label %59

31:                                               ; preds = %1, %1, %1
  %32 = call i32 @mutex_lock(i32* @ghes_list_mutex)
  %33 = load %struct.ghes*, %struct.ghes** %5, align 8
  %34 = getelementptr inbounds %struct.ghes, %struct.ghes* %33, i32 0, i32 0
  %35 = call i32 @list_del_rcu(i32* %34)
  %36 = call i32 @list_empty(i32* @ghes_hed)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @unregister_acpi_hed_notifier(i32* @ghes_notifier_hed)
  br label %40

40:                                               ; preds = %38, %31
  %41 = call i32 @mutex_unlock(i32* @ghes_list_mutex)
  %42 = call i32 (...) @synchronize_rcu()
  br label %59

43:                                               ; preds = %1
  %44 = load %struct.ghes*, %struct.ghes** %5, align 8
  %45 = call i32 @ghes_sea_remove(%struct.ghes* %44)
  br label %59

46:                                               ; preds = %1
  %47 = load %struct.ghes*, %struct.ghes** %5, align 8
  %48 = call i32 @ghes_nmi_remove(%struct.ghes* %47)
  br label %59

49:                                               ; preds = %1
  %50 = load %struct.ghes*, %struct.ghes** %5, align 8
  %51 = call i32 @apei_sdei_unregister_ghes(%struct.ghes* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %49
  br label %59

57:                                               ; preds = %1
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %56, %46, %43, %40, %25, %21
  %60 = load %struct.ghes*, %struct.ghes** %5, align 8
  %61 = call i32 @ghes_fini(%struct.ghes* %60)
  %62 = load %struct.ghes*, %struct.ghes** %5, align 8
  %63 = call i32 @ghes_edac_unregister(%struct.ghes* %62)
  %64 = load %struct.ghes*, %struct.ghes** %5, align 8
  %65 = call i32 @kfree(%struct.ghes* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %66, i32* null)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ghes* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.ghes*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @unregister_acpi_hed_notifier(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @ghes_sea_remove(%struct.ghes*) #1

declare dso_local i32 @ghes_nmi_remove(%struct.ghes*) #1

declare dso_local i32 @apei_sdei_unregister_ghes(%struct.ghes*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ghes_fini(%struct.ghes*) #1

declare dso_local i32 @ghes_edac_unregister(%struct.ghes*) #1

declare dso_local i32 @kfree(%struct.ghes*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
