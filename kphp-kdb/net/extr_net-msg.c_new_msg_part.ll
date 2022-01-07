; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_new_msg_part.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_new_msg_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_part = type { i32, i64, i64, %struct.msg_buffer*, i64 }
%struct.msg_buffer = type { i32 }

@rwm_total_msg_parts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msg_part* @new_msg_part(%struct.msg_part* %0, %struct.msg_buffer* %1) #0 {
  %3 = alloca %struct.msg_part*, align 8
  %4 = alloca %struct.msg_buffer*, align 8
  %5 = alloca %struct.msg_part*, align 8
  store %struct.msg_part* %0, %struct.msg_part** %3, align 8
  store %struct.msg_buffer* %1, %struct.msg_buffer** %4, align 8
  %6 = call %struct.msg_part* (...) @alloc_msg_part()
  store %struct.msg_part* %6, %struct.msg_part** %5, align 8
  %7 = load i32, i32* @rwm_total_msg_parts, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @rwm_total_msg_parts, align 4
  %9 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %10 = call i32 @assert(%struct.msg_part* %9)
  %11 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %12 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %14 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %16 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %17 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %16, i32 0, i32 3
  store %struct.msg_buffer* %15, %struct.msg_buffer** %17, align 8
  %18 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %19 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  %21 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.msg_part*, %struct.msg_part** %5, align 8
  ret %struct.msg_part* %22
}

declare dso_local %struct.msg_part* @alloc_msg_part(...) #1

declare dso_local i32 @assert(%struct.msg_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
