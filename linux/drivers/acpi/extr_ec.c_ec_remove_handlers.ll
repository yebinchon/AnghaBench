; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_remove_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_remove_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32 }

@EC_FLAGS_EC_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_EC = common dso_local global i32 0, align 4
@acpi_ec_space_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to remove space handler\0A\00", align 1
@EC_FLAGS_GPE_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@acpi_ec_gpe_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to remove gpe handler\0A\00", align 1
@EC_FLAGS_EVT_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @ec_remove_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ec_remove_handlers(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  %3 = load i32, i32* @EC_FLAGS_EC_HANDLER_INSTALLED, align 4
  %4 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %4, i32 0, i32 0
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %13 = call i32 @acpi_remove_address_space_handler(i32 %11, i32 %12, i32* @acpi_ec_space_handler)
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = load i32, i32* @EC_FLAGS_EC_HANDLER_INSTALLED, align 4
  %20 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %25 = call i32 @acpi_ec_stop(%struct.acpi_ec* %24, i32 0)
  %26 = load i32, i32* @EC_FLAGS_GPE_HANDLER_INSTALLED, align 4
  %27 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %23
  %32 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %33 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_remove_gpe_handler(i32* null, i32 %34, i32* @acpi_ec_gpe_handler)
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* @EC_FLAGS_GPE_HANDLER_INSTALLED, align 4
  %42 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %43 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %42, i32 0, i32 0
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i32, i32* @EC_FLAGS_EVT_HANDLER_INSTALLED, align 4
  %47 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %48 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %53 = call i32 @acpi_ec_remove_query_handlers(%struct.acpi_ec* %52, i32 1, i32 0)
  %54 = load i32, i32* @EC_FLAGS_EVT_HANDLER_INSTALLED, align 4
  %55 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %56 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %51, %45
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_remove_address_space_handler(i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @acpi_ec_stop(%struct.acpi_ec*, i32) #1

declare dso_local i32 @acpi_remove_gpe_handler(i32*, i32, i32*) #1

declare dso_local i32 @acpi_ec_remove_query_handlers(%struct.acpi_ec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
