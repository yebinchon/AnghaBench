; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_write_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_write_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_buffer*, i32, i8*)* @buffer_write_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_write_string(%struct.rpc_buffer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.rpc_buffer* %0, %struct.rpc_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, -16777216
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %14 = call i32 @buffer_write_char(%struct.rpc_buffer* %13, i32 254)
  %15 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %16 = call i32 (%struct.rpc_buffer*, ...) @buffer_write_data(%struct.rpc_buffer* %15, i32* %5, i32 3)
  %17 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (%struct.rpc_buffer*, ...) @buffer_write_data(%struct.rpc_buffer* %17, i8* %18, i32 %19)
  %21 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %22 = call i32 @buffer_write_pad(%struct.rpc_buffer* %21)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buffer_write_char(%struct.rpc_buffer*, i32) #1

declare dso_local i32 @buffer_write_data(%struct.rpc_buffer*, ...) #1

declare dso_local i32 @buffer_write_pad(%struct.rpc_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
