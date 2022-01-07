; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c__tl_store_init_raw_msg.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c__tl_store_init_raw_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32 }
%struct.raw_message = type { i32 }

@TL_OUT_PID = common dso_local global i32* null, align 8
@tl_type_raw_msg = common dso_local global i32 0, align 4
@tl_out_raw_msg_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udp_target*, i64, i32)* @_tl_store_init_raw_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_tl_store_init_raw_msg(%struct.udp_target* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.udp_target*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  store %struct.udp_target* %0, %struct.udp_target** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %9 = icmp ne %struct.udp_target* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %12 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %11, i32 0, i32 0
  store i32* %12, i32** @TL_OUT_PID, align 8
  br label %14

13:                                               ; preds = %3
  store i32* null, i32** @TL_OUT_PID, align 8
  br label %14

14:                                               ; preds = %13, %10
  store %struct.raw_message* null, %struct.raw_message** %7, align 8
  %15 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %16 = icmp ne %struct.udp_target* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i64 @zmalloc(i32 4)
  %19 = inttoptr i64 %18 to %struct.raw_message*
  store %struct.raw_message* %19, %struct.raw_message** %7, align 8
  %20 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %21 = call i32 @rwm_init(%struct.raw_message* %20, i32 0)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %24 = load %struct.udp_target*, %struct.udp_target** %4, align 8
  %25 = load i32, i32* @tl_type_raw_msg, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @__tl_store_init(%struct.raw_message* %23, %struct.udp_target* %24, i32 %25, i32* @tl_out_raw_msg_methods, i32 134217728, i32 %26, i64 %27)
  ret i32 %28
}

declare dso_local i64 @zmalloc(i32) #1

declare dso_local i32 @rwm_init(%struct.raw_message*, i32) #1

declare dso_local i32 @__tl_store_init(%struct.raw_message*, %struct.udp_target*, i32, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
