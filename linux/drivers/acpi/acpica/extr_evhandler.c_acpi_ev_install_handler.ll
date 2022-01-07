; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_install_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_install_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@ev_install_handler = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Found handler for region [%s] in device %p(%p) handler %p\0A\00", align 1
@AE_CTRL_DEPTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_ev_install_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_install_handler(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %struct.acpi_namespace_node*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* @ev_install_handler, align 4
  %16 = call i32 @ACPI_FUNCTION_NAME(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %10, align 8
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %110

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32 %24)
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %13, align 8
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %27 = icmp ne %struct.acpi_namespace_node* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %29, i32* %5, align 4
  br label %110

30:                                               ; preds = %23
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %32 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %38 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %45 = icmp ne %struct.acpi_namespace_node* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @AE_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %110

48:                                               ; preds = %42, %36, %30
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %50 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %49)
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %12, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %52 = icmp ne %union.acpi_operand_object* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @AE_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %110

55:                                               ; preds = %48
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %55
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_8__*
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i64 %66, i32 %70)
  store %union.acpi_operand_object* %71, %union.acpi_operand_object** %11, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %73 = icmp ne %union.acpi_operand_object* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %62
  %75 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @acpi_ut_get_region_name(i64 %79)
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %84 = ptrtoint %union.acpi_operand_object* %83 to i32
  %85 = call i32 @ACPI_DEBUG_PRINT(i32 %84)
  %86 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %86, i32* %5, align 4
  br label %110

87:                                               ; preds = %62
  %88 = load i32, i32* @AE_OK, align 4
  store i32 %88, i32* %5, align 4
  br label %110

89:                                               ; preds = %55
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_7__*
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_8__*
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @AE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %89
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @acpi_ev_detach_region(%union.acpi_operand_object* %102, i32 %103)
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %105, %union.acpi_operand_object* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %101, %99, %87, %74, %53, %46, %28, %21
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i64, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

declare dso_local i32 @acpi_ev_detach_region(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
