; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_install_space_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evhandler.c_acpi_ev_install_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %union.acpi_operand_object*, i32*, i8*, %struct.acpi_namespace_node*, i32*, i8*, i8* }
%struct.TYPE_6__ = type { %union.acpi_operand_object* }
%struct.TYPE_4__ = type { i8* }

@AE_OK = common dso_local global i32 0, align 4
@ev_install_space_handler = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_TYPE_THERMAL = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DEFAULT_HANDLER = common dso_local global i64 0, align 8
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i8* null, align 8
@acpi_ex_system_memory_space_handler = common dso_local global i64 0, align 8
@acpi_ev_system_memory_region_setup = common dso_local global i32* null, align 8
@acpi_ex_system_io_space_handler = common dso_local global i64 0, align 8
@acpi_ev_io_space_region_setup = common dso_local global i32* null, align 8
@acpi_ex_cmos_space_handler = common dso_local global i64 0, align 8
@acpi_ev_cmos_region_setup = common dso_local global i32* null, align 8
@acpi_ex_data_table_space_handler = common dso_local global i64 0, align 8
@acpi_ev_default_region_setup = common dso_local global i32* null, align 8
@AE_SAME_HANDLER = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Creating object on Device %p while installing handler\0A\00", align 1
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Installing address handler for region %s(%X) on Device %4.4s %p(%p)\0A\00", align 1
@ACPI_TYPE_LOCAL_ADDRESS_HANDLER = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@acpi_ev_install_handler = common dso_local global i32 0, align 4
@acpi_ev_pci_bar_region_setup = common dso_local global i32* null, align 8
@acpi_ev_pci_config_region_setup = common dso_local global i32* null, align 8
@acpi_ex_pci_bar_space_handler = common dso_local global i64 0, align 8
@acpi_ex_pci_config_space_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node* %0, i32 %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %14, align 4
  store i8* null, i8** %16, align 8
  %18 = load i32, i32* @ev_install_space_handler, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %27 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %33 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_THERMAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %40 = icmp ne %struct.acpi_namespace_node* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %42, i32* %14, align 4
  br label %201

43:                                               ; preds = %37, %31, %25, %5
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ACPI_DEFAULT_HANDLER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i8*, i8** @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 8
  store i8* %48, i8** %16, align 8
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %61 [
    i32 128, label %50
    i32 129, label %53
    i32 133, label %56
    i32 132, label %59
  ]

50:                                               ; preds = %47
  %51 = load i64, i64* @acpi_ex_system_memory_space_handler, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** @acpi_ev_system_memory_region_setup, align 8
  store i32* %52, i32** %10, align 8
  br label %63

53:                                               ; preds = %47
  %54 = load i64, i64* @acpi_ex_system_io_space_handler, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i32*, i32** @acpi_ev_io_space_region_setup, align 8
  store i32* %55, i32** %10, align 8
  br label %63

56:                                               ; preds = %47
  %57 = load i64, i64* @acpi_ex_cmos_space_handler, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i32*, i32** @acpi_ev_cmos_region_setup, align 8
  store i32* %58, i32** %10, align 8
  br label %63

59:                                               ; preds = %47
  %60 = load i64, i64* @acpi_ex_data_table_space_handler, align 8
  store i64 %60, i64* %9, align 8
  store i32* null, i32** %10, align 8
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %62, i32* %14, align 4
  br label %201

63:                                               ; preds = %59, %56, %53, %50
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32*, i32** %10, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** @acpi_ev_default_region_setup, align 8
  store i32* %68, i32** %10, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %71 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %70)
  store %union.acpi_operand_object* %71, %union.acpi_operand_object** %12, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %73 = icmp ne %union.acpi_operand_object* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %78, align 8
  %80 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i32 %75, %union.acpi_operand_object* %79)
  store %union.acpi_operand_object* %80, %union.acpi_operand_object** %13, align 8
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %82 = icmp ne %union.acpi_operand_object* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_5__*
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @AE_SAME_HANDLER, align 4
  store i32 %91, i32* %14, align 4
  br label %201

92:                                               ; preds = %83
  %93 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %92
  br label %201

95:                                               ; preds = %74
  br label %136

96:                                               ; preds = %69
  %97 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %98 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %99 = ptrtoint %struct.acpi_namespace_node* %98 to i32
  %100 = call i32 @ACPI_DEBUG_PRINT(i32 %99)
  %101 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %102 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  store i64 %107, i64* %15, align 8
  br label %112

108:                                              ; preds = %96
  %109 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %110 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %108, %106
  %113 = load i64, i64* %15, align 8
  %114 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i64 %113)
  store %union.acpi_operand_object* %114, %union.acpi_operand_object** %12, align 8
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %116 = icmp ne %union.acpi_operand_object* %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %118, i32* %14, align 4
  br label %201

119:                                              ; preds = %112
  %120 = load i64, i64* %15, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %125, %union.acpi_operand_object* %126, i64 %127)
  store i32 %128, i32* %14, align 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %130 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %129)
  %131 = load i32, i32* %14, align 4
  %132 = call i64 @ACPI_FAILURE(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %119
  br label %201

135:                                              ; preds = %119
  br label %136

136:                                              ; preds = %135, %95
  %137 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @acpi_ut_get_region_name(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %142 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %141)
  %143 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %145 = ptrtoint %union.acpi_operand_object* %144 to i32
  %146 = call i32 @ACPI_DEBUG_PRINT(i32 %145)
  %147 = load i64, i64* @ACPI_TYPE_LOCAL_ADDRESS_HANDLER, align 8
  %148 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i64 %147)
  store %union.acpi_operand_object* %148, %union.acpi_operand_object** %13, align 8
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %150 = icmp ne %union.acpi_operand_object* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %136
  %152 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %152, i32* %14, align 4
  br label %201

153:                                              ; preds = %136
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %158 = bitcast %union.acpi_operand_object* %157 to %struct.TYPE_5__*
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 7
  store i8* %156, i8** %159, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %162 = bitcast %union.acpi_operand_object* %161 to %struct.TYPE_5__*
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 6
  store i8* %160, i8** %163, align 8
  %164 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %165 = bitcast %union.acpi_operand_object* %164 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 5
  store i32* null, i32** %166, align 8
  %167 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %169 = bitcast %union.acpi_operand_object* %168 to %struct.TYPE_5__*
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 4
  store %struct.acpi_namespace_node* %167, %struct.acpi_namespace_node** %170, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_5__*
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i64 %171, i64* %174, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_5__*
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  store i8* %175, i8** %178, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %181 = bitcast %union.acpi_operand_object* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  store i32* %179, i32** %182, align 8
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %184 = bitcast %union.acpi_operand_object* %183 to %struct.TYPE_6__*
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load %union.acpi_operand_object*, %union.acpi_operand_object** %185, align 8
  %187 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %188 = bitcast %union.acpi_operand_object* %187 to %struct.TYPE_5__*
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store %union.acpi_operand_object* %186, %union.acpi_operand_object** %189, align 8
  %190 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %192 = bitcast %union.acpi_operand_object* %191 to %struct.TYPE_6__*
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store %union.acpi_operand_object* %190, %union.acpi_operand_object** %193, align 8
  %194 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %195 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %196 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %197 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %198 = load i32, i32* @acpi_ev_install_handler, align 4
  %199 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %200 = call i32 @acpi_ns_walk_namespace(i64 %194, %struct.acpi_namespace_node* %195, i32 %196, i32 %197, i32 %198, i32* null, %union.acpi_operand_object* %199, i32* null)
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %153, %151, %134, %117, %94, %90, %61, %41
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @return_ACPI_STATUS(i32 %202)
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i64) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i64) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_walk_namespace(i64, %struct.acpi_namespace_node*, i32, i32, i32, i32*, %union.acpi_operand_object*, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
