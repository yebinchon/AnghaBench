; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_find_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_find_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.master = type { i32, %struct.component_match* }
%struct.component_match = type { i64, %struct.component_match_array* }
%struct.component_match_array = type { i32, %struct.component* }
%struct.component = type { %struct.master*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Looking for component %zu\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"found component %s, duplicate %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.master*)* @find_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_components(%struct.master* %0) #0 {
  %2 = alloca %struct.master*, align 8
  %3 = alloca %struct.component_match*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.component_match_array*, align 8
  %7 = alloca %struct.component*, align 8
  store %struct.master* %0, %struct.master** %2, align 8
  %8 = load %struct.master*, %struct.master** %2, align 8
  %9 = getelementptr inbounds %struct.master, %struct.master* %8, i32 0, i32 1
  %10 = load %struct.component_match*, %struct.component_match** %9, align 8
  store %struct.component_match* %10, %struct.component_match** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %86, %1
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.component_match*, %struct.component_match** %3, align 8
  %14 = getelementptr inbounds %struct.component_match, %struct.component_match* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %11
  %18 = load %struct.component_match*, %struct.component_match** %3, align 8
  %19 = getelementptr inbounds %struct.component_match, %struct.component_match* %18, i32 0, i32 1
  %20 = load %struct.component_match_array*, %struct.component_match_array** %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %20, i64 %21
  store %struct.component_match_array* %22, %struct.component_match_array** %6, align 8
  %23 = load %struct.master*, %struct.master** %2, align 8
  %24 = getelementptr inbounds %struct.master, %struct.master* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.component_match*, %struct.component_match** %3, align 8
  %29 = getelementptr inbounds %struct.component_match, %struct.component_match* %28, i32 0, i32 1
  %30 = load %struct.component_match_array*, %struct.component_match_array** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %30, i64 %31
  %33 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %32, i32 0, i32 1
  %34 = load %struct.component*, %struct.component** %33, align 8
  %35 = icmp ne %struct.component* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %86

37:                                               ; preds = %17
  %38 = load %struct.master*, %struct.master** %2, align 8
  %39 = load %struct.component_match_array*, %struct.component_match_array** %6, align 8
  %40 = call %struct.component* @find_component(%struct.master* %38, %struct.component_match_array* %39)
  store %struct.component* %40, %struct.component** %7, align 8
  %41 = load %struct.component*, %struct.component** %7, align 8
  %42 = icmp ne %struct.component* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %89

46:                                               ; preds = %37
  %47 = load %struct.master*, %struct.master** %2, align 8
  %48 = getelementptr inbounds %struct.master, %struct.master* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.component*, %struct.component** %7, align 8
  %51 = getelementptr inbounds %struct.component, %struct.component* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_name(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load %struct.component*, %struct.component** %7, align 8
  %56 = getelementptr inbounds %struct.component, %struct.component* %55, i32 0, i32 0
  %57 = load %struct.master*, %struct.master** %56, align 8
  %58 = icmp ne %struct.master* %57, null
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %61)
  %63 = load %struct.component*, %struct.component** %7, align 8
  %64 = getelementptr inbounds %struct.component, %struct.component* %63, i32 0, i32 0
  %65 = load %struct.master*, %struct.master** %64, align 8
  %66 = icmp ne %struct.master* %65, null
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.component_match*, %struct.component_match** %3, align 8
  %71 = getelementptr inbounds %struct.component_match, %struct.component_match* %70, i32 0, i32 1
  %72 = load %struct.component_match_array*, %struct.component_match_array** %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %72, i64 %73
  %75 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %74, i32 0, i32 0
  store i32 %69, i32* %75, align 8
  %76 = load %struct.component*, %struct.component** %7, align 8
  %77 = load %struct.component_match*, %struct.component_match** %3, align 8
  %78 = getelementptr inbounds %struct.component_match, %struct.component_match* %77, i32 0, i32 1
  %79 = load %struct.component_match_array*, %struct.component_match_array** %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %79, i64 %80
  %82 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %81, i32 0, i32 1
  store %struct.component* %76, %struct.component** %82, align 8
  %83 = load %struct.master*, %struct.master** %2, align 8
  %84 = load %struct.component*, %struct.component** %7, align 8
  %85 = getelementptr inbounds %struct.component, %struct.component* %84, i32 0, i32 0
  store %struct.master* %83, %struct.master** %85, align 8
  br label %86

86:                                               ; preds = %46, %36
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %11

89:                                               ; preds = %43, %11
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local %struct.component* @find_component(%struct.master*, %struct.component_match_array*) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
