; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_init_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-aio.c_tl_aio_init_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32 }
%struct.connection = type { i32 }
%struct.udp_target = type { i64 }

@tl_type_conn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Good connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad connection\0A\00", align 1
@tl_type_raw_msg = common dso_local global i32 0, align 4
@udp_failed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_aio_init_store(i32 %0, %struct.process_id* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.process_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca %struct.udp_target*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.process_id* %1, %struct.process_id** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @tl_type_conn, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.process_id*, %struct.process_id** %6, align 8
  %15 = call i32 @rpc_target_lookup(%struct.process_id* %14)
  %16 = load %struct.process_id*, %struct.process_id** %6, align 8
  %17 = call %struct.connection* @rpc_target_choose_connection(i32 %15, %struct.process_id* %16)
  store %struct.connection* %17, %struct.connection** %8, align 8
  %18 = load %struct.connection*, %struct.connection** %8, align 8
  %19 = icmp ne %struct.connection* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.connection*, %struct.connection** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @tl_store_init(%struct.connection* %22, i64 %23)
  store i32 1, i32* %4, align 4
  br label %49

25:                                               ; preds = %13
  %26 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @tl_type_raw_msg, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.process_id*, %struct.process_id** %6, align 8
  %33 = call %struct.udp_target* @udp_target_lookup(%struct.process_id* %32)
  store %struct.udp_target* %33, %struct.udp_target** %9, align 8
  %34 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %35 = icmp ne %struct.udp_target* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %38 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @udp_failed, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @tl_store_init_raw_msg(%struct.udp_target* %43, i64 %44)
  store i32 1, i32* %4, align 4
  br label %49

46:                                               ; preds = %36, %31
  store i32 -1, i32* %4, align 4
  br label %49

47:                                               ; preds = %27
  %48 = call i32 @assert(i32 0)
  store i32 -1, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %46, %42, %25, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.connection* @rpc_target_choose_connection(i32, %struct.process_id*) #1

declare dso_local i32 @rpc_target_lookup(%struct.process_id*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i64) #1

declare dso_local %struct.udp_target* @udp_target_lookup(%struct.process_id*) #1

declare dso_local i32 @tl_store_init_raw_msg(%struct.udp_target*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
