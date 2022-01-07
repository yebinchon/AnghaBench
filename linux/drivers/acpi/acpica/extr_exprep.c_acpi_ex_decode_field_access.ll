; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exprep.c_acpi_ex_decode_field_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exprep.c_acpi_ex_decode_field_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ex_decode_field_access = common dso_local global i32 0, align 4
@AML_FIELD_ACCESS_TYPE_MASK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown field access type 0x%X\00", align 1
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, i32, i32*)* @acpi_ex_decode_field_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_decode_field_access(%union.acpi_operand_object* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ex_decode_field_access, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @AML_FIELD_ACCESS_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %22 [
    i32 133, label %17
    i32 131, label %18
    i32 132, label %18
    i32 128, label %19
    i32 130, label %20
    i32 129, label %21
  ]

17:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %27

18:                                               ; preds = %3, %3
  store i32 1, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %27

19:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  store i32 16, i32* %10, align 4
  br label %27

20:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  store i32 32, i32* %10, align 4
  br label %27

21:                                               ; preds = %3
  store i32 8, i32* %9, align 4
  store i32 64, i32* %10, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ACPI_ERROR(i32 %24)
  %26 = call i32 @return_UINT32(i32 0)
  br label %27

27:                                               ; preds = %22, %21, %20, %19, %18, %17
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_BUFFER_FIELD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @return_UINT32(i32 %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_UINT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
