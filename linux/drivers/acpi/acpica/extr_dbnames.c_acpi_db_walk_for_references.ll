; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_references.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_namespace_node = type opaque

@.str = private unnamed_addr constant [26 x i8] c"Object is a Node [%4.4s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Reference at Node->Object %p [%4.4s]\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_db_walk_for_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_walk_for_references(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %struct.acpi_namespace_node*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %12, %union.acpi_operand_object** %9, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %14, %struct.acpi_namespace_node** %10, align 8
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to i8*
  %18 = bitcast i8* %17 to %struct.acpi_namespace_node*
  %19 = icmp eq %struct.acpi_namespace_node* %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %22 = bitcast %struct.acpi_namespace_node* %21 to i8*
  %23 = call i32 @acpi_ut_get_node_name(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 (i8*, i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %20, %4
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %29 = bitcast %struct.acpi_namespace_node* %28 to i8*
  %30 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(i8* %29)
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %32 = icmp eq %union.acpi_operand_object* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %35 = bitcast %struct.acpi_namespace_node* %34 to i8*
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %37 = bitcast %struct.acpi_namespace_node* %36 to i8*
  %38 = call i32 @acpi_ut_get_node_name(i8* %37)
  %39 = call i32 (i8*, i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @AE_OK, align 4
  ret i32 %41
}

declare dso_local i32 @acpi_os_printf(i8*, i8*, ...) #1

declare dso_local i32 @acpi_ut_get_node_name(i8*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
