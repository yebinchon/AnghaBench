; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_get_erange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_get_erange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erst_erange = type { i8*, i8*, i8* }
%struct.apei_exec_context = type { i32 }

@ACPI_ERST_GET_ERROR_RANGE = common dso_local global i32 0, align 4
@ACPI_ERST_GET_ERROR_LENGTH = common dso_local global i32 0, align 4
@ACPI_ERST_GET_ERROR_ATTRIBUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.erst_erange*)* @erst_get_erange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_get_erange(%struct.erst_erange* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.erst_erange*, align 8
  %4 = alloca %struct.apei_exec_context, align 4
  %5 = alloca i32, align 4
  store %struct.erst_erange* %0, %struct.erst_erange** %3, align 8
  %6 = call i32 @erst_exec_ctx_init(%struct.apei_exec_context* %4)
  %7 = load i32, i32* @ACPI_ERST_GET_ERROR_RANGE, align 4
  %8 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = call i8* @apei_exec_ctx_get_output(%struct.apei_exec_context* %4)
  %15 = load %struct.erst_erange*, %struct.erst_erange** %3, align 8
  %16 = getelementptr inbounds %struct.erst_erange, %struct.erst_erange* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @ACPI_ERST_GET_ERROR_LENGTH, align 4
  %18 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %13
  %24 = call i8* @apei_exec_ctx_get_output(%struct.apei_exec_context* %4)
  %25 = load %struct.erst_erange*, %struct.erst_erange** %3, align 8
  %26 = getelementptr inbounds %struct.erst_erange, %struct.erst_erange* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ACPI_ERST_GET_ERROR_ATTRIBUTES, align 4
  %28 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %23
  %34 = call i8* @apei_exec_ctx_get_output(%struct.apei_exec_context* %4)
  %35 = load %struct.erst_erange*, %struct.erst_erange** %3, align 8
  %36 = getelementptr inbounds %struct.erst_erange, %struct.erst_erange* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31, %21, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @erst_exec_ctx_init(%struct.apei_exec_context*) #1

declare dso_local i32 @apei_exec_run(%struct.apei_exec_context*, i32) #1

declare dso_local i8* @apei_exec_ctx_get_output(%struct.apei_exec_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
