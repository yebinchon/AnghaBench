; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsaccess.c_acpi_ns_root_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsaccess.c_acpi_ns_root_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32, i8*, %struct.TYPE_17__*, %struct.acpi_namespace_node*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.acpi_predefined_names = type { i32, i64, i32* }
%union.acpi_operand_object = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8*, %struct.acpi_namespace_node* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@ns_root_initialize = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.TYPE_17__* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_root_node_struct = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Entering predefined entries into namespace\0A\00", align 1
@acpi_gbl_pre_defined_names = common dso_local global %struct.acpi_predefined_names* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_OSI\00", align 1
@acpi_gbl_create_osi_method = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not override predefined %s\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@acpi_ut_osi_implementation = common dso_local global i32 0, align 4
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_GL_\00", align 1
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Unsupported initial type value 0x%X\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\_GPE\00", align 1
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@acpi_gbl_fadt_gpe_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_root_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_predefined_names*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32*, align 8
  store %struct.acpi_predefined_names* null, %struct.acpi_predefined_names** %3, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* @ns_root_initialize, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %11 = call i32 @acpi_ut_acquire_mutex(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** @acpi_gbl_root_node, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %2, align 4
  br label %223

23:                                               ; preds = %18
  store %struct.TYPE_17__* @acpi_gbl_root_node_struct, %struct.TYPE_17__** @acpi_gbl_root_node, align 8
  %24 = load i32, i32* @ACPI_DB_INFO, align 4
  %25 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([44 x i8]* @.str to i32))
  %26 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** @acpi_gbl_pre_defined_names, align 8
  store %struct.acpi_predefined_names* %26, %struct.acpi_predefined_names** %3, align 8
  br label %27

27:                                               ; preds = %219, %23
  %28 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %222

32:                                               ; preds = %27
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %2, align 4
  %34 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @strcmp(i64 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @acpi_gbl_create_osi_method, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %219

43:                                               ; preds = %39, %32
  %44 = call %struct.acpi_namespace_node* @ACPI_ALLOCATE_ZEROED(i32 40)
  store %struct.acpi_namespace_node* %44, %struct.acpi_namespace_node** %4, align 8
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %46 = icmp ne %struct.acpi_namespace_node* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %48, i32* %2, align 4
  br label %223

49:                                               ; preds = %43
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ACPI_COPY_NAMESEG(i32 %53, i64 %56)
  %58 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  %59 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %65 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %67 = icmp ne %struct.acpi_namespace_node* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %49
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  store %struct.acpi_namespace_node* %69, %struct.acpi_namespace_node** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @acpi_gbl_root_node_struct, i32 0, i32 0), align 8
  br label %74

70:                                               ; preds = %49
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %72 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %72, i32 0, i32 3
  store %struct.acpi_namespace_node* %71, %struct.acpi_namespace_node** %73, align 8
  br label %74

74:                                               ; preds = %70, %68
  %75 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %76 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %75, i32 0, i32 2
  store %struct.TYPE_17__* @acpi_gbl_root_node_struct, %struct.TYPE_17__** %76, align 8
  %77 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  store %struct.acpi_namespace_node* %77, %struct.acpi_namespace_node** %5, align 8
  %78 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %79 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %218

82:                                               ; preds = %74
  %83 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %84 = call i32 @acpi_os_predefined_override(%struct.acpi_predefined_names* %83, i32** %7)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @AE_INFO, align 4
  %90 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %91 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @ACPI_ERROR(i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i32*, i32** %7, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %100 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %7, align 8
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %104 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %105)
  store %union.acpi_operand_object* %106, %union.acpi_operand_object** %6, align 8
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %108 = icmp ne %union.acpi_operand_object* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %110, i32* %2, align 4
  br label %223

111:                                              ; preds = %102
  %112 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %113 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %200 [
    i32 130, label %115
    i32 131, label %138
    i32 128, label %144
    i32 129, label %160
  ]

115:                                              ; preds = %111
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @ACPI_TO_INTEGER(i32* %116)
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_12__*
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_16__*
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @ACPI_METHOD_INTERNAL_ONLY, align 4
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_12__*
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @acpi_ut_osi_implementation, align 4
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_12__*
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  br label %208

138:                                              ; preds = %111
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @ACPI_TO_INTEGER(i32* %139)
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_13__*
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %208

144:                                              ; preds = %111
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @strlen(i32* %145)
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_14__*
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %152 = bitcast %union.acpi_operand_object* %151 to %struct.TYPE_14__*
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32* %150, i32** %153, align 8
  %154 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %156 = bitcast %union.acpi_operand_object* %155 to %struct.TYPE_16__*
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %154
  store i32 %159, i32* %157, align 4
  br label %208

160:                                              ; preds = %111
  %161 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_15__*
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store %struct.acpi_namespace_node* %161, %struct.acpi_namespace_node** %164, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @ACPI_TO_INTEGER(i32* %165)
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %171 = bitcast %union.acpi_operand_object* %170 to %struct.TYPE_15__*
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store i8* %169, i8** %172, align 8
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %174 = bitcast %union.acpi_operand_object* %173 to %struct.TYPE_15__*
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = call i32 @acpi_os_create_mutex(i32* %175)
  store i32 %176, i32* %2, align 4
  %177 = load i32, i32* %2, align 4
  %178 = call i64 @ACPI_FAILURE(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %160
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %182 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %181)
  br label %223

183:                                              ; preds = %160
  %184 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %185 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @strcmp(i64 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %190, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %191 = call i32 @acpi_os_create_semaphore(i32 1, i32 0, i32* @acpi_gbl_global_lock_semaphore)
  store i32 %191, i32* %2, align 4
  %192 = load i32, i32* %2, align 4
  %193 = call i64 @ACPI_FAILURE(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %197 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %196)
  br label %223

198:                                              ; preds = %189
  br label %199

199:                                              ; preds = %198, %183
  br label %208

200:                                              ; preds = %111
  %201 = load i32, i32* @AE_INFO, align 4
  %202 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %203 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ACPI_ERROR(i32 %204)
  %206 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %207 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %206)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %6, align 8
  br label %219

208:                                              ; preds = %199, %144, %138, %115
  %209 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %210 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %211 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %212 = bitcast %union.acpi_operand_object* %211 to %struct.TYPE_16__*
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %209, %union.acpi_operand_object* %210, i32 %214)
  store i32 %215, i32* %2, align 4
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %217 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %216)
  br label %218

218:                                              ; preds = %208, %74
  br label %219

219:                                              ; preds = %218, %200, %42
  %220 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %221 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %220, i32 1
  store %struct.acpi_predefined_names* %221, %struct.acpi_predefined_names** %3, align 8
  br label %27

222:                                              ; preds = %27
  br label %223

223:                                              ; preds = %222, %195, %180, %109, %47, %21
  %224 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %225 = call i32 @acpi_ut_release_mutex(i32 %224)
  %226 = load i32, i32* %2, align 4
  %227 = call i64 @ACPI_SUCCESS(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %231 = call i32 @acpi_ns_get_node(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %230, i32* @acpi_gbl_fadt_gpe_device)
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %229, %223
  %233 = load i32, i32* %2, align 4
  %234 = call i32 @return_ACPI_STATUS(i32 %233)
  %235 = load i32, i32* %1, align 4
  ret i32 %235
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local %struct.acpi_namespace_node* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i32, i64) #1

declare dso_local i32 @acpi_os_predefined_override(%struct.acpi_predefined_names*, i32**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_TO_INTEGER(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @acpi_os_create_mutex(i32*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i32*) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ns_get_node(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
