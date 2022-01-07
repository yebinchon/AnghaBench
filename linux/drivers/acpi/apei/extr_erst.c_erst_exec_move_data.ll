; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_exec_move_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_exec_move_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { i32, i64, i64 }
%struct.acpi_whea_header = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"MOVE_DATA can not be used in interrupt context.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apei_exec_context*, %struct.acpi_whea_header*)* @erst_exec_move_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_exec_move_data(%struct.apei_exec_context* %0, %struct.acpi_whea_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apei_exec_context*, align 8
  %5 = alloca %struct.acpi_whea_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.apei_exec_context* %0, %struct.apei_exec_context** %4, align 8
  store %struct.acpi_whea_header* %1, %struct.acpi_whea_header** %5, align 8
  %10 = call i64 (...) @in_interrupt()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %5, align 8
  %18 = call i32 @__apei_exec_read_register(%struct.acpi_whea_header* %17, i64* %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %16
  %24 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %25 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %30 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @ioremap(i64 %28, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %66

38:                                               ; preds = %23
  %39 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %40 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %45 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @ioremap(i64 %43, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %38
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @iounmap(i8* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %38
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %59 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memmove(i8* %56, i8* %57, i32 %60)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @iounmap(i8* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @iounmap(i8* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %50, %35, %21, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @__apei_exec_read_register(%struct.acpi_whea_header*, i64*) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
