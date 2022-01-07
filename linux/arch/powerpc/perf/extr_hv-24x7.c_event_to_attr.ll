; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_to_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_to_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.hv_24x7_event_data = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"catalog event %u has invalid domain %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%.*s__%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (i32, %struct.hv_24x7_event_data*, i32, i32)* @event_to_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @event_to_attr(i32 %0, %struct.hv_24x7_event_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_24x7_event_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.attribute*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.hv_24x7_event_data* %1, %struct.hv_24x7_event_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @domain_is_valid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store %struct.attribute* null, %struct.attribute** %5, align 8
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @event_fmt(%struct.hv_24x7_event_data* %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store %struct.attribute* null, %struct.attribute** %5, align 8
  br label %64

29:                                               ; preds = %22
  %30 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %7, align 8
  %31 = call i8* @event_name(%struct.hv_24x7_event_data* %30, i32* %10)
  store i8* %31, i8** %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* (i32, i8*, i32, i8*, ...) @kasprintf(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %37)
  store i8* %38, i8** %12, align 8
  br label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i8* (i32, i8*, i32, i8*, ...) @kasprintf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %41, i8* %42, i32 %43)
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %12, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call %struct.attribute* @device_str_attr_create_(i8* %50, i8* %51)
  store %struct.attribute* %52, %struct.attribute** %14, align 8
  %53 = load %struct.attribute*, %struct.attribute** %14, align 8
  %54 = icmp ne %struct.attribute* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %58

56:                                               ; preds = %49
  %57 = load %struct.attribute*, %struct.attribute** %14, align 8
  store %struct.attribute* %57, %struct.attribute** %5, align 8
  br label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @kfree(i8* %59)
  br label %61

61:                                               ; preds = %58, %48
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @kfree(i8* %62)
  store %struct.attribute* null, %struct.attribute** %5, align 8
  br label %64

64:                                               ; preds = %61, %56, %28, %18
  %65 = load %struct.attribute*, %struct.attribute** %5, align 8
  ret %struct.attribute* %65
}

declare dso_local i32 @domain_is_valid(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i8* @event_fmt(%struct.hv_24x7_event_data*, i32) #1

declare dso_local i8* @event_name(%struct.hv_24x7_event_data*, i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i8*, ...) #1

declare dso_local %struct.attribute* @device_str_attr_create_(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
