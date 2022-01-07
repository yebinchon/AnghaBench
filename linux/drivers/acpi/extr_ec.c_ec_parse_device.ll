; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_parse_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_ec_parse_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.acpi_ec = type { i64, i64, i64, i64, i32 }

@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@ec_parse_io_ports = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@boot_ec = common dso_local global %struct.TYPE_2__* null, align 8
@boot_ec_is_ecdt = common dso_local global i64 0, align 8
@EC_FLAGS_IGNORE_DSDT_GPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"_GPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_GLK\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @ec_parse_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_parse_device(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_ec*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.acpi_ec*
  store %struct.acpi_ec* %14, %struct.acpi_ec** %12, align 8
  %15 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %18 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @METHOD_NAME__CRS, align 4
  %21 = load i32, i32* @ec_parse_io_ports, align 4
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %23 = call i32 @acpi_walk_resources(i32 %19, i32 %20, i32 %21, %struct.acpi_ec* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %78

29:                                               ; preds = %4
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %31 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %36 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @AE_OK, align 4
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_ec, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i64, i64* @boot_ec_is_ecdt, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, i64* @EC_FLAGS_IGNORE_DSDT_GPE, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @boot_ec, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %55 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %68

56:                                               ; preds = %47, %44, %41
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @acpi_evaluate_integer(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %11)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %78

64:                                               ; preds = %56
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %67 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %50
  store i64 0, i64* %11, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @acpi_evaluate_integer(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %11)
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %73 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %76 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %68, %62, %39, %27
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, %struct.acpi_ec*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
