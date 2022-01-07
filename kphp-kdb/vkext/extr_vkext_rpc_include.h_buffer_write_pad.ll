; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_write_pad.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_write_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_buffer*)* @buffer_write_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_write_pad(%struct.rpc_buffer* %0) #0 {
  %2 = alloca %struct.rpc_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.rpc_buffer* %0, %struct.rpc_buffer** %2, align 8
  %4 = load %struct.rpc_buffer*, %struct.rpc_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.rpc_buffer*, %struct.rpc_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  %11 = and i32 %10, 3
  store i32 %11, i32* %3, align 4
  %12 = load %struct.rpc_buffer*, %struct.rpc_buffer** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @buffer_check_len_wptr(%struct.rpc_buffer* %12, i32 %13)
  %15 = load %struct.rpc_buffer*, %struct.rpc_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @memset(i32 %17, i32 0, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.rpc_buffer*, %struct.rpc_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @buffer_check_len_wptr(%struct.rpc_buffer*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
