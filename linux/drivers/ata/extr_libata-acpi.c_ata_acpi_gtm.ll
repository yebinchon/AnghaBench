; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_acpi_gtm = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GTM\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ACPI get timing mode failed (AE 0x%x)\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"_GTM returned unexpected object type 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"_GTM returned invalid length %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_acpi_gtm(%struct.ata_port* %0, %struct.ata_acpi_gtm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_acpi_gtm*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_acpi_gtm* %1, %struct.ata_acpi_gtm** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store %union.acpi_object* null, %union.acpi_object** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %13, i32* %12, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = call i32 @ACPI_HANDLE(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @acpi_evaluate_object(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @AE_NOT_FOUND, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %77

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @ACPI_FAILURE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @ata_port_err(%struct.ata_port* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %77

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %43 = load %union.acpi_object*, %union.acpi_object** %42, align 8
  store %union.acpi_object* %43, %union.acpi_object** %7, align 8
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %51 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %52 = bitcast %union.acpi_object* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ata_port_warn(%struct.ata_port* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  br label %77

55:                                               ; preds = %41
  %56 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 4
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %64 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = call i32 @ata_port_err(%struct.ata_port* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  br label %77

70:                                               ; preds = %55
  %71 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %5, align 8
  %72 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %73 = bitcast %union.acpi_object* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(%struct.ata_acpi_gtm* %71, i32 %75, i32 4)
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %70, %62, %49, %37, %30
  %78 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %79 = load %union.acpi_object*, %union.acpi_object** %78, align 8
  %80 = call i32 @kfree(%union.acpi_object* %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ata_port_err(%struct.ata_port*, i8*, i64) #1

declare dso_local i32 @ata_port_warn(%struct.ata_port*, i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ata_acpi_gtm*, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
