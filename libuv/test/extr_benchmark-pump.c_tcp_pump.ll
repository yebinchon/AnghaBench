; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_tcp_pump.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_tcp_pump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_WRITE_HANDLES = common dso_local global i32 0, align 4
@TARGET_CONNECTIONS = common dso_local global i32 0, align 4
@TCP = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@connect_addr = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tcp_pump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_pump(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MAX_WRITE_HANDLES, align 4
  %5 = icmp sle i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @TARGET_CONNECTIONS, align 4
  %9 = load i32, i32* @TCP, align 4
  store i32 %9, i32* @type, align 4
  %10 = call i32 (...) @uv_default_loop()
  store i32 %10, i32* @loop, align 4
  %11 = load i32, i32* @TEST_PORT, align 4
  %12 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32* @connect_addr)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = call i32 (...) @maybe_connect_some()
  %17 = load i32, i32* @loop, align 4
  %18 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %19 = call i32 @uv_run(i32 %17, i32 %18)
  %20 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, i32*) #1

declare dso_local i32 @maybe_connect_some(...) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
