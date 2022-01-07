; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_stm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_stm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ata_acpi_gtm = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_STM\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ACPI set timing mode failed (status=0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_acpi_stm(%struct.ata_port* %0, %struct.ata_acpi_gtm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_acpi_gtm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_acpi_gtm, align 4
  %8 = alloca %struct.acpi_object_list, align 8
  %9 = alloca [3 x %union.acpi_object], align 16
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_acpi_gtm* %1, %struct.ata_acpi_gtm** %5, align 8
  %10 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %5, align 8
  %11 = bitcast %struct.ata_acpi_gtm* %7 to i8*
  %12 = bitcast %struct.ata_acpi_gtm* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %14 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %15 = bitcast %union.acpi_object* %14 to i8**
  store i8* %13, i8** %15, align 16
  %16 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %17 = bitcast %union.acpi_object* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 4, i32* %18, align 16
  %19 = bitcast %struct.ata_acpi_gtm* %7 to i32*
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32* %19, i32** %22, align 8
  %23 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %24 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 1
  %25 = bitcast %union.acpi_object* %24 to i8**
  store i8* %23, i8** %25, align 16
  %26 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 1
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 512, i32* %28, align 16
  %29 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 1
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* %36, i32** %39, align 8
  %40 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %41 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %42 = bitcast %union.acpi_object* %41 to i8**
  store i8* %40, i8** %42, align 16
  %43 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 512, i32* %45, align 16
  %46 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32* %53, i32** %56, align 8
  %57 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 3, i32* %57, align 8
  %58 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %59 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  store %union.acpi_object* %58, %union.acpi_object** %59, align 8
  %60 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 0
  %62 = call i32 @ACPI_HANDLE(i32* %61)
  %63 = call i64 @acpi_evaluate_object(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i32* null)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @AE_NOT_FOUND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %2
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %81

70:                                               ; preds = %2
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @ACPI_FAILURE(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @ata_port_err(%struct.ata_port* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %74, %67
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #2

declare dso_local i32 @ACPI_HANDLE(i32*) #2

declare dso_local i64 @ACPI_FAILURE(i64) #2

declare dso_local i32 @ata_port_err(%struct.ata_port*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
