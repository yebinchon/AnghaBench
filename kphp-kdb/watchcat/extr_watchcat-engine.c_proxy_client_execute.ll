; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_proxy_client_execute.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_proxy_client_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.mcc_data = type { i32, i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"proxy_mc_client: op=%d, key_len=%d, arg#=%d, response_len=%d\0A\00", align 1
@precise_now = common dso_local global i32 0, align 4
@SKIP_ALL_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_client_execute(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcc_data*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = call %struct.mcc_data* @MCC_DATA(%struct.connection* %6)
  store %struct.mcc_data* %7, %struct.mcc_data** %5, align 8
  %8 = load i64, i64* @verbosity, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mcc_data*, %struct.mcc_data** %5, align 8
  %14 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mcc_data*, %struct.mcc_data** %5, align 8
  %17 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mcc_data*, %struct.mcc_data** %5, align 8
  %20 = getelementptr inbounds %struct.mcc_data, %struct.mcc_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %10, %2
  %24 = load i32, i32* @precise_now, align 4
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SKIP_ALL_BYTES, align 4
  ret i32 %27
}

declare dso_local %struct.mcc_data* @MCC_DATA(%struct.connection*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
