; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c_extlog_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_extlog.c_extlog_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.mce = type { i32, i32 }
%struct.acpi_hest_generic_status = type { i64 }
%struct.acpi_hest_generic_data = type { i32, i8*, i32, i64, i64, i64 }
%struct.cper_sec_mem_err = type { i32 }

@guid_null = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@extlog_print.err_seq = internal global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@elog_buf = common dso_local global i64 0, align 8
@ELOG_ENTRY_LEN = common dso_local global i32 0, align 4
@CPER_SEC_VALID_FRU_ID = common dso_local global i32 0, align 4
@CPER_SEC_VALID_FRU_TEXT = common dso_local global i32 0, align 4
@CPER_SEC_PLATFORM_MEM = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @extlog_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extlog_print(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mce*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_hest_generic_status*, align 8
  %12 = alloca %struct.acpi_hest_generic_status*, align 8
  %13 = alloca %struct.acpi_hest_generic_data*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.cper_sec_mem_err*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.mce*
  store %struct.mce* %19, %struct.mce** %8, align 8
  %20 = load %struct.mce*, %struct.mce** %8, align 8
  %21 = getelementptr inbounds %struct.mce, %struct.mce* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mce*, %struct.mce** %8, align 8
  %24 = getelementptr inbounds %struct.mce, %struct.mce* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  store i32* @guid_null, i32** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.acpi_hest_generic_status* @extlog_elog_entry_check(i32 %26, i32 %27)
  store %struct.acpi_hest_generic_status* %28, %struct.acpi_hest_generic_status** %11, align 8
  %29 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %11, align 8
  %30 = icmp eq %struct.acpi_hest_generic_status* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %32, i32* %4, align 4
  br label %109

33:                                               ; preds = %3
  %34 = load i64, i64* @elog_buf, align 8
  %35 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %11, align 8
  %36 = bitcast %struct.acpi_hest_generic_status* %35 to i8*
  %37 = load i32, i32* @ELOG_ENTRY_LEN, align 4
  %38 = call i32 @memcpy(i64 %34, i8* %36, i32 %37)
  %39 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %11, align 8
  %40 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* @elog_buf, align 8
  %42 = inttoptr i64 %41 to %struct.acpi_hest_generic_status*
  store %struct.acpi_hest_generic_status* %42, %struct.acpi_hest_generic_status** %12, align 8
  %43 = call i32 (...) @ras_userspace_consumers()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @print_extlog_rcd(i32* null, %struct.acpi_hest_generic_status* %46, i32 %47)
  br label %107

49:                                               ; preds = %33
  %50 = load i32, i32* @extlog_print.err_seq, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @extlog_print.err_seq, align 4
  %52 = load %struct.acpi_hest_generic_status*, %struct.acpi_hest_generic_status** %12, align 8
  %53 = getelementptr inbounds %struct.acpi_hest_generic_status, %struct.acpi_hest_generic_status* %52, i64 1
  %54 = bitcast %struct.acpi_hest_generic_status* %53 to %struct.acpi_hest_generic_data*
  store %struct.acpi_hest_generic_data* %54, %struct.acpi_hest_generic_data** %13, align 8
  %55 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %56 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CPER_SEC_VALID_FRU_ID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %63 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %14, align 8
  br label %66

66:                                               ; preds = %61, %49
  %67 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %68 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CPER_SEC_VALID_FRU_TEXT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %75 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %15, align 8
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %79 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %16, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i64 @guid_equal(i32* %82, i32* @CPER_SEC_PLATFORM_MEM)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %77
  %86 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %87 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %86, i64 1
  %88 = bitcast %struct.acpi_hest_generic_data* %87 to i8*
  %89 = bitcast i8* %88 to %struct.cper_sec_mem_err*
  store %struct.cper_sec_mem_err* %89, %struct.cper_sec_mem_err** %17, align 8
  %90 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %91 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = icmp uge i64 %93, 4
  br i1 %94, label %95, label %105

95:                                               ; preds = %85
  %96 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %17, align 8
  %97 = load i32, i32* @extlog_print.err_seq, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load %struct.acpi_hest_generic_data*, %struct.acpi_hest_generic_data** %13, align 8
  %101 = getelementptr inbounds %struct.acpi_hest_generic_data, %struct.acpi_hest_generic_data* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @trace_extlog_mem_event(%struct.cper_sec_mem_err* %96, i32 %97, i32* %98, i8* %99, i32 %103)
  br label %105

105:                                              ; preds = %95, %85
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %45
  %108 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %31
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.acpi_hest_generic_status* @extlog_elog_entry_check(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ras_userspace_consumers(...) #1

declare dso_local i32 @print_extlog_rcd(i32*, %struct.acpi_hest_generic_status*, i32) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @trace_extlog_mem_event(%struct.cper_sec_mem_err*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
