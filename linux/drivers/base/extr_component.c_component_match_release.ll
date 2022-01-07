; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_match_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_match_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32, %struct.component_match_array* }
%struct.component_match_array = type { i32, i32 (%struct.device*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.component_match*)* @component_match_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @component_match_release(%struct.device* %0, %struct.component_match* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.component_match*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.component_match_array*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.component_match* %1, %struct.component_match** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.component_match*, %struct.component_match** %4, align 8
  %10 = getelementptr inbounds %struct.component_match, %struct.component_match* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.component_match*, %struct.component_match** %4, align 8
  %15 = getelementptr inbounds %struct.component_match, %struct.component_match* %14, i32 0, i32 1
  %16 = load %struct.component_match_array*, %struct.component_match_array** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %16, i64 %18
  store %struct.component_match_array* %19, %struct.component_match_array** %6, align 8
  %20 = load %struct.component_match_array*, %struct.component_match_array** %6, align 8
  %21 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %20, i32 0, i32 1
  %22 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.device*, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.component_match_array*, %struct.component_match_array** %6, align 8
  %26 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %25, i32 0, i32 1
  %27 = load i32 (%struct.device*, i32)*, i32 (%struct.device*, i32)** %26, align 8
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.component_match_array*, %struct.component_match_array** %6, align 8
  %30 = getelementptr inbounds %struct.component_match_array, %struct.component_match_array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.device* %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.component_match*, %struct.component_match** %4, align 8
  %39 = getelementptr inbounds %struct.component_match, %struct.component_match* %38, i32 0, i32 1
  %40 = load %struct.component_match_array*, %struct.component_match_array** %39, align 8
  %41 = call i32 @kfree(%struct.component_match_array* %40)
  ret void
}

declare dso_local i32 @kfree(%struct.component_match_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
