; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c___print_extlog_rcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c___print_extlog_rcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_generic_status = type { i64 }

@__print_extlog_rcd.seqno = internal global i32 0, align 4
@CPER_SEV_CORRECTED = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s{%u}\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%sHardware error detected on CPU%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.acpi_hest_generic_status*, i32)* @__print_extlog_rcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__print_extlog_rcd(i8* %0, %struct.acpi_hest_generic_status* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_hest_generic_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store %struct.acpi_hest_generic_status* %1, %struct.acpi_hest_generic_status** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPER_SEV_CORRECTED, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i8*, i8** @KERN_INFO, align 8
  store i8* %18, i8** %4, align 8
  br label %21

19:                                               ; preds = %11
  %20 = load i8*, i8** @KERN_ERR, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %3
  %23 = call i32 @atomic_inc_return(i32* @__print_extlog_rcd.seqno)
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @snprintf(i8* %24, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %32 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %5, align 8
  %33 = call i32 @cper_estatus_print(i8* %31, %struct.acpi_hest_generic_status* %32)
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i8*, i32) #1

declare dso_local i32 @cper_estatus_print(i8*, %struct.acpi_hest_generic_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
