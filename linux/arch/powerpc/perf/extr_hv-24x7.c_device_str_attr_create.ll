; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_device_str_attr_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_device_str_attr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%.*s__%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (i8*, i32, i32, i8*, i64)* @device_str_attr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @device_str_attr_create(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.attribute*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @memdup_to_str(i8* %15, i64 %16, i32 %17)
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.attribute* null, %struct.attribute** %6, align 8
  br label %55

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* (i32, i8*, i32, i8*, ...) @kasprintf(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  store i8* %29, i8** %12, align 8
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i8* (i32, i8*, i32, i8*, ...) @kasprintf(i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33, i32 %34)
  store i8* %35, i8** %12, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call %struct.attribute* @device_str_attr_create_(i8* %41, i8* %42)
  store %struct.attribute* %43, %struct.attribute** %14, align 8
  %44 = load %struct.attribute*, %struct.attribute** %14, align 8
  %45 = icmp ne %struct.attribute* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40
  %48 = load %struct.attribute*, %struct.attribute** %14, align 8
  store %struct.attribute* %48, %struct.attribute** %6, align 8
  br label %55

49:                                               ; preds = %46
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @kfree(i8* %50)
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @kfree(i8* %53)
  store %struct.attribute* null, %struct.attribute** %6, align 8
  br label %55

55:                                               ; preds = %52, %47, %21
  %56 = load %struct.attribute*, %struct.attribute** %6, align 8
  ret %struct.attribute* %56
}

declare dso_local i8* @memdup_to_str(i8*, i64, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i8*, ...) #1

declare dso_local %struct.attribute* @device_str_attr_create_(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
