; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_process_engine_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_process_engine_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i8* null, align 8
@MAX_CONNECTIONS = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_engine_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %43 [
    i32 118, label %5
    i32 104, label %8
    i32 98, label %10
    i32 99, label %18
    i32 112, label %30
    i32 117, label %33
    i32 108, label %35
    i32 100, label %37
    i32 114, label %40
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @verbosity, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @verbosity, align 4
  br label %46

8:                                                ; preds = %1
  %9 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %47

10:                                               ; preds = %1
  %11 = load i8*, i8** @optarg, align 8
  %12 = call i8* @atoi(i8* %11)
  store i8* %12, i8** @backlog, align 8
  %13 = load i8*, i8** @backlog, align 8
  %14 = icmp ule i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i8*, i8** @BACKLOG, align 8
  store i8* %16, i8** @backlog, align 8
  br label %17

17:                                               ; preds = %15, %10
  br label %46

18:                                               ; preds = %1
  %19 = load i8*, i8** @optarg, align 8
  %20 = call i8* @atoi(i8* %19)
  store i8* %20, i8** @maxconn, align 8
  %21 = load i8*, i8** @maxconn, align 8
  %22 = icmp ule i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** @maxconn, align 8
  %25 = load i8*, i8** @MAX_CONNECTIONS, align 8
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %18
  %28 = load i8*, i8** @MAX_CONNECTIONS, align 8
  store i8* %28, i8** @maxconn, align 8
  br label %29

29:                                               ; preds = %27, %23
  br label %46

30:                                               ; preds = %1
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @atoi(i8* %31)
  store i8* %32, i8** @port, align 8
  br label %46

33:                                               ; preds = %1
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @username, align 8
  br label %46

35:                                               ; preds = %1
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @logname, align 8
  br label %46

37:                                               ; preds = %1
  %38 = load i32, i32* @daemonize, align 4
  %39 = xor i32 %38, 1
  store i32 %39, i32* @daemonize, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load i32, i32* @binlog_disabled, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @binlog_disabled, align 4
  br label %46

43:                                               ; preds = %1
  %44 = call i32 (...) @usage()
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %40, %37, %35, %33, %30, %29, %17, %5
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

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
