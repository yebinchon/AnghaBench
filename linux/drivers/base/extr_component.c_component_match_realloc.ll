; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_match_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_match_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i64, %struct.component_match_array*, i32 }
%struct.component_match_array = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.component_match*, i64)* @component_match_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @component_match_realloc(%struct.device* %0, %struct.component_match* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.component_match*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.component_match_array*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.component_match* %1, %struct.component_match** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.component_match*, %struct.component_match** %6, align 8
  %10 = getelementptr inbounds %struct.component_match, %struct.component_match* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.component_match_array* @kmalloc_array(i64 %16, i32 4, i32 %17)
  store %struct.component_match_array* %18, %struct.component_match_array** %8, align 8
  %19 = load %struct.component_match_array*, %struct.component_match_array** %8, align 8
  %20 = icmp ne %struct.component_match_array* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load %struct.component_match*, %struct.component_match** %6, align 8
  %26 = getelementptr inbounds %struct.component_match, %struct.component_match* %25, i32 0, i32 1
  %27 = load %struct.component_match_array*, %struct.component_match_array** %26, align 8
  %28 = icmp ne %struct.component_match_array* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.component_match_array*, %struct.component_match_array** %8, align 8
  %31 = load %struct.component_match*, %struct.component_match** %6, align 8
  %32 = getelementptr inbounds %struct.component_match, %struct.component_match* %31, i32 0, i32 1
  %33 = load %struct.component_match_array*, %struct.component_match_array** %32, align 8
  %34 = load %struct.component_match*, %struct.component_match** %6, align 8
  %35 = getelementptr inbounds %struct.component_match, %struct.component_match* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @min(i32 %36, i64 %37)
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memcpy(%struct.component_match_array* %30, %struct.component_match_array* %33, i32 %41)
  %43 = load %struct.component_match*, %struct.component_match** %6, align 8
  %44 = getelementptr inbounds %struct.component_match, %struct.component_match* %43, i32 0, i32 1
  %45 = load %struct.component_match_array*, %struct.component_match_array** %44, align 8
  %46 = call i32 @kfree(%struct.component_match_array* %45)
  br label %47

47:                                               ; preds = %29, %24
  %48 = load %struct.component_match_array*, %struct.component_match_array** %8, align 8
  %49 = load %struct.component_match*, %struct.component_match** %6, align 8
  %50 = getelementptr inbounds %struct.component_match, %struct.component_match* %49, i32 0, i32 1
  store %struct.component_match_array* %48, %struct.component_match_array** %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.component_match*, %struct.component_match** %6, align 8
  %53 = getelementptr inbounds %struct.component_match, %struct.component_match* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %21, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.component_match_array* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @memcpy(%struct.component_match_array*, %struct.component_match_array*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @kfree(%struct.component_match_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
