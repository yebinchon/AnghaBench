; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_get_record_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_get_record_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { i32 }

@ACPI_ERST_GET_RECORD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__erst_get_record_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__erst_get_record_count() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.apei_exec_context, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @erst_exec_ctx_init(%struct.apei_exec_context* %2)
  %5 = load i32, i32* @ACPI_ERST_GET_RECORD_COUNT, align 4
  %6 = call i32 @apei_exec_run(%struct.apei_exec_context* %2, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = call i32 @apei_exec_ctx_get_output(%struct.apei_exec_context* %2)
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @erst_exec_ctx_init(%struct.apei_exec_context*) #1

declare dso_local i32 @apei_exec_run(%struct.apei_exec_context*, i32) #1

declare dso_local i32 @apei_exec_ctx_get_output(%struct.apei_exec_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
