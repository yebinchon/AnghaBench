; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_install_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_install_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32, i32 }

@EC_FLAGS_EC_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_EC = common dso_local global i32 0, align 4
@acpi_ec_space_handler = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"Fail in evaluating the _REG object of EC device. Broken bios is suspected.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EC_FLAGS_EVT_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@acpi_ec_register_query_methods = common dso_local global i32 0, align 4
@EC_FLAGS_GPE_HANDLER_INSTALLED = common dso_local global i32 0, align 4
@ACPI_GPE_EDGE_TRIGGERED = common dso_local global i32 0, align 4
@acpi_ec_gpe_handler = common dso_local global i32 0, align 4
@EC_FLAGS_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*, i32)* @ec_install_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_install_handlers(%struct.acpi_ec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %8 = call i32 @acpi_ec_start(%struct.acpi_ec* %7, i32 0)
  %9 = load i32, i32* @EC_FLAGS_EC_HANDLER_INSTALLED, align 4
  %10 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %2
  %15 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %16 = call i32 @acpi_ec_enter_noirq(%struct.acpi_ec* %15)
  %17 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %22 = call i64 @acpi_install_address_space_handler(i32 %19, i32 %20, i32* @acpi_ec_space_handler, i32* null, %struct.acpi_ec* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @ACPI_FAILURE(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @AE_NOT_FOUND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %34 = call i32 @acpi_ec_stop(%struct.acpi_ec* %33, i32 0)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* @EC_FLAGS_EC_HANDLER_INSTALLED, align 4
  %40 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %40, i32 0, i32 1
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %2
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %106

47:                                               ; preds = %43
  %48 = load i32, i32* @EC_FLAGS_EVT_HANDLER_INSTALLED, align 4
  %49 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %55 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @acpi_ec_register_query_methods, align 4
  %59 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %60 = call i32 @acpi_walk_namespace(i32 %54, i32 %57, i32 1, i32 %58, i32* null, %struct.acpi_ec* %59, i32* null)
  %61 = load i32, i32* @EC_FLAGS_EVT_HANDLER_INSTALLED, align 4
  %62 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %62, i32 0, i32 1
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  br label %65

65:                                               ; preds = %53, %47
  %66 = load i32, i32* @EC_FLAGS_GPE_HANDLER_INSTALLED, align 4
  %67 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %67, i32 0, i32 1
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %65
  %72 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ACPI_GPE_EDGE_TRIGGERED, align 4
  %76 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %77 = call i64 @acpi_install_gpe_raw_handler(i32* null, i32 %74, i32 %75, i32* @acpi_ec_gpe_handler, %struct.acpi_ec* %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @ACPI_SUCCESS(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %71
  %82 = load i32, i32* @EC_FLAGS_GPE_HANDLER_INSTALLED, align 4
  %83 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %84 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %83, i32 0, i32 1
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %87 = call i32 @acpi_ec_leave_noirq(%struct.acpi_ec* %86)
  %88 = load i32, i32* @EC_FLAGS_STARTED, align 4
  %89 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %90 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %89, i32 0, i32 1
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %100 = call i32 @acpi_ec_enable_gpe(%struct.acpi_ec* %99, i32 1)
  br label %101

101:                                              ; preds = %98, %93, %81
  br label %102

102:                                              ; preds = %101, %71
  br label %103

103:                                              ; preds = %102, %65
  %104 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %105 = call i32 @acpi_ec_enable_event(%struct.acpi_ec* %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %46, %32
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @acpi_ec_start(%struct.acpi_ec*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @acpi_ec_enter_noirq(%struct.acpi_ec*) #1

declare dso_local i64 @acpi_install_address_space_handler(i32, i32, i32*, i32*, %struct.acpi_ec*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @acpi_ec_stop(%struct.acpi_ec*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.acpi_ec*, i32*) #1

declare dso_local i64 @acpi_install_gpe_raw_handler(i32*, i32, i32, i32*, %struct.acpi_ec*) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @acpi_ec_leave_noirq(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_enable_gpe(%struct.acpi_ec*, i32) #1

declare dso_local i32 @acpi_ec_enable_event(%struct.acpi_ec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
