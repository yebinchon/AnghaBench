; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_cbm_validate_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_cbm_validate_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Non-hex character in the mask %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mask out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"The mask %lx has non-consecutive 1-bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Need at least %d bits in the mask\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbm_validate_intel(i8* %0, i64* %1, %struct.rdt_resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rdt_resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.rdt_resource* %2, %struct.rdt_resource** %7, align 8
  %13 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %14 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @kstrtoul(i8* %17, i32 16, i64* %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, ...) @rdt_last_cmd_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 0, i32* %4, align 4
  br label %67

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %30 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %24
  %34 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %67

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @find_first_bit(i64* %10, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @find_next_zero_bit(i64* %10, i32 %38, i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @find_next_bit(i64* %10, i32 %41, i64 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i64, i64* %10, align 8
  %48 = call i32 (i8*, ...) @rdt_last_cmd_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  store i32 0, i32* %4, align 4
  br label %67

49:                                               ; preds = %35
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %54 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.rdt_resource*, %struct.rdt_resource** %7, align 8
  %60 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @rdt_last_cmd_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  store i32 0, i32* %4, align 4
  br label %67

64:                                               ; preds = %49
  %65 = load i64, i64* %10, align 8
  %66 = load i64*, i64** %6, align 8
  store i64 %65, i64* %66, align 8
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %58, %46, %33, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @rdt_last_cmd_printf(i8*, ...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i64 @find_first_bit(i64*, i32) #1

declare dso_local i64 @find_next_zero_bit(i64*, i32, i64) #1

declare dso_local i32 @find_next_bit(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
