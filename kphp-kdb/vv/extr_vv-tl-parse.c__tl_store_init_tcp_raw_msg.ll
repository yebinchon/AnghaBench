; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c__tl_store_init_tcp_raw_msg.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c__tl_store_init_tcp_raw_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.raw_message = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TL_OUT_PID = common dso_local global i32* null, align 8
@tl_type_tcp_raw_msg = common dso_local global i32 0, align 4
@tl_out_tcp_raw_msg_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i64, i32)* @_tl_store_init_tcp_raw_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_tl_store_init_tcp_raw_msg(%struct.connection* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.connection*, %struct.connection** %4, align 8
  %9 = icmp ne %struct.connection* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* %13, i32** @TL_OUT_PID, align 8
  br label %15

14:                                               ; preds = %3
  store i32* null, i32** @TL_OUT_PID, align 8
  br label %15

15:                                               ; preds = %14, %10
  store %struct.raw_message* null, %struct.raw_message** %7, align 8
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = icmp ne %struct.connection* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call i64 @zmalloc(i32 4)
  %20 = inttoptr i64 %19 to %struct.raw_message*
  store %struct.raw_message* %20, %struct.raw_message** %7, align 8
  %21 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %22 = call i32 @rwm_init(%struct.raw_message* %21, i32 0)
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %25 = load %struct.connection*, %struct.connection** %4, align 8
  %26 = load i32, i32* @tl_type_tcp_raw_msg, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @__tl_store_init(%struct.raw_message* %24, %struct.connection* %25, i32 %26, i32* @tl_out_tcp_raw_msg_methods, i32 134217728, i32 %27, i64 %28)
  ret i32 %29
}

declare dso_local %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i64 @zmalloc(i32) #1

declare dso_local i32 @rwm_init(%struct.raw_message*, i32) #1

declare dso_local i32 @__tl_store_init(%struct.raw_message*, %struct.connection*, i32, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
