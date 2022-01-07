; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_bw_validate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_bw_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"No support for non-linear MB domains\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Non-decimal digit in MB value %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"MB value %ld out of range [%d,%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.rdt_resource*)* @bw_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bw_validate(i8* %0, i64* %1, %struct.rdt_resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rdt_resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.rdt_resource* %2, %struct.rdt_resource** %7, align 8
  %10 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %11 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8*, ...) @rdt_last_cmd_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 0, i32* %4, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %28 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %35 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32, %25
  %39 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %40 = call i32 @is_mba_sc(%struct.rdt_resource* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %45 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, ...) @rdt_last_cmd_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %43, i64 %47, i64 %50)
  store i32 0, i32* %4, align 4
  br label %60

52:                                               ; preds = %38, %32
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %55 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @roundup(i64 %53, i64 %57)
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %42, %22, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, ...) #1

declare dso_local i32 @is_mba_sc(%struct.rdt_resource*) #1

declare dso_local i64 @roundup(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
