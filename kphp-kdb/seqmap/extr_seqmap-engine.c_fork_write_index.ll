; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-engine.c_fork_write_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-engine.c_fork_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"process with pid %d already generates index, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fork: %m\0A\00", align 1
@binlogname = common dso_local global i64 0, align 8
@binlog_disabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"created child process pid = %d\0A\00", align 1
@force_write_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_write_index() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @child_pid, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i64, i64* @verbosity, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* @child_pid, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %7, %4
  br label %42

12:                                               ; preds = %0
  %13 = call i32 (...) @flush_binlog_ts()
  %14 = call i32 (...) @fork()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %41

20:                                               ; preds = %12
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  store i64 0, i64* @binlogname, align 8
  %24 = load i32, i32* @binlog_disabled, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @save_index(i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %20
  %32 = load i64, i64* @verbosity, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %1, align 4
  store i32 %39, i32* @child_pid, align 4
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %17
  store i64 0, i64* @force_write_index, align 8
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @flush_binlog_ts(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @save_index(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
