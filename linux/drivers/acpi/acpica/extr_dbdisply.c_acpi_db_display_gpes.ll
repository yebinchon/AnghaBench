; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_gpes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbdisply.c_acpi_db_display_gpes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, i32, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { i64, i64, i32, %struct.acpi_gpe_block_info*, i32, %struct.acpi_gpe_event_info*, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_event_info = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.acpi_gpe_notify_info* }
%struct.acpi_gpe_notify_info = type { %struct.acpi_gpe_notify_info* }
%struct.acpi_gpe_register_info = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_buffer = type { i32, i8* }

@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@ACPI_FULL_PATHNAME_NO_TRAILING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not convert name to pathname\0A\00", align 1
@acpi_gbl_fadt_gpe_device = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FADT-defined GPE block\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GPE Block Device\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\0ABlock %u - Info %p  DeviceNode %p [%s] - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"    Registers:    %u (%u GPEs)\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"    GPE range:    0x%X to 0x%X on interrupt %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"    RegisterInfo: %p  Status %8.8X%8.8X Enable %8.8X%8.8X\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"  EventInfo:    %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [99 x i8] c"    Reg %u: (GPE %.2X-%.2X)  RunEnable %2.2X WakeEnable %2.2X Status %8.8X%8.8X Enable %8.8X%8.8X\0A\00", align 1
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"        GPE %.2X: %p  RunRefs %2.2X Flags %2.2X (\00", align 1
@ACPI_GPE_LEVEL_TRIGGERED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"Level, \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Edge, \00", align 1
@ACPI_GPE_CAN_WAKE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"CanWake, \00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RunOnly, \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"NotUsed\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Handler\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Implicit Notify on %u devices\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"RawHandler\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"UNKNOWN: %X\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_display_gpes() #0 {
  %1 = alloca %struct.acpi_gpe_block_info*, align 8
  %2 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca %struct.acpi_gpe_register_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_gpe_notify_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [80 x i8], align 16
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca i32, align 4
  store i64 0, i64* %8, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  store i32 80, i32* %15, align 8
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %18, %struct.acpi_gpe_xrupt_info** %2, align 8
  br label %19

19:                                               ; preds = %250, %0
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %2, align 8
  %21 = icmp ne %struct.acpi_gpe_xrupt_info* %20, null
  br i1 %21, label %22, label %254

22:                                               ; preds = %19
  %23 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %23, i32 0, i32 2
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %24, align 8
  store %struct.acpi_gpe_block_info* %25, %struct.acpi_gpe_block_info** %1, align 8
  br label %26

26:                                               ; preds = %244, %22
  %27 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %28 = icmp ne %struct.acpi_gpe_block_info* %27, null
  br i1 %28, label %29, label %250

29:                                               ; preds = %26
  %30 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %31 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ACPI_FULL_PATHNAME_NO_TRAILING, align 4
  %34 = call i32 @acpi_get_name(i64 %32, i32 %33, %struct.acpi_buffer* %13)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %42 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @acpi_gbl_fadt_gpe_device, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %48

47:                                               ; preds = %40
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %51 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %52 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %49, %struct.acpi_gpe_block_info* %50, i64 %53, i8* %54, i8* %55)
  %57 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %58 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %61 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %59, i32 %62)
  %64 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %65 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %68 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %71 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = add nsw i32 %69, %73
  %75 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %2, align 8
  %76 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %74, i32 %77)
  %79 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %80 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %79, i32 0, i32 6
  %81 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %80, align 8
  %82 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %83 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %82, i32 0, i32 6
  %84 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %83, align 8
  %85 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ACPI_FORMAT_UINT64(i32 %87)
  %89 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %90 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %89, i32 0, i32 6
  %91 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %90, align 8
  %92 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ACPI_FORMAT_UINT64(i32 %94)
  %96 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_gpe_register_info* %81, i32 %88, i32 %95)
  %97 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %98 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %97, i32 0, i32 5
  %99 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %98, align 8
  %100 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_gpe_event_info* %99)
  store i64 0, i64* %9, align 8
  br label %101

101:                                              ; preds = %241, %48
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %104 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %244

107:                                              ; preds = %101
  %108 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %109 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %108, i32 0, i32 6
  %110 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %110, i64 %111
  store %struct.acpi_gpe_register_info* %112, %struct.acpi_gpe_register_info** %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %115 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %118 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %121 = sub nsw i32 %120, 1
  %122 = add nsw i32 %119, %121
  %123 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %124 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %127 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %130 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ACPI_FORMAT_UINT64(i32 %132)
  %134 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %4, align 8
  %135 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ACPI_FORMAT_UINT64(i32 %137)
  %139 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.8, i64 0, i64 0), i64 %113, i32 %116, i32 %122, i32 %125, i32 %128, i32 %133, i32 %138)
  store i64 0, i64* %10, align 8
  br label %140

140:                                              ; preds = %237, %107
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %141, %143
  br i1 %144, label %145, label %240

145:                                              ; preds = %140
  %146 = load i64, i64* %9, align 8
  %147 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %146, %148
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %149, %150
  store i64 %151, i64* %7, align 8
  %152 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %153 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %152, i32 0, i32 5
  %154 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %154, i64 %155
  store %struct.acpi_gpe_event_info* %156, %struct.acpi_gpe_event_info** %3, align 8
  %157 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %158 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ACPI_GPE_DISPATCH_TYPE(i32 %159)
  %161 = icmp eq i32 %160, 130
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %237

163:                                              ; preds = %145
  %164 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %165 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %7, align 8
  %169 = add i64 %167, %168
  %170 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %171 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %172 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %175 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %169, %struct.acpi_gpe_event_info* %170, i32 %173, i32 %176)
  %178 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %179 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ACPI_GPE_LEVEL_TRIGGERED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %163
  %185 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %188

186:                                              ; preds = %163
  %187 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %184
  %189 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %190 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ACPI_GPE_CAN_WAKE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %188
  %196 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %199

197:                                              ; preds = %188
  %198 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %195
  %200 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %201 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @ACPI_GPE_DISPATCH_TYPE(i32 %202)
  switch i32 %203, label %229 [
    i32 130, label %204
    i32 131, label %206
    i32 132, label %208
    i32 129, label %210
    i32 128, label %227
  ]

204:                                              ; preds = %199
  %205 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %235

206:                                              ; preds = %199
  %207 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %235

208:                                              ; preds = %199
  %209 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %235

210:                                              ; preds = %199
  store i64 0, i64* %11, align 8
  %211 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %212 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %213, align 8
  store %struct.acpi_gpe_notify_info* %214, %struct.acpi_gpe_notify_info** %6, align 8
  br label %215

215:                                              ; preds = %218, %210
  %216 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %6, align 8
  %217 = icmp ne %struct.acpi_gpe_notify_info* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i64, i64* %11, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %11, align 8
  %221 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %6, align 8
  %222 = getelementptr inbounds %struct.acpi_gpe_notify_info, %struct.acpi_gpe_notify_info* %221, i32 0, i32 0
  %223 = load %struct.acpi_gpe_notify_info*, %struct.acpi_gpe_notify_info** %222, align 8
  store %struct.acpi_gpe_notify_info* %223, %struct.acpi_gpe_notify_info** %6, align 8
  br label %215

224:                                              ; preds = %215
  %225 = load i64, i64* %11, align 8
  %226 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i64 %225)
  br label %235

227:                                              ; preds = %199
  %228 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  br label %235

229:                                              ; preds = %199
  %230 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %231 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @ACPI_GPE_DISPATCH_TYPE(i32 %232)
  %234 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %229, %227, %224, %208, %206, %204
  %236 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %162
  %238 = load i64, i64* %10, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %10, align 8
  br label %140

240:                                              ; preds = %140
  br label %241

241:                                              ; preds = %240
  %242 = load i64, i64* %9, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %9, align 8
  br label %101

244:                                              ; preds = %101
  %245 = load i64, i64* %8, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %8, align 8
  %247 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %248 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %247, i32 0, i32 3
  %249 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %248, align 8
  store %struct.acpi_gpe_block_info* %249, %struct.acpi_gpe_block_info** %1, align 8
  br label %26

250:                                              ; preds = %26
  %251 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %2, align 8
  %252 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %251, i32 0, i32 0
  %253 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %252, align 8
  store %struct.acpi_gpe_xrupt_info* %253, %struct.acpi_gpe_xrupt_info** %2, align 8
  br label %19

254:                                              ; preds = %19
  ret void
}

declare dso_local i32 @acpi_get_name(i64, i32, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @ACPI_GPE_DISPATCH_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
