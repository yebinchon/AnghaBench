; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32 }
%struct.binder_buffer = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.binder_alloc*, %struct.binder_buffer*, i64, i64)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(%struct.binder_alloc* %0, %struct.binder_buffer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.binder_alloc*, align 8
  %6 = alloca %struct.binder_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %5, align 8
  store %struct.binder_buffer* %1, %struct.binder_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.binder_alloc*, %struct.binder_alloc** %5, align 8
  %11 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %12 = call i64 @binder_alloc_buffer_size(%struct.binder_alloc* %10, %struct.binder_buffer* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub i64 %18, %19
  %21 = icmp ule i64 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @IS_ALIGNED(i64 %23, i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.binder_buffer*, %struct.binder_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i1 [ true, %31 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %26, %22, %16, %4
  %45 = phi i1 [ false, %26 ], [ false, %22 ], [ false, %16 ], [ false, %4 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i64 @binder_alloc_buffer_size(%struct.binder_alloc*, %struct.binder_buffer*) #1

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
