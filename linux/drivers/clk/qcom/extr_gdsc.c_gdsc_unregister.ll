; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc_desc = type { i64, %struct.gdsc**, %struct.device* }
%struct.gdsc = type { i32, i64 }
%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdsc_unregister(%struct.gdsc_desc* %0) #0 {
  %2 = alloca %struct.gdsc_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gdsc**, align 8
  %6 = alloca i64, align 8
  store %struct.gdsc_desc* %0, %struct.gdsc_desc** %2, align 8
  %7 = load %struct.gdsc_desc*, %struct.gdsc_desc** %2, align 8
  %8 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.gdsc_desc*, %struct.gdsc_desc** %2, align 8
  %11 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %10, i32 0, i32 1
  %12 = load %struct.gdsc**, %struct.gdsc*** %11, align 8
  store %struct.gdsc** %12, %struct.gdsc*** %5, align 8
  %13 = load %struct.gdsc_desc*, %struct.gdsc_desc** %2, align 8
  %14 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %54, %1
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load %struct.gdsc**, %struct.gdsc*** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %22, i64 %24
  %26 = load %struct.gdsc*, %struct.gdsc** %25, align 8
  %27 = icmp ne %struct.gdsc* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %54

29:                                               ; preds = %21
  %30 = load %struct.gdsc**, %struct.gdsc*** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %30, i64 %32
  %34 = load %struct.gdsc*, %struct.gdsc** %33, align 8
  %35 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load %struct.gdsc**, %struct.gdsc*** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %39, i64 %41
  %43 = load %struct.gdsc*, %struct.gdsc** %42, align 8
  %44 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gdsc**, %struct.gdsc*** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gdsc*, %struct.gdsc** %46, i64 %48
  %50 = load %struct.gdsc*, %struct.gdsc** %49, align 8
  %51 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %50, i32 0, i32 0
  %52 = call i32 @pm_genpd_remove_subdomain(i64 %45, i32* %51)
  br label %53

53:                                               ; preds = %38, %29
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @of_genpd_del_provider(i32 %60)
  ret void
}

declare dso_local i32 @pm_genpd_remove_subdomain(i64, i32*) #1

declare dso_local i32 @of_genpd_del_provider(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
