; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@index_load_time = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fatal: error while loading index file %s\0A\00", align 1
@engine_snapshot_name = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"load index: done, jump_log_pos=%lld, time %.06lfs\0A\00", align 1
@jump_log_pos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %5 = call i32 @get_utime(i32 %4)
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* @index_load_time, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @load_index(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %10 = call i32 @get_utime(i32 %9)
  %11 = load i32, i32* @index_load_time, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* @index_load_time, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @engine_snapshot_name, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %1
  %21 = load i64, i64* @verbosity, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @jump_log_pos, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @index_load_time, align 4
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %20
  %31 = call i32 (...) @init_dyn_data()
  %32 = call i32 (...) @antispam_init()
  ret void
}

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @load_index(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @antispam_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
