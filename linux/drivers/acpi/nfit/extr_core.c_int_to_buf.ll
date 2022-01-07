; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_int_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_int_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"BIOS bug, unexpected element type: %d\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_object* (%union.acpi_object*)* @int_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_object* @int_to_buf(%union.acpi_object* %0) #0 {
  %2 = alloca %union.acpi_object*, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca i8*, align 8
  store %union.acpi_object* %0, %union.acpi_object** %2, align 8
  %5 = call %union.acpi_object* @ACPI_ALLOCATE(i32 20)
  store %union.acpi_object* %5, %union.acpi_object** %3, align 8
  store i8* null, i8** %4, align 8
  %6 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %7 = icmp ne %union.acpi_object* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %11 = bitcast %union.acpi_object* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %17 = bitcast %union.acpi_object* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %39

20:                                               ; preds = %9
  %21 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %22 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %21, i64 1
  %23 = bitcast %union.acpi_object* %22 to i8*
  store i8* %23, i8** %4, align 8
  %24 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %25 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %26 = bitcast %union.acpi_object* %25 to i64*
  store i64 %24, i64* %26, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @memcpy(i8* %34, i32* %37, i32 4)
  br label %39

39:                                               ; preds = %20, %15, %8
  %40 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %41 = call i32 @ACPI_FREE(%union.acpi_object* %40)
  %42 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  ret %union.acpi_object* %42
}

declare dso_local %union.acpi_object* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
