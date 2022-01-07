; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_read_double.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc_include.h_buffer_read_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_buffer = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_buffer*, double*)* @buffer_read_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_read_double(%struct.rpc_buffer* %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_buffer*, align 8
  %5 = alloca double*, align 8
  store %struct.rpc_buffer* %0, %struct.rpc_buffer** %4, align 8
  store double* %1, double** %5, align 8
  %6 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %7 = call i32 @buffer_check_len_rptr(%struct.rpc_buffer* %6, i32 8)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to double*
  %15 = load double, double* %14, align 8
  %16 = load double*, double** %5, align 8
  store double %15, double* %16, align 8
  %17 = load %struct.rpc_buffer*, %struct.rpc_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_buffer, %struct.rpc_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 8
  store i64 %20, i64* %18, align 8
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @buffer_check_len_rptr(%struct.rpc_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
