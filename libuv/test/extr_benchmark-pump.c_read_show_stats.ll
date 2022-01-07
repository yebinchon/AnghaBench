; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_show_stats.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_show_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop = common dso_local global i32 0, align 4
@start_time = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s_pump%d_server: %.1f gbit/s\0A\00", align 1
@type = common dso_local global i64 0, align 8
@TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@max_read_sockets = common dso_local global i32 0, align 4
@nrecv_total = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_show_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_show_stats() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @loop, align 4
  %3 = call i32 @uv_update_time(i32 %2)
  %4 = load i32, i32* @loop, align 4
  %5 = call i64 @uv_now(i32 %4)
  %6 = load i64, i64* @start_time, align 8
  %7 = sub nsw i64 %5, %6
  store i64 %7, i64* %1, align 8
  %8 = load i32, i32* @stderr, align 4
  %9 = load i64, i64* @type, align 8
  %10 = load i64, i64* @TCP, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %14 = load i32, i32* @max_read_sockets, align 4
  %15 = load i32, i32* @nrecv_total, align 4
  %16 = load i64, i64* %1, align 8
  %17 = call double @gbit(i32 %15, i64 %16)
  %18 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, double %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fflush(i32 %19)
  ret void
}

declare dso_local i32 @uv_update_time(i32) #1

declare dso_local i64 @uv_now(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, double) #1

declare dso_local double @gbit(i32, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
