; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_acpi_ipmi_space_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_acpi_ipmi_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_ipmi_msg = type { i32, i32, i32, i32, i32, %struct.acpi_ipmi_device* }
%struct.acpi_ipmi_device = type { i32, i32, i32, i64 }

@ACPI_IO_MASK = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IPMI_TIMEOUT = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i8*, i8*)* @acpi_ipmi_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ipmi_space_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.acpi_ipmi_msg*, align 8
  %15 = alloca %struct.acpi_ipmi_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ACPI_IO_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @ACPI_READ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @AE_TYPE, align 4
  store i32 %25, i32* %7, align 4
  br label %104

26:                                               ; preds = %6
  %27 = call %struct.acpi_ipmi_msg* (...) @ipmi_msg_alloc()
  store %struct.acpi_ipmi_msg* %27, %struct.acpi_ipmi_msg** %14, align 8
  %28 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %29 = icmp ne %struct.acpi_ipmi_msg* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %31, i32* %7, align 4
  br label %104

32:                                               ; preds = %26
  %33 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %34 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %33, i32 0, i32 5
  %35 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %34, align 8
  store %struct.acpi_ipmi_device* %35, %struct.acpi_ipmi_device** %15, align 8
  %36 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @acpi_format_ipmi_request(%struct.acpi_ipmi_msg* %36, i32 %37, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %43 = call i32 @ipmi_msg_release(%struct.acpi_ipmi_msg* %42)
  %44 = load i32, i32* @AE_TYPE, align 4
  store i32 %44, i32* %7, align 4
  br label %104

45:                                               ; preds = %32
  %46 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %47 = call i32 @acpi_ipmi_msg_get(%struct.acpi_ipmi_msg* %46)
  %48 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  %49 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %50 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  %55 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %56 = call i32 @ipmi_msg_release(%struct.acpi_ipmi_msg* %55)
  %57 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %57, i32* %7, align 4
  br label %104

58:                                               ; preds = %45
  %59 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %60 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %59, i32 0, i32 1
  %61 = load i64, i64* %18, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %64 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %63, i32 0, i32 4
  %65 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %66 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %65, i32 0, i32 2
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %69 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %68, i32 0, i32 1
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0))
  %73 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %74 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %77 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %76, i32 0, i32 3
  %78 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %79 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %82 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %81, i32 0, i32 1
  %83 = load i32, i32* @IPMI_TIMEOUT, align 4
  %84 = call i32 @ipmi_request_settime(i32 %75, i32* %77, i32 %80, i32* %82, i32* null, i32 0, i32 0, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %58
  %88 = load i32, i32* @AE_ERROR, align 4
  store i32 %88, i32* %17, align 4
  br label %97

89:                                               ; preds = %58
  %90 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %91 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %90, i32 0, i32 0
  %92 = call i32 @wait_for_completion(i32* %91)
  %93 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @acpi_format_ipmi_response(%struct.acpi_ipmi_msg* %93, i32* %94)
  %96 = load i32, i32* @AE_OK, align 4
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %89, %87
  %98 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %15, align 8
  %99 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %100 = call i32 @ipmi_cancel_tx_msg(%struct.acpi_ipmi_device* %98, %struct.acpi_ipmi_msg* %99)
  %101 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %14, align 8
  %102 = call i32 @acpi_ipmi_msg_put(%struct.acpi_ipmi_msg* %101)
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %53, %41, %30, %24
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.acpi_ipmi_msg* @ipmi_msg_alloc(...) #1

declare dso_local i64 @acpi_format_ipmi_request(%struct.acpi_ipmi_msg*, i32, i32*) #1

declare dso_local i32 @ipmi_msg_release(%struct.acpi_ipmi_msg*) #1

declare dso_local i32 @acpi_ipmi_msg_get(%struct.acpi_ipmi_msg*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipmi_request_settime(i32, i32*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @acpi_format_ipmi_response(%struct.acpi_ipmi_msg*, i32*) #1

declare dso_local i32 @ipmi_cancel_tx_msg(%struct.acpi_ipmi_device*, %struct.acpi_ipmi_msg*) #1

declare dso_local i32 @acpi_ipmi_msg_put(%struct.acpi_ipmi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
