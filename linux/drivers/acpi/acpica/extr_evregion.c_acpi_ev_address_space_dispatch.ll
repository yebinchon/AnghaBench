; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evregion.c_acpi_ev_address_space_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evregion.c_acpi_ev_address_space_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %union.acpi_operand_object*, i64, i32 }
%struct.acpi_connection_info.2 = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 (%union.acpi_operand_object.0*, i32, %struct.acpi_connection_info*, i8**)*, i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.1*, i8*)*, i32, %struct.acpi_connection_info.2* }
%union.acpi_operand_object.0 = type opaque
%struct.acpi_connection_info = type opaque
%struct.acpi_connection_info.1 = type opaque
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@ev_address_space_dispatch = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No handler for Region [%4.4s] (%p) [%s]\00", align 1
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No init routine for region(%p) [%s]\00", align 1
@ACPI_REGION_ACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"During region initialization: [%s]\00", align 1
@ACPI_ADR_SPACE_GSBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_GPIO = common dso_local global i64 0, align 8
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Handler %p (@%p) Address %8.8X%8.8X [%s]\0A\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Returned by Handler for [%s]\00", align 1
@ACPI_ADR_SPACE_EC = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"Timeout from EC hardware or EC device driver\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_address_space_dispatch(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)*, align 8
  %16 = alloca i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)*, align 8
  %17 = alloca %union.acpi_operand_object*, align 8
  %18 = alloca %union.acpi_operand_object*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.acpi_connection_info.2*, align 8
  %21 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %19, align 8
  %22 = load i32, i32* @ev_address_space_dispatch, align 4
  %23 = call i32 @ACPI_FUNCTION_TRACE(i32 %22)
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %25 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %24)
  store %union.acpi_operand_object* %25, %union.acpi_operand_object** %18, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  %27 = icmp ne %union.acpi_operand_object* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* @AE_NOT_EXIST, align 8
  %30 = call i32 @return_ACPI_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %28, %6
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %17, align 8
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %37 = icmp ne %union.acpi_operand_object* %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @AE_INFO, align 4
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_7__*
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @acpi_ut_get_node_name(i32 %43)
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @acpi_ut_get_region_name(i64 %49)
  %51 = call i32 @ACPI_ERROR(i32 %50)
  %52 = load i64, i64* @AE_NOT_EXIST, align 8
  %53 = call i32 @return_ACPI_STATUS(i64 %52)
  br label %54

54:                                               ; preds = %38, %31
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %57, align 8
  store %struct.acpi_connection_info.2* %58, %struct.acpi_connection_info.2** %20, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %134, label %66

66:                                               ; preds = %54
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_8__*
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64 (%union.acpi_operand_object.0*, i32, %struct.acpi_connection_info*, i8**)*, i64 (%union.acpi_operand_object.0*, i32, %struct.acpi_connection_info*, i8**)** %69, align 8
  %71 = bitcast i64 (%union.acpi_operand_object.0*, i32, %struct.acpi_connection_info*, i8**)* %70 to i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)*
  store i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)* %71, i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)** %16, align 8
  %72 = load i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)*, i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)** %16, align 8
  %73 = icmp ne i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)* %72, null
  br i1 %73, label %85, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @AE_INFO, align 4
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @acpi_ut_get_region_name(i64 %80)
  %82 = call i32 @ACPI_ERROR(i32 %81)
  %83 = load i64, i64* @AE_NOT_EXIST, align 8
  %84 = call i32 @return_ACPI_STATUS(i64 %83)
  br label %85

85:                                               ; preds = %74, %66
  %86 = call i32 (...) @acpi_ex_exit_interpreter()
  %87 = load i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)*, i64 (%union.acpi_operand_object*, i32, %struct.acpi_connection_info.2*, i8**)** %16, align 8
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %89 = load i32, i32* @ACPI_REGION_ACTIVATE, align 4
  %90 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %91 = call i64 %87(%union.acpi_operand_object* %88, i32 %89, %struct.acpi_connection_info.2* %90, i8** %19)
  store i64 %91, i64* %14, align 8
  %92 = call i32 (...) @acpi_ex_enter_interpreter()
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @ACPI_FAILURE(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load i32, i32* @AE_INFO, align 4
  %98 = load i64, i64* %14, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @acpi_ut_get_region_name(i64 %102)
  %104 = call i32 @ACPI_EXCEPTION(i32 %103)
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @return_ACPI_STATUS(i64 %105)
  br label %107

107:                                              ; preds = %96, %85
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_7__*
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_7__*
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %115
  %128 = load i8*, i8** %19, align 8
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  br label %132

132:                                              ; preds = %127, %115
  br label %133

133:                                              ; preds = %132, %107
  br label %134

134:                                              ; preds = %133, %54
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_8__*
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.1*, i8*)*, i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.1*, i8*)** %137, align 8
  %139 = bitcast i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.1*, i8*)* %138 to i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)*
  store i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)* %139, i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)** %15, align 8
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %141 = bitcast %union.acpi_operand_object* %140 to %struct.TYPE_7__*
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add nsw i64 %143, %144
  store i64 %145, i64* %21, align 8
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %147 = bitcast %union.acpi_operand_object* %146 to %struct.TYPE_7__*
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ACPI_ADR_SPACE_GSBUS, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %134
  %153 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %154 = icmp ne %struct.acpi_connection_info.2* %153, null
  br i1 %154, label %155, label %177

155:                                              ; preds = %152
  %156 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %157 = icmp ne %union.acpi_operand_object* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_5__*
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %164 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %166 = bitcast %union.acpi_operand_object* %165 to %struct.TYPE_5__*
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %170 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %172 = bitcast %union.acpi_operand_object* %171 to %struct.TYPE_5__*
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %176 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %158, %155, %152, %134
  %178 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %179 = bitcast %union.acpi_operand_object* %178 to %struct.TYPE_7__*
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ACPI_ADR_SPACE_GPIO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %217

184:                                              ; preds = %177
  %185 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %186 = icmp ne %struct.acpi_connection_info.2* %185, null
  br i1 %186, label %187, label %217

187:                                              ; preds = %184
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %189 = icmp ne %union.acpi_operand_object* %188, null
  br i1 %189, label %190, label %217

190:                                              ; preds = %187
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %192 = bitcast %union.acpi_operand_object* %191 to %struct.TYPE_5__*
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %196 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 4
  %197 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %198 = bitcast %union.acpi_operand_object* %197 to %struct.TYPE_5__*
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %202 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %204 = bitcast %union.acpi_operand_object* %203 to %struct.TYPE_5__*
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %208 = getelementptr inbounds %struct.acpi_connection_info.2, %struct.acpi_connection_info.2* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %210 = bitcast %union.acpi_operand_object* %209 to %struct.TYPE_5__*
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %21, align 8
  %213 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %214 = bitcast %union.acpi_operand_object* %213 to %struct.TYPE_5__*
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %12, align 8
  br label %217

217:                                              ; preds = %190, %187, %184, %177
  %218 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %219 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %220 = bitcast %union.acpi_operand_object* %219 to %struct.TYPE_7__*
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load %union.acpi_operand_object*, %union.acpi_operand_object** %221, align 8
  %223 = bitcast %union.acpi_operand_object* %222 to %struct.TYPE_8__*
  %224 = load i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)*, i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)** %15, align 8
  %225 = load i64, i64* %21, align 8
  %226 = call i32 @ACPI_FORMAT_UINT64(i64 %225)
  %227 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %228 = bitcast %union.acpi_operand_object* %227 to %struct.TYPE_7__*
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @acpi_ut_get_region_name(i64 %230)
  %232 = call i32 @ACPI_DEBUG_PRINT(i32 %231)
  %233 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %234 = bitcast %union.acpi_operand_object* %233 to %struct.TYPE_8__*
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %217
  %241 = call i32 (...) @acpi_ex_exit_interpreter()
  br label %242

242:                                              ; preds = %240, %217
  %243 = load i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)*, i64 (i64, i64, i64, i32*, %struct.acpi_connection_info.2*, i8*)** %15, align 8
  %244 = load i64, i64* %10, align 8
  %245 = load i64, i64* %21, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = load %struct.acpi_connection_info.2*, %struct.acpi_connection_info.2** %20, align 8
  %249 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  %250 = bitcast %union.acpi_operand_object* %249 to %struct.TYPE_6__*
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 %243(i64 %244, i64 %245, i64 %246, i32* %247, %struct.acpi_connection_info.2* %248, i8* %252)
  store i64 %253, i64* %14, align 8
  %254 = load i64, i64* %14, align 8
  %255 = call i64 @ACPI_FAILURE(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %280

257:                                              ; preds = %242
  %258 = load i32, i32* @AE_INFO, align 4
  %259 = load i64, i64* %14, align 8
  %260 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %261 = bitcast %union.acpi_operand_object* %260 to %struct.TYPE_7__*
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @acpi_ut_get_region_name(i64 %263)
  %265 = call i32 @ACPI_EXCEPTION(i32 %264)
  %266 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %267 = bitcast %union.acpi_operand_object* %266 to %struct.TYPE_7__*
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @ACPI_ADR_SPACE_EC, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %257
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* @AE_TIME, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i32, i32* @AE_INFO, align 4
  %278 = call i32 @ACPI_ERROR(i32 ptrtoint ([45 x i8]* @.str.5 to i32))
  br label %279

279:                                              ; preds = %276, %272, %257
  br label %280

280:                                              ; preds = %279, %242
  %281 = load %union.acpi_operand_object*, %union.acpi_operand_object** %17, align 8
  %282 = bitcast %union.acpi_operand_object* %281 to %struct.TYPE_8__*
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %280
  %289 = call i32 (...) @acpi_ex_enter_interpreter()
  br label %290

290:                                              ; preds = %288, %280
  %291 = load i64, i64* %14, align 8
  %292 = call i32 @return_ACPI_STATUS(i64 %291)
  %293 = load i64, i64* %7, align 8
  ret i64 %293
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
