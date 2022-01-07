; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_status.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_transaction_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"LEV_COPYEXEC_MAIN_TRANSACTION_STATUS\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"\09%d\09%lld\090x%x\09%d\09%d\09\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09%lld\09%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_status(%struct.lev_copyexec_main_transaction_status* %0) #0 {
  %2 = alloca %struct.lev_copyexec_main_transaction_status*, align 8
  %3 = alloca i32, align 4
  store %struct.lev_copyexec_main_transaction_status* %0, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %4 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %5 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 255
  store i32 %7, i32* %3, align 4
  %8 = call i64 @dump_line_header(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %13 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dump_ts(i32 %14)
  %16 = load i32, i32* @out, align 4
  %17 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %18 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %21 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %24 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %27 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %30 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %35 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dump_result(i32 %33, i32 %36)
  %38 = load i32, i32* @out, align 4
  %39 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %40 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lev_copyexec_main_transaction_status*, %struct.lev_copyexec_main_transaction_status** %2, align 8
  %43 = getelementptr inbounds %struct.lev_copyexec_main_transaction_status, %struct.lev_copyexec_main_transaction_status* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @dump_ts(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @dump_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
