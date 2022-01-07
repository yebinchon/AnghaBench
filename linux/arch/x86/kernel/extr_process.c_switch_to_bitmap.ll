; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_switch_to_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c_switch_to_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_struct = type { i32, i32 }
%struct.tss_struct = type { i32 }

@cpu_tss_rw = common dso_local global i32 0, align 4
@_TIF_IO_BITMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_struct*, %struct.thread_struct*, i64, i64)* @switch_to_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_to_bitmap(%struct.thread_struct* %0, %struct.thread_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca %struct.thread_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tss_struct*, align 8
  store %struct.thread_struct* %0, %struct.thread_struct** %5, align 8
  store %struct.thread_struct* %1, %struct.thread_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call %struct.tss_struct* @this_cpu_ptr(i32* @cpu_tss_rw)
  store %struct.tss_struct* %10, %struct.tss_struct** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @_TIF_IO_BITMAP, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.tss_struct*, %struct.tss_struct** %9, align 8
  %17 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %20 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %23 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %26 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @max(i32 %24, i32 %27)
  %29 = call i32 @memcpy(i32 %18, i32 %21, i32 %28)
  %30 = call i32 (...) @refresh_tss_limit()
  br label %45

31:                                               ; preds = %4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @_TIF_IO_BITMAP, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.tss_struct*, %struct.tss_struct** %9, align 8
  %38 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %41 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32 %39, i32 255, i32 %42)
  br label %44

44:                                               ; preds = %36, %31
  br label %45

45:                                               ; preds = %44, %15
  ret void
}

declare dso_local %struct.tss_struct* @this_cpu_ptr(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @refresh_tss_limit(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
