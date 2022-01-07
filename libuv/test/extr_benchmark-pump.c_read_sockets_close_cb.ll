; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_sockets_close_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_read_sockets_close_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_sockets = common dso_local global i64 0, align 8
@loop = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@server = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_sockets_close_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_sockets_close_cb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @free(i32* %3)
  %5 = load i64, i64* @read_sockets, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* @read_sockets, align 8
  %7 = load i32, i32* @loop, align 4
  %8 = call i32 @uv_now(i32 %7)
  %9 = load i32, i32* @start_time, align 4
  %10 = sub nsw i32 %8, %9
  %11 = icmp sgt i32 %10, 1000
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i64, i64* @read_sockets, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @read_show_stats()
  %17 = load i64, i64* @server, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @uv_close(i32* %18, i32* null)
  br label %20

20:                                               ; preds = %15, %12, %1
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @uv_now(i32) #1

declare dso_local i32 @read_show_stats(...) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
