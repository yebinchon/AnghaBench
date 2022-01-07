; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_write_kern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_write_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@acpi_aml_io = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACPI_AML_OUT_KERN = common dso_local global i32 0, align 4
@ACPI_AML_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @acpi_aml_write_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_write_kern(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.circ_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.circ_buf* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), %struct.circ_buf** %7, align 8
  %10 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %11 = load i32, i32* @ACPI_AML_OUT_KERN, align 4
  %12 = call i32 @acpi_aml_lock_write(%struct.circ_buf* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = call i32 (...) @smp_mb()
  %19 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %20 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %23 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %28 = call i32 @circ_space_to_end(%struct.circ_buf* %27)
  %29 = call i32 @min(i32 %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = call i32 (...) @smp_wmb()
  %35 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %36 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = load %struct.circ_buf*, %struct.circ_buf** %7, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @ACPI_AML_OUT_KERN, align 4
  %48 = call i32 @acpi_aml_unlock_fifo(i32 %47, i32 1)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %17, %15
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @acpi_aml_lock_write(%struct.circ_buf*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @circ_space_to_end(%struct.circ_buf*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @acpi_aml_unlock_fifo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
