; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_osf_sys.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_osf_sys.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ADDR_LIMIT_32BIT = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADDR_LIMIT_32BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i64 2147483648, i64* %12, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load i64, i64* @TASK_SIZE, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %70

29:                                               ; preds = %22
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @MAP_FIXED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %6, align 8
  br label %70

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @PAGE_ALIGN(i64 %40)
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @arch_get_unmapped_area_1(i32 %41, i64 %42, i64 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @ENOMEM, align 8
  %47 = sub i64 0, %46
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %6, align 8
  br label %70

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %54 = call i32 @PAGE_ALIGN(i64 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @arch_get_unmapped_area_1(i32 %54, i64 %55, i64 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = sub i64 0, %59
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %6, align 8
  br label %70

64:                                               ; preds = %52
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @arch_get_unmapped_area_1(i32 %65, i64 %66, i64 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %64, %62, %49, %34, %26
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @arch_get_unmapped_area_1(i32, i64, i64) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
