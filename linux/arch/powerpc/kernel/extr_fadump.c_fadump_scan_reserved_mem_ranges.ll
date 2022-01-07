; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_scan_reserved_mem_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_scan_reserved_mem_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"reserved-ranges\00", align 1
@reserved_mrange_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"some reserved ranges are ignored!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fadump_scan_reserved_mem_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_scan_reserved_mem_ranges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 -1, i32* %5, align 4
  %9 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %2, align 8
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %1, align 4
  br label %60

14:                                               ; preds = %0
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = call i32* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %1, align 4
  br label %60

21:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %55, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 16
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = mul i64 %30, 4
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 @of_read_number(i32* %33, i32 2)
  store i64 %34, i64* %7, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 4
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i64 @of_read_number(i32* %39, i32 2)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %28
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @fadump_add_mem_range(i32* @reserved_mrange_info, i64 %44, i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %58

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %22

58:                                               ; preds = %51, %22
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %58, %19, %12
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @fadump_add_mem_range(i32*, i64, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
