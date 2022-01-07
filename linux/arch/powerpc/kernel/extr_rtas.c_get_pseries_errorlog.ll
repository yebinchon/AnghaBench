; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_get_pseries_errorlog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas.c_get_pseries_errorlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_errorlog = type { i32 }
%struct.rtas_error_log = type { i8* }
%struct.rtas_ext_event_log_v6 = type { i8* }

@RTAS_V6EXT_LOG_FORMAT_EVENT_LOG = common dso_local global i64 0, align 8
@RTAS_V6EXT_COMPANY_ID_IBM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pseries_errorlog* @get_pseries_errorlog(%struct.rtas_error_log* %0, i64 %1) #0 {
  %3 = alloca %struct.pseries_errorlog*, align 8
  %4 = alloca %struct.rtas_error_log*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtas_ext_event_log_v6*, align 8
  %7 = alloca %struct.pseries_errorlog*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.rtas_error_log* %0, %struct.rtas_error_log** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %14 = getelementptr inbounds %struct.rtas_error_log, %struct.rtas_error_log* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.rtas_ext_event_log_v6*
  store %struct.rtas_ext_event_log_v6* %16, %struct.rtas_ext_event_log_v6** %6, align 8
  %17 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %18 = call i32 @rtas_error_extended_log_length(%struct.rtas_error_log* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rtas_ext_event_log_v6*, %struct.rtas_ext_event_log_v6** %6, align 8
  %20 = call i64 @rtas_ext_event_log_format(%struct.rtas_ext_event_log_v6* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.rtas_ext_event_log_v6*, %struct.rtas_ext_event_log_v6** %6, align 8
  %22 = call i32 @rtas_ext_event_company_id(%struct.rtas_ext_event_log_v6* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @RTAS_V6EXT_LOG_FORMAT_EVENT_LOG, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @RTAS_V6EXT_COMPANY_ID_IBM, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %2
  store %struct.pseries_errorlog* null, %struct.pseries_errorlog** %3, align 8
  br label %65

35:                                               ; preds = %30
  %36 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %37 = getelementptr inbounds %struct.rtas_error_log, %struct.rtas_error_log* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %9, align 8
  %42 = load %struct.rtas_ext_event_log_v6*, %struct.rtas_ext_event_log_v6** %6, align 8
  %43 = getelementptr inbounds %struct.rtas_ext_event_log_v6, %struct.rtas_ext_event_log_v6* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %58, %35
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to %struct.pseries_errorlog*
  store %struct.pseries_errorlog* %51, %struct.pseries_errorlog** %7, align 8
  %52 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %7, align 8
  %53 = call i64 @pseries_errorlog_id(%struct.pseries_errorlog* %52)
  %54 = load i64, i64* %5, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %7, align 8
  store %struct.pseries_errorlog* %57, %struct.pseries_errorlog** %3, align 8
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %7, align 8
  %60 = call i32 @pseries_errorlog_length(%struct.pseries_errorlog* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %8, align 8
  br label %45

64:                                               ; preds = %45
  store %struct.pseries_errorlog* null, %struct.pseries_errorlog** %3, align 8
  br label %65

65:                                               ; preds = %64, %56, %34
  %66 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %3, align 8
  ret %struct.pseries_errorlog* %66
}

declare dso_local i32 @rtas_error_extended_log_length(%struct.rtas_error_log*) #1

declare dso_local i64 @rtas_ext_event_log_format(%struct.rtas_ext_event_log_v6*) #1

declare dso_local i32 @rtas_ext_event_company_id(%struct.rtas_ext_event_log_v6*) #1

declare dso_local i64 @pseries_errorlog_id(%struct.pseries_errorlog*) #1

declare dso_local i32 @pseries_errorlog_length(%struct.pseries_errorlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
