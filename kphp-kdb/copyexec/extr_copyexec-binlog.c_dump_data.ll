; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_result_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"LEV_COPYEXEC_RESULT_DATA\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"0x%llx\09%d\09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\09%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_copyexec_result_data*)* @dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_data(%struct.lev_copyexec_result_data* %0) #0 {
  %2 = alloca %struct.lev_copyexec_result_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lev_copyexec_result_data* %0, %struct.lev_copyexec_result_data** %2, align 8
  %5 = call i64 @dump_line_header(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load i32, i32* @out, align 4
  %10 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %2, align 8
  %11 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %2, align 8
  %14 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %2, align 8
  %18 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 28
  store i32 %20, i32* %3, align 4
  %21 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %2, align 8
  %22 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 268435455
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @dump_ts(i32 %25)
  %27 = load i32, i32* @out, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dump_result(i32 %29, i32 %30)
  %32 = load i32, i32* @out, align 4
  %33 = load %struct.lev_copyexec_result_data*, %struct.lev_copyexec_result_data** %2, align 8
  %34 = getelementptr inbounds %struct.lev_copyexec_result_data, %struct.lev_copyexec_result_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_ts(i32) #1

declare dso_local i32 @dump_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
