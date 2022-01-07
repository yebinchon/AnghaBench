; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_fork_write_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_fork_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"process with pid %d already generates index, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fork: %m\0A\00", align 1
@binlogname = common dso_local global i64 0, align 8
@sfd = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"created child process pid = %d\0A\00", align 1
@force_write_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_write_index() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @child_pid, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @child_pid, align 4
  %6 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %33

7:                                                ; preds = %0
  %8 = call i32 (...) @flush_binlog_ts()
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @kprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %32

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  store i64 0, i64* @binlogname, align 8
  %18 = load i32, i32* @sfd, align 4
  %19 = call i32 @close(i32 %18)
  %20 = load i32, i32* @binlog_disabled, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @write_index(i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %14
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %1, align 4
  store i32 %30, i32* @child_pid, align 4
  br label %31

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %12
  store i64 0, i64* @force_write_index, align 8
  br label %33

33:                                               ; preds = %32, %4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @flush_binlog_ts(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write_index(i32) #1

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
