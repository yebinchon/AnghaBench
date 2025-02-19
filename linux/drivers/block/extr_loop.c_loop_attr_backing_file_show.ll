; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_attr_backing_file_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_attr_backing_file_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.loop_device*, i8*)* @loop_attr_backing_file_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @loop_attr_backing_file_show(%struct.loop_device* %0, i8* %1) #0 {
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %8 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %16 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i8* @file_path(i64 %17, i8* %18, i64 %20)
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %24 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @IS_ERR_OR_NULL(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @PTR_ERR(i8* %30)
  store i64 %31, i64* %5, align 8
  br label %46

32:                                               ; preds = %22
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @memmove(i8* %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 10, i8* %42, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %32, %29
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @file_path(i64, i8*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i64 @PTR_ERR(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
