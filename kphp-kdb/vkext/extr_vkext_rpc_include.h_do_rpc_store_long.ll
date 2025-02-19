; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_do_rpc_store_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_do_rpc_store_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@store = common dso_local global i32 0, align 4
@outbuf = common dso_local global %struct.TYPE_3__* null, align 8
@RPC_BUFFER_MAGIC = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @do_rpc_store_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rpc_store_long(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @store, align 4
  %4 = call i32 @ADD_CNT(i32 %3)
  %5 = load i32, i32* @store, align 4
  %6 = call i32 @START_TIMER(i32 %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @outbuf, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @outbuf, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RPC_BUFFER_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @outbuf, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @buffer_write_long(%struct.TYPE_3__* %19, i64 %20)
  %22 = load i32, i32* @store, align 4
  %23 = call i32 @END_TIMER(i32 %22)
  ret void
}

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @START_TIMER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buffer_write_long(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @END_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
