; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_parse_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imc_events = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"event-name\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"unit\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i8*, i8*, i8*, i64, %struct.imc_events*)* @imc_parse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imc_parse_event(%struct.device_node* %0, i8* %1, i8* %2, i8* %3, i64 %4, %struct.imc_events* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.imc_events*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.imc_events* %5, %struct.imc_events** %13, align 8
  %16 = load %struct.device_node*, %struct.device_node** %8, align 8
  %17 = call i64 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %15)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %85

20:                                               ; preds = %6
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %15, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %25 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %8, align 8
  %27 = call i64 @of_property_read_string(%struct.device_node* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %85

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i8* @kasprintf(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %36 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %38 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %85

42:                                               ; preds = %30
  %43 = load %struct.device_node*, %struct.device_node** %8, align 8
  %44 = call i64 @of_property_read_string(%struct.device_node* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  store i8* %47, i8** %14, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i8*, i8** %14, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kstrdup(i8* %52, i32 %53)
  %55 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %56 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %58 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %85

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.device_node*, %struct.device_node** %8, align 8
  %65 = call i64 @of_property_read_string(%struct.device_node* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %14)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %14, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kstrdup(i8* %73, i32 %74)
  %76 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %77 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %79 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %72
  br label %85

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %69
  store i32 0, i32* %7, align 4
  br label %100

85:                                               ; preds = %82, %61, %41, %29, %19
  %86 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %87 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %91 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load %struct.imc_events*, %struct.imc_events** %13, align 8
  %95 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %85, %84
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
