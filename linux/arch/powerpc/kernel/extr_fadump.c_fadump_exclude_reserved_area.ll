; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_exclude_reserved_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_exclude_reserved_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@fw_dump = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@crash_mrange_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @fadump_exclude_reserved_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_exclude_reserved_area(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 0), align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 1), align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @fadump_add_mem_range(i32* @crash_mrange_info, i64 %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %28
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @fadump_add_mem_range(i32* @crash_mrange_info, i64 %37, i64 %38)
  store i32 %39, i32* %8, align 4
  br label %58

40:                                               ; preds = %24, %20
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @fadump_add_mem_range(i32* @crash_mrange_info, i64 %45, i64 %46)
  store i32 %47, i32* %8, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @fadump_add_mem_range(i32* @crash_mrange_info, i64 %53, i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %36
  br label %63

59:                                               ; preds = %16, %2
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @fadump_add_mem_range(i32* @crash_mrange_info, i64 %60, i64 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %34
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @fadump_add_mem_range(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
