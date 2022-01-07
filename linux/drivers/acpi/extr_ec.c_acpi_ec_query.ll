; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32 }
%struct.acpi_ec_query = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Query(0x%02x) scheduled\00", align 1
@ec_query_wq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Query(0x%02x) overlapped\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ec*, i64*)* @acpi_ec_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_query(%struct.acpi_ec* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ec*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_ec_query*, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = call %struct.acpi_ec_query* @acpi_ec_create_query(i64* %6)
  store %struct.acpi_ec_query* %9, %struct.acpi_ec_query** %8, align 8
  %10 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %11 = icmp ne %struct.acpi_ec_query* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %17 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %18 = getelementptr inbounds %struct.acpi_ec_query, %struct.acpi_ec_query* %17, i32 0, i32 2
  %19 = call i32 @acpi_ec_transaction(%struct.acpi_ec* %16, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENODATA, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %56

29:                                               ; preds = %25
  %30 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @acpi_ec_get_query_handler_by_value(%struct.acpi_ec* %30, i64 %31)
  %33 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_ec_query, %struct.acpi_ec_query* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %36 = getelementptr inbounds %struct.acpi_ec_query, %struct.acpi_ec_query* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %56

42:                                               ; preds = %29
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ec_dbg_evt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @ec_query_wq, align 4
  %46 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %47 = getelementptr inbounds %struct.acpi_ec_query, %struct.acpi_ec_query* %46, i32 0, i32 0
  %48 = call i32 @queue_work(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ec_dbg_evt(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %39, %28
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.acpi_ec_query*, %struct.acpi_ec_query** %8, align 8
  %61 = call i32 @acpi_ec_delete_query(%struct.acpi_ec_query* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i64*, i64** %5, align 8
  %64 = icmp ne i64* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = load i64*, i64** %5, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.acpi_ec_query* @acpi_ec_create_query(i64*) #1

declare dso_local i32 @acpi_ec_transaction(%struct.acpi_ec*, i32*) #1

declare dso_local i32 @acpi_ec_get_query_handler_by_value(%struct.acpi_ec*, i64) #1

declare dso_local i32 @ec_dbg_evt(i8*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @acpi_ec_delete_query(%struct.acpi_ec_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
