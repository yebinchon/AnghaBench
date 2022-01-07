; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_find_start_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_find_start_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAP_32BIT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@DEFAULT_MAP_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*)* @find_start_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_start_end(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = call i64 (...) @in_32bit_syscall()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MAP_32BIT, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load i64*, i64** %7, align 8
  store i64 1073741824, i64* %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 2147483648, i64* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PF_RANDOMIZE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @randomize_page(i64 %27, i32 33554432)
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %16
  br label %46

31:                                               ; preds = %11, %4
  %32 = call i64 @get_mmap_base(i32 1)
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = call i64 (...) @in_32bit_syscall()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i64 (...) @task_size_32bit()
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  br label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @DEFAULT_MAP_WINDOW, align 8
  %42 = icmp ugt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @task_size_64bit(i32 %43)
  %45 = load i64*, i64** %8, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %30, %39, %36
  ret void
}

declare dso_local i64 @in_32bit_syscall(...) #1

declare dso_local i64 @randomize_page(i64, i32) #1

declare dso_local i64 @get_mmap_base(i32) #1

declare dso_local i64 @task_size_32bit(...) #1

declare dso_local i64 @task_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
