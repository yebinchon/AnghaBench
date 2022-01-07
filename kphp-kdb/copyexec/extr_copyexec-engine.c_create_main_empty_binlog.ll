; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_create_main_empty_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_create_main_empty_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_transaction_skip = type { i32, i32 }

@instance_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"random_tag creation failed, get_random_bytes returns %d instead of 8.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Last synchronization point transaction id is %d.\0A\00", align 1
@LEV_COPYEXEC_MAIN_TRANSACTION_SKIP = common dso_local global i32 0, align 4
@empty_binlog_volume_name = common dso_local global i32 0, align 4
@COPYEXEC_MAIN_SCHEMA_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_main_empty_binlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_main_empty_binlog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_copyexec_main_transaction_skip, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @instance_mask, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %12 = call i32 @get_random_bytes(i32* %11, i32 8)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 8
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @kprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %1
  %20 = call i32 (...) @find_last_synchronization_point()
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @kprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @LEV_COPYEXEC_MAIN_TRANSACTION_SKIP, align 4
  %27 = getelementptr inbounds %struct.lev_copyexec_main_transaction_skip, %struct.lev_copyexec_main_transaction_skip* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.lev_copyexec_main_transaction_skip, %struct.lev_copyexec_main_transaction_skip* %5, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.lev_copyexec_main_transaction_skip* %5 to i8*
  store i8* %31, i8** %3, align 8
  store i32 8, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %19
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* @empty_binlog_volume_name, align 4
  %35 = load i32, i32* @COPYEXEC_MAIN_SCHEMA_V1, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @make_empty_binlog(i8* %33, i32 %34, i32 %35, i32* %36, i32 12, i8* %37, i32 %38)
  ret void
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @find_last_synchronization_point(...) #1

declare dso_local i32 @make_empty_binlog(i8*, i32, i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
