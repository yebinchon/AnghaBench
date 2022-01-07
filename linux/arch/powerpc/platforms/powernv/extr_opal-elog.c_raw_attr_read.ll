; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_raw_attr_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_raw_attr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.elog_obj = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ELOG: log read failed for log-id=%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @raw_attr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raw_attr_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.elog_obj*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.elog_obj* @to_elog_obj(%struct.kobject* %16)
  store %struct.elog_obj* %17, %struct.elog_obj** %15, align 8
  %18 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %19 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %66, label %22

22:                                               ; preds = %6
  %23 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %24 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %29 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %31 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i64, i64* @EIO, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %7, align 8
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %39 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @__pa(i32* %40)
  %42 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %43 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %46 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @opal_read_elog(i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @OPAL_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %37
  %53 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %54 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %58 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %62 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load i64, i64* @EIO, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %7, align 8
  br label %77

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %65, %6
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.elog_obj*, %struct.elog_obj** %15, align 8
  %69 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @memcpy(i8* %67, i32* %73, i64 %74)
  %76 = load i64, i64* %13, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %66, %52, %34
  %78 = load i64, i64* %7, align 8
  ret i64 %78
}

declare dso_local %struct.elog_obj* @to_elog_obj(%struct.kobject*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @opal_read_elog(i32, i32, i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
