; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_dev_match_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_dev_match_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_dev_match_info = type { i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @acpi_dev_match_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dev_match_cb(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_dev_match_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.acpi_device* @to_acpi_device(%struct.device* %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.acpi_dev_match_info*
  store %struct.acpi_dev_match_info* %13, %struct.acpi_dev_match_info** %7, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %15 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @acpi_match_device_ids(%struct.acpi_device* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %7, align 8
  %38 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strcmp(i32 %36, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %66

43:                                               ; preds = %32, %21
  %44 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %66

49:                                               ; preds = %43
  %50 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @acpi_evaluate_integer(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %66

58:                                               ; preds = %49
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.acpi_dev_match_info*, %struct.acpi_dev_match_info** %7, align 8
  %61 = getelementptr inbounds %struct.acpi_dev_match_info, %struct.acpi_dev_match_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %59, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %58, %57, %48, %42, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i64 @acpi_match_device_ids(%struct.acpi_device*, i32) #1

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
