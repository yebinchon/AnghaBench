; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_update_timestamp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_update_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_timestamp = common dso_local global i32 0, align 4
@max_utime = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"skiping binlog's tail\0A\00", align 1
@min_timestamp = common dso_local global i32 0, align 4
@max_timestamp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_timestamp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @cur_timestamp, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 %4, 360
  %6 = load i32, i32* @max_utime, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @verbosity, align 4
  %10 = icmp sge i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 @exit(i32 0) #3
  unreachable

16:                                               ; preds = %1
  %17 = load i32, i32* @min_timestamp, align 4
  %18 = load i32, i32* @cur_timestamp, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @cur_timestamp, align 4
  store i32 %21, i32* @min_timestamp, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @max_timestamp, align 4
  %24 = load i32, i32* @cur_timestamp, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @cur_timestamp, align 4
  store i32 %27, i32* @max_timestamp, align 4
  br label %28

28:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

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
