; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_parse_function = common dso_local global i32 0, align 4
@tl_parse_function = common dso_local global i32 0, align 4
@random_stats = common dso_local global i32 0, align 4
@tl_stat_function = common dso_local global i32 0, align 4
@tl_aio_timeout = common dso_local global double 0.000000e+00, align 8
@random_engine = common dso_local global i32 0, align 4
@random_functions = common dso_local global i32 0, align 4
@ct_rpc_server = common dso_local global i32 0, align 4
@rpc_methods = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@password_filename = common dso_local global i32 0, align 4
@PASSWORD_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @random_parse_function, align 4
  store i32 %3, i32* @tl_parse_function, align 4
  %4 = load i32, i32* @random_stats, align 4
  store i32 %4, i32* @tl_stat_function, align 4
  store double 2.000000e+00, double* @tl_aio_timeout, align 8
  %5 = call i32 @server_init(i32* @random_engine, i32* @random_functions, i32* @ct_rpc_server, i32* @rpc_methods)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i32, i32* %1, align 4
  %8 = and i32 %7, 255
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @active_connections, align 4
  %12 = load i32, i32* @maxconn, align 4
  %13 = load i32, i32* @NB_used, align 4
  %14 = load i32, i32* @NB_alloc, align 4
  %15 = load i32, i32* @NB_max, align 4
  %16 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %6
  %18 = call i32 @epoll_work(i32 7)
  %19 = call i32 @random_work(i32 888)
  %20 = call i32 (...) @process_signals()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %35

23:                                               ; preds = %17
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %35

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %6

35:                                               ; preds = %30, %22
  %36 = load i32, i32* @password_filename, align 4
  %37 = load i32, i32* @PASSWORD_LENGTH, align 4
  %38 = call i32 @random_free(i32 %36, i32 %37)
  %39 = call i32 @server_exit(i32* @random_engine)
  ret void
}

declare dso_local i32 @server_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @random_work(i32) #1

declare dso_local i32 @process_signals(...) #1

declare dso_local i32 @random_free(i32, i32) #1

declare dso_local i32 @server_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
