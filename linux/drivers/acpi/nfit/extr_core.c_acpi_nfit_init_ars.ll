; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init_ars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init_ars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32 }
%struct.nfit_spa = type { i32, i32, i32, i32 }
%struct.nd_cmd_ars_cap = type { i32, i32, i32 }

@ARS_FAILED = common dso_local global i32 0, align 4
@NFIT_SPA_VOLATILE = common dso_local global i32 0, align 4
@ND_ARS_VOLATILE = common dso_local global i32 0, align 4
@NFIT_SPA_PM = common dso_local global i32 0, align 4
@ND_ARS_PERSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_nfit_desc*, %struct.nfit_spa*)* @acpi_nfit_init_ars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_nfit_init_ars(%struct.acpi_nfit_desc* %0, %struct.nfit_spa* %1) #0 {
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.nfit_spa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_cmd_ars_cap, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  store %struct.nfit_spa* %1, %struct.nfit_spa** %4, align 8
  %8 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %9 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nfit_spa_type(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @ARS_FAILED, align 4
  %13 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %14 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = call i32 @memset(%struct.nd_cmd_ars_cap* %6, i32 0, i32 12)
  %17 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %18 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %19 = call i32 @ars_get_cap(%struct.acpi_nfit_desc* %17, %struct.nd_cmd_ars_cap* %6, %struct.nfit_spa* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %69

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NFIT_SPA_VOLATILE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  %31 = load i32, i32* @ND_ARS_VOLATILE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %69

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @NFIT_SPA_PM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 16
  %43 = load i32, i32* @ND_ARS_PERSISTENT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %69

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %51 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.nd_cmd_ars_cap, %struct.nd_cmd_ars_cap* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %55 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %57 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @max(i32 %58, i32 %61)
  %63 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ARS_FAILED, align 4
  %66 = load %struct.nfit_spa*, %struct.nfit_spa** %4, align 8
  %67 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %47, %46, %34, %22
  ret void
}

declare dso_local i32 @nfit_spa_type(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.nd_cmd_ars_cap*, i32, i32) #1

declare dso_local i32 @ars_get_cap(%struct.acpi_nfit_desc*, %struct.nd_cmd_ars_cap*, %struct.nfit_spa*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
