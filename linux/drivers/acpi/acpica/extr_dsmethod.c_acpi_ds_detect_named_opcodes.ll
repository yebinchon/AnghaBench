; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_detect_named_opcodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_detect_named_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%union.acpi_parse_object = type { i32 }

@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@AML_FIELD = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@ACPI_METHOD_IGNORE_SYNC_LEVEL = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Method serialized [%4.4s] %p - [%s] (%4.4X)\0A\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_detect_named_opcodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_detect_named_opcodes(%struct.acpi_walk_state* %0, %union.acpi_parse_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object**, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object** %1, %union.acpi_parse_object*** %5, align 8
  %6 = call i32 @ACPI_FUNCTION_NAME(i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* @acpi_ds_detect_named_opcodes)
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AML_NAMED, align 4
  %13 = load i32, i32* @AML_CREATE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AML_FIELD, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @AE_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %28 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @ACPI_DB_INFO, align 4
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  %56 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %21, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
