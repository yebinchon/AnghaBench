; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_init_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_init_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_id = type { i32 }
%struct.connection = type { i32 }
%struct.udp_target = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Good connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad connection\0A\00", align 1
@udp_failed = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"type = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_init_store(i32 %0, %struct.process_id* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.process_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.connection*, align 8
  %9 = alloca %struct.udp_target*, align 8
  %10 = alloca %struct.connection*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.process_id* %1, %struct.process_id** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %56 [
    i32 130, label %12
    i32 129, label %26
    i32 128, label %42
  ]

12:                                               ; preds = %3
  %13 = load %struct.process_id*, %struct.process_id** %6, align 8
  %14 = call i32 @rpc_target_lookup(%struct.process_id* %13)
  %15 = load %struct.process_id*, %struct.process_id** %6, align 8
  %16 = call %struct.connection* @rpc_target_choose_connection(i32 %14, %struct.process_id* %15)
  store %struct.connection* %16, %struct.connection** %8, align 8
  %17 = load %struct.connection*, %struct.connection** %8, align 8
  %18 = icmp ne %struct.connection* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.connection*, %struct.connection** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @tl_store_init(%struct.connection* %21, i64 %22)
  store i32 1, i32* %4, align 4
  br label %61

24:                                               ; preds = %12
  %25 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.process_id*, %struct.process_id** %6, align 8
  %28 = call %struct.udp_target* @udp_target_lookup(%struct.process_id* %27)
  store %struct.udp_target* %28, %struct.udp_target** %9, align 8
  %29 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %30 = icmp ne %struct.udp_target* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %33 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @udp_failed, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.udp_target*, %struct.udp_target** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @tl_store_init_raw_msg(%struct.udp_target* %38, i64 %39)
  store i32 1, i32* %4, align 4
  br label %61

41:                                               ; preds = %31, %26
  store i32 -1, i32* %4, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.process_id*, %struct.process_id** %6, align 8
  %44 = call i32 @rpc_target_lookup(%struct.process_id* %43)
  %45 = load %struct.process_id*, %struct.process_id** %6, align 8
  %46 = call %struct.connection* @rpc_target_choose_connection(i32 %44, %struct.process_id* %45)
  store %struct.connection* %46, %struct.connection** %10, align 8
  %47 = load %struct.connection*, %struct.connection** %10, align 8
  %48 = icmp ne %struct.connection* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.connection*, %struct.connection** %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @tl_store_init_tcp_raw_msg(%struct.connection* %51, i64 %52)
  store i32 1, i32* %4, align 4
  br label %61

54:                                               ; preds = %42
  %55 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %61

56:                                               ; preds = %3
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %54, %49, %41, %37, %24, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.connection* @rpc_target_choose_connection(i32, %struct.process_id*) #1

declare dso_local i32 @rpc_target_lookup(%struct.process_id*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @tl_store_init(%struct.connection*, i64) #1

declare dso_local %struct.udp_target* @udp_target_lookup(%struct.process_id*) #1

declare dso_local i32 @tl_store_init_raw_msg(%struct.udp_target*, i64) #1

declare dso_local i32 @tl_store_init_tcp_raw_msg(%struct.connection*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
