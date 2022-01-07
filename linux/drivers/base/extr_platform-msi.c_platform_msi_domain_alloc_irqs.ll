; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_alloc_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_domain_alloc_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_msi_priv_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_msi_domain_alloc_irqs(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_msi_priv_data*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device* %10, i32 %11, i32 %12)
  store %struct.platform_msi_priv_data* %13, %struct.platform_msi_priv_data** %8, align 8
  %14 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %15 = call i64 @IS_ERR(%struct.platform_msi_priv_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.platform_msi_priv_data* %18)
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %24 = call i32 @platform_msi_alloc_descs(%struct.device* %21, i32 %22, %struct.platform_msi_priv_data* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @msi_domain_alloc_irqs(i32 %31, %struct.device* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %47

39:                                               ; preds = %37
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @platform_msi_free_descs(%struct.device* %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.platform_msi_priv_data*, %struct.platform_msi_priv_data** %8, align 8
  %45 = call i32 @platform_msi_free_priv_data(%struct.platform_msi_priv_data* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %38, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.platform_msi_priv_data* @platform_msi_alloc_priv_data(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_msi_priv_data*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_msi_priv_data*) #1

declare dso_local i32 @platform_msi_alloc_descs(%struct.device*, i32, %struct.platform_msi_priv_data*) #1

declare dso_local i32 @msi_domain_alloc_irqs(i32, %struct.device*, i32) #1

declare dso_local i32 @platform_msi_free_descs(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_msi_free_priv_data(%struct.platform_msi_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
