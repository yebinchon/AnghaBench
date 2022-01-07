; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_dump_pld_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbconvert.c_acpi_db_dump_pld_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%struct.acpi_pld_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %union.acpi_object* }
%struct.TYPE_4__ = type { i32, i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Converted _PLD buffer does not compare. New:\0A\00", align 1
@DB_BYTE_DISPLAY = common dso_local global i32 0, align 4
@ACPI_PLD_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"PLD_Revision\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"PLD_IgnoreColor\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"PLD_Red\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PLD_Green\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"PLD_Blue\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"PLD_Width\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PLD_Height\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"PLD_UserVisible\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PLD_Dock\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"PLD_Lid\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PLD_Panel\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"PLD_VerticalPosition\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"PLD_HorizontalPosition\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PLD_Shape\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"PLD_GroupOrientation\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"PLD_GroupToken\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"PLD_GroupPosition\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"PLD_Bay\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PLD_Ejectable\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"PLD_EjectRequired\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"PLD_CabinetNumber\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"PLD_CardCageNumber\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"PLD_Reference\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"PLD_Rotation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"PLD_Order\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"PLD_VerticalOffset\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"PLD_HorizontalOffset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_dump_pld_buffer(%union.acpi_object* %0) #0 {
  %2 = alloca %union.acpi_object*, align 8
  %3 = alloca %union.acpi_object*, align 8
  %4 = alloca %struct.acpi_pld_info*, align 8
  %5 = alloca %struct.acpi_pld_info*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %2, align 8
  %7 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %8 = bitcast %union.acpi_object* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %268

13:                                               ; preds = %1
  %14 = load %union.acpi_object*, %union.acpi_object** %2, align 8
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %18 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %17, i64 0
  store %union.acpi_object* %18, %union.acpi_object** %3, align 8
  %19 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %20 = bitcast %union.acpi_object* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %268

25:                                               ; preds = %13
  %26 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %27 = bitcast %union.acpi_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @acpi_decode_pld_buffer(i32 %29, i32 %33, %struct.acpi_pld_info** %4)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %268

39:                                               ; preds = %25
  %40 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %41 = call %struct.acpi_pld_info* @acpi_db_encode_pld_buffer(%struct.acpi_pld_info* %40)
  store %struct.acpi_pld_info* %41, %struct.acpi_pld_info** %5, align 8
  %42 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %43 = icmp ne %struct.acpi_pld_info* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %265

45:                                               ; preds = %39
  %46 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %47 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @memcmp(%struct.acpi_pld_info* %46, i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %60 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DB_BYTE_DISPLAY, align 4
  %65 = call i32 @acpi_ut_dump_buffer(%struct.acpi_pld_info* %59, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %57, %45
  %67 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %71 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %70, i32 0, i32 26
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @acpi_os_printf(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %78 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %77, i32 0, i32 25
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @acpi_os_printf(i8* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %85 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %84, i32 0, i32 24
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @acpi_os_printf(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %91, i32 0, i32 23
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @acpi_os_printf(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %99 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %98, i32 0, i32 22
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @acpi_os_printf(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %106 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %105, i32 0, i32 21
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @acpi_os_printf(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %113 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %112, i32 0, i32 20
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, ...) @acpi_os_printf(i8* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %120 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %119, i32 0, i32 19
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @acpi_os_printf(i8* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %127 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %126, i32 0, i32 18
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @acpi_os_printf(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %133, i32 0, i32 17
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @acpi_os_printf(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %141 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %140, i32 0, i32 16
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @acpi_os_printf(i8* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %148 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %147, i32 0, i32 15
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @acpi_os_printf(i8* %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %155 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @acpi_os_printf(i8* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %162 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %161, i32 0, i32 13
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i8*, ...) @acpi_os_printf(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %169 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @acpi_os_printf(i8* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %176 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @acpi_os_printf(i8* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %183 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %182, i32 0, i32 10
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, ...) @acpi_os_printf(i8* %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %190 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @acpi_os_printf(i8* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  %196 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %197 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @acpi_os_printf(i8* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %203 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %204 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @acpi_os_printf(i8* %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %211 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i8*, ...) @acpi_os_printf(i8* %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %218 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, ...) @acpi_os_printf(i8* %216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  %224 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %225 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i8*, ...) @acpi_os_printf(i8* %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %232 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, ...) @acpi_os_printf(i8* %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %236 = sext i32 %235 to i64
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %239 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, ...) @acpi_os_printf(i8* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %240)
  %242 = load %union.acpi_object*, %union.acpi_object** %3, align 8
  %243 = bitcast %union.acpi_object* %242 to %struct.TYPE_4__*
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp sgt i32 %245, 16
  br i1 %246, label %247, label %262

247:                                              ; preds = %66
  %248 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %252 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 (i8*, ...) @acpi_os_printf(i8* %250, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @ACPI_PLD_OUTPUT, align 4
  %256 = sext i32 %255 to i64
  %257 = inttoptr i64 %256 to i8*
  %258 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %259 = getelementptr inbounds %struct.acpi_pld_info, %struct.acpi_pld_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, ...) @acpi_os_printf(i8* %257, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %247, %66
  %263 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %5, align 8
  %264 = call i32 @ACPI_FREE(%struct.acpi_pld_info* %263)
  br label %265

265:                                              ; preds = %262, %44
  %266 = load %struct.acpi_pld_info*, %struct.acpi_pld_info** %4, align 8
  %267 = call i32 @ACPI_FREE(%struct.acpi_pld_info* %266)
  br label %268

268:                                              ; preds = %265, %38, %24, %12
  ret void
}

declare dso_local i32 @acpi_decode_pld_buffer(i32, i32, %struct.acpi_pld_info**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_pld_info* @acpi_db_encode_pld_buffer(%struct.acpi_pld_info*) #1

declare dso_local i64 @memcmp(%struct.acpi_pld_info*, i32, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ut_dump_buffer(%struct.acpi_pld_info*, i32, i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_pld_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
