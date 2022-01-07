; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_delete_internal_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_delete_internal_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, %union.acpi_operand_object*, %union.acpi_operand_object* }
%union.acpi_operand_object.0 = type opaque
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { %union.acpi_operand_object* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_28__ = type { i32*, %union.acpi_operand_object* }
%struct.TYPE_15__ = type { %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i8* }

@ut_delete_internal_obj = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"**** String %p, ptr %p\0A\00", align 1
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"**** Buffer %p, ptr %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" **** Package of count %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"***** Mutex %p, OS Mutex %p\0A\00", align 1
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"***** Event %p, OS Semaphore %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"***** Method %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"***** Region %p\0A\00", align 1
@ANOBJ_TEMPORARY = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Circular region list in address handler object %p\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"***** Buffer Field %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"***** Bank Field %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Deleting Object Subptr %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s: Deleting Object %p [%s]\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*)* @acpi_ut_delete_internal_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  store i8* null, i8** %3, align 8
  %9 = load i32, i32* @ut_delete_internal_obj, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %union.acpi_operand_object* %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @return_VOID, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_21__*
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %341 [
    i32 129, label %21
    i32 139, label %43
    i32 132, label %65
    i32 137, label %76
    i32 131, label %89
    i32 128, label %89
    i32 133, label %106
    i32 136, label %134
    i32 134, label %151
    i32 130, label %189
    i32 138, label %315
    i32 135, label %328
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_20__*
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_21__*
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_20__*
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %37, %21
  br label %342

43:                                               ; preds = %16
  %44 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_22__*
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_21__*
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %43
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_22__*
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %59, %43
  br label %342

65:                                               ; preds = %16
  %66 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_23__*
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ACPI_DEBUG_PRINT(i32 %70)
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %73 = bitcast %union.acpi_operand_object* %72 to %struct.TYPE_23__*
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %3, align 8
  br label %342

76:                                               ; preds = %16
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.TYPE_24__*
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_24__*
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @acpi_ev_delete_gpe_block(i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %16, %16, %88
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_25__*
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %92, align 8
  store %union.acpi_operand_object* %93, %union.acpi_operand_object** %4, align 8
  br label %94

94:                                               ; preds = %97, %89
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %96 = icmp ne %union.acpi_operand_object* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %99 = bitcast %union.acpi_operand_object* %98 to %struct.TYPE_16__*
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 4
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %100, align 8
  store %union.acpi_operand_object* %101, %union.acpi_operand_object** %6, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %103 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %102)
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %104, %union.acpi_operand_object** %4, align 8
  br label %94

105:                                              ; preds = %94
  br label %342

106:                                              ; preds = %16
  %107 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %110 = bitcast %union.acpi_operand_object* %109 to %struct.TYPE_27__*
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ACPI_DEBUG_PRINT(i32 %112)
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %116 = icmp eq %union.acpi_operand_object* %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load i32*, i32** @acpi_gbl_global_lock_semaphore, align 8
  %119 = call i32 @acpi_os_delete_semaphore(i32* %118)
  store i32* null, i32** @acpi_gbl_global_lock_semaphore, align 8
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_27__*
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @acpi_os_delete_mutex(i32 %123)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  br label %133

125:                                              ; preds = %106
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %127 = call i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object* %126)
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %129 = bitcast %union.acpi_operand_object* %128 to %struct.TYPE_27__*
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @acpi_os_delete_mutex(i32 %131)
  br label %133

133:                                              ; preds = %125, %117
  br label %342

134:                                              ; preds = %16
  %135 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %137 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %138 = bitcast %union.acpi_operand_object* %137 to %struct.TYPE_26__*
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = ptrtoint i32* %140 to i32
  %142 = call i32 @ACPI_DEBUG_PRINT(i32 %141)
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %144 = bitcast %union.acpi_operand_object* %143 to %struct.TYPE_26__*
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @acpi_os_delete_semaphore(i32* %146)
  %148 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %149 = bitcast %union.acpi_operand_object* %148 to %struct.TYPE_26__*
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  br label %342

151:                                              ; preds = %16
  %152 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %153 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %154 = ptrtoint %union.acpi_operand_object* %153 to i32
  %155 = call i32 @ACPI_DEBUG_PRINT(i32 %154)
  %156 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %157 = bitcast %union.acpi_operand_object* %156 to %struct.TYPE_28__*
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %158, align 8
  %160 = icmp ne %union.acpi_operand_object* %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %151
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_28__*
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 1
  %165 = load %union.acpi_operand_object*, %union.acpi_operand_object** %164, align 8
  %166 = bitcast %union.acpi_operand_object* %165 to %struct.TYPE_27__*
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @acpi_os_delete_mutex(i32 %168)
  %170 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %171 = bitcast %union.acpi_operand_object* %170 to %struct.TYPE_28__*
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %172, align 8
  %174 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %173)
  %175 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %176 = bitcast %union.acpi_operand_object* %175 to %struct.TYPE_28__*
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %177, align 8
  br label %178

178:                                              ; preds = %161, %151
  %179 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %180 = bitcast %union.acpi_operand_object* %179 to %struct.TYPE_28__*
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %186 = bitcast %union.acpi_operand_object* %185 to %struct.TYPE_28__*
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %184, %178
  br label %342

189:                                              ; preds = %16
  %190 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %192 = ptrtoint %union.acpi_operand_object* %191 to i32
  %193 = call i32 @ACPI_DEBUG_PRINT(i32 %192)
  %194 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %195 = bitcast %union.acpi_operand_object* %194 to %struct.TYPE_15__*
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ANOBJ_TEMPORARY, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %189
  %204 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %205 = bitcast %union.acpi_operand_object* %204 to %struct.TYPE_15__*
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %209 = bitcast %union.acpi_operand_object* %208 to %struct.TYPE_15__*
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = call i32 @acpi_ut_remove_address_range(i32 %207, %struct.TYPE_19__* %211)
  br label %213

213:                                              ; preds = %203, %189
  %214 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %215 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %214)
  store %union.acpi_operand_object* %215, %union.acpi_operand_object** %5, align 8
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %217 = icmp ne %union.acpi_operand_object* %216, null
  br i1 %217, label %218, label %302

218:                                              ; preds = %213
  %219 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %220 = bitcast %union.acpi_operand_object* %219 to %struct.TYPE_15__*
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load %union.acpi_operand_object*, %union.acpi_operand_object** %221, align 8
  store %union.acpi_operand_object* %222, %union.acpi_operand_object** %4, align 8
  %223 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %224 = icmp ne %union.acpi_operand_object* %223, null
  br i1 %224, label %225, label %299

225:                                              ; preds = %218
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %227 = bitcast %union.acpi_operand_object* %226 to %struct.TYPE_16__*
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load %union.acpi_operand_object*, %union.acpi_operand_object** %228, align 8
  store %union.acpi_operand_object* %229, %union.acpi_operand_object** %6, align 8
  %230 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %230, %union.acpi_operand_object** %7, align 8
  %231 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %232 = bitcast %union.acpi_operand_object* %231 to %struct.TYPE_16__*
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  store %union.acpi_operand_object** %233, %union.acpi_operand_object*** %8, align 8
  br label %234

234:                                              ; preds = %264, %225
  %235 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %236 = icmp ne %union.acpi_operand_object* %235, null
  br i1 %236, label %237, label %265

237:                                              ; preds = %234
  %238 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %239 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %240 = icmp eq %union.acpi_operand_object* %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %243 = bitcast %union.acpi_operand_object* %242 to %struct.TYPE_15__*
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load %union.acpi_operand_object*, %union.acpi_operand_object** %244, align 8
  %246 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %245, %union.acpi_operand_object** %246, align 8
  br label %265

247:                                              ; preds = %237
  %248 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %249 = bitcast %union.acpi_operand_object* %248 to %struct.TYPE_15__*
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  store %union.acpi_operand_object** %250, %union.acpi_operand_object*** %8, align 8
  %251 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %252 = bitcast %union.acpi_operand_object* %251 to %struct.TYPE_15__*
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load %union.acpi_operand_object*, %union.acpi_operand_object** %253, align 8
  store %union.acpi_operand_object* %254, %union.acpi_operand_object** %6, align 8
  %255 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %256 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %257 = icmp eq %union.acpi_operand_object* %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %247
  %259 = load i32, i32* @AE_INFO, align 4
  %260 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %261 = ptrtoint %union.acpi_operand_object* %260 to i32
  %262 = call i32 @ACPI_ERROR(i32 %261)
  %263 = load i32, i32* @return_VOID, align 4
  br label %264

264:                                              ; preds = %258, %247
  br label %234

265:                                              ; preds = %241, %234
  %266 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %267 = bitcast %union.acpi_operand_object* %266 to %struct.TYPE_16__*
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %296

273:                                              ; preds = %265
  %274 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %275 = bitcast %union.acpi_operand_object* %274 to %struct.TYPE_16__*
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 2
  %277 = load i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)** %276, align 8
  %278 = icmp ne i32 (%union.acpi_operand_object.0*, i32, i32, i32*)* %277, null
  br i1 %278, label %279, label %295

279:                                              ; preds = %273
  %280 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %281 = bitcast %union.acpi_operand_object* %280 to %struct.TYPE_16__*
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 2
  %283 = load i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)** %282, align 8
  %284 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %285 = bitcast %union.acpi_operand_object* %284 to %union.acpi_operand_object.0*
  %286 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %287 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %288 = bitcast %union.acpi_operand_object* %287 to %struct.TYPE_16__*
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %292 = bitcast %union.acpi_operand_object* %291 to %struct.TYPE_17__*
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  %294 = call i32 %283(%union.acpi_operand_object.0* %285, i32 %286, i32 %290, i32* %293)
  br label %295

295:                                              ; preds = %279, %273
  br label %296

296:                                              ; preds = %295, %265
  %297 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %298 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %297)
  br label %299

299:                                              ; preds = %296, %218
  %300 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %301 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %300)
  br label %302

302:                                              ; preds = %299, %213
  %303 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %304 = bitcast %union.acpi_operand_object* %303 to %struct.TYPE_18__*
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %302
  %309 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %310 = bitcast %union.acpi_operand_object* %309 to %struct.TYPE_18__*
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @ACPI_FREE(i8* %312)
  br label %314

314:                                              ; preds = %308, %302
  br label %342

315:                                              ; preds = %16
  %316 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %317 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %318 = ptrtoint %union.acpi_operand_object* %317 to i32
  %319 = call i32 @ACPI_DEBUG_PRINT(i32 %318)
  %320 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %321 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %320)
  store %union.acpi_operand_object* %321, %union.acpi_operand_object** %5, align 8
  %322 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %323 = icmp ne %union.acpi_operand_object* %322, null
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %326 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %325)
  br label %327

327:                                              ; preds = %324, %315
  br label %342

328:                                              ; preds = %16
  %329 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %330 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %331 = ptrtoint %union.acpi_operand_object* %330 to i32
  %332 = call i32 @ACPI_DEBUG_PRINT(i32 %331)
  %333 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %334 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %333)
  store %union.acpi_operand_object* %334, %union.acpi_operand_object** %5, align 8
  %335 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %336 = icmp ne %union.acpi_operand_object* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %328
  %338 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %339 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %338)
  br label %340

340:                                              ; preds = %337, %328
  br label %342

341:                                              ; preds = %16
  br label %342

342:                                              ; preds = %341, %340, %327, %314, %188, %134, %133, %105, %65, %64, %42
  %343 = load i8*, i8** %3, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %342
  %346 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %347 = load i8*, i8** %3, align 8
  %348 = ptrtoint i8* %347 to i32
  %349 = call i32 @ACPI_DEBUG_PRINT(i32 %348)
  %350 = load i8*, i8** %3, align 8
  %351 = call i32 @ACPI_FREE(i8* %350)
  br label %352

352:                                              ; preds = %345, %342
  %353 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %354 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %355 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %356 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %357 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %356)
  %358 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %357)
  %359 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %360 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %359)
  %361 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_delete_gpe_block(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_delete_semaphore(i32*) #1

declare dso_local i32 @acpi_os_delete_mutex(i32) #1

declare dso_local i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_remove_address_range(i32, %struct.TYPE_19__*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
