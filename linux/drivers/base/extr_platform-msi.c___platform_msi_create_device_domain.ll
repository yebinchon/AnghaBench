; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c___platform_msi_create_device_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c___platform_msi_create_device_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device = type { i32, i32 }
%struct.irq_domain_ops = type { i32 }
%struct.platform_msi_priv_data = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_domain* @__platform_msi_create_device_domain(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.irq_domain_ops* %4, i8* %5) #0 {
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_domain_ops*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.platform_msi_priv_data*, align 8
  %15 = alloca %struct.irq_domain*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.irq_domain_ops* %4, %struct.irq_domain_ops** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %17, i32 %18, i32 %19)
  store %struct.platform_msi_priv_data* %20, %struct.platform_msi_priv_data** %14, align 8
  %21 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %14, align 8
  %22 = call i64 @IS_ERR(%struct.platform_msi_priv_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store %struct.irq_domain* null, %struct.irq_domain** %7, align 8
  br label %68

25:                                               ; preds = %6
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %14, align 8
  %28 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.irq_domain_ops*, %struct.irq_domain_ops** %12, align 8
  %43 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %14, align 8
  %44 = call %struct.irq_domain* @irq_domain_create_hierarchy(i32 %31, i32 0, i32 %38, i32 %41, %struct.irq_domain_ops* %42, %struct.platform_msi_priv_data* %43)
  store %struct.irq_domain* %44, %struct.irq_domain** %15, align 8
  %45 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  %46 = icmp ne %struct.irq_domain* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %65

48:                                               ; preds = %37
  %49 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  %50 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %14, align 8
  %55 = getelementptr inbounds %struct.platform_msi_priv_data, %struct.platform_msi_priv_data* %54, i32 0, i32 0
  %56 = call i32 @msi_domain_prepare_irqs(i32 %51, %struct.device* %52, i32 %53, i32* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %62

60:                                               ; preds = %48
  %61 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  store %struct.irq_domain* %61, %struct.irq_domain** %7, align 8
  br label %68

62:                                               ; preds = %59
  %63 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  %64 = call i32 @irq_domain_remove(%struct.irq_domain* %63)
  br label %65

65:                                               ; preds = %62, %47
  %66 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %14, align 8
  %67 = call i32 @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %66)
  store %struct.irq_domain* null, %struct.irq_domain** %7, align 8
  br label %68

68:                                               ; preds = %65, %60, %24
  %69 = load %struct.irq_domain*, %struct.irq_domain** %7, align 8
  ret %struct.irq_domain* %69
}

declare dso_local %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_msi_priv_data*) #1

declare dso_local %struct.irq_domain* @irq_domain_create_hierarchy(i32, i32, i32, i32, %struct.irq_domain_ops*, %struct.platform_msi_priv_data*) #1

declare dso_local i32 @msi_domain_prepare_irqs(i32, %struct.device*, i32, i32*) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

declare dso_local i32 @platform_msi_free_priv_data(%struct.platform_msi_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
