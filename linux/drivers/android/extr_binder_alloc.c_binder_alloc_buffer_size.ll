; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_binder_alloc_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_binder_alloc_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i64, i64, i32 }
%struct.binder_buffer = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.binder_alloc*, %struct.binder_buffer*)* @binder_alloc_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @binder_alloc_buffer_size(%struct.binder_alloc* %0, %struct.binder_buffer* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.binder_alloc*, align 8
  %5 = alloca %struct.binder_buffer*, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %4, align 8
  store %struct.binder_buffer* %1, %struct.binder_buffer** %5, align 8
  %6 = load %struct.binder_buffer*, %struct.binder_buffer** %5, align 8
  %7 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %6, i32 0, i32 1
  %8 = load %struct.binder_alloc*, %struct.binder_alloc** %4, align 8
  %9 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %8, i32 0, i32 2
  %10 = call i64 @list_is_last(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.binder_alloc*, %struct.binder_alloc** %4, align 8
  %14 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.binder_alloc*, %struct.binder_alloc** %4, align 8
  %17 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = load %struct.binder_buffer*, %struct.binder_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %3, align 8
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.binder_buffer*, %struct.binder_buffer** %5, align 8
  %26 = call %struct.TYPE_2__* @binder_buffer_next(%struct.binder_buffer* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.binder_buffer*, %struct.binder_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.binder_buffer, %struct.binder_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %24, %12
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @binder_buffer_next(%struct.binder_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
