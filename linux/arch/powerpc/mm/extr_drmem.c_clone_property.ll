; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_clone_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_drmem.c_clone_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, %struct.property*, %struct.property* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (%struct.property*, i32)* @clone_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @clone_property(%struct.property* %0, i32 %1) #0 {
  %3 = alloca %struct.property*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.property*
  store %struct.property* %9, %struct.property** %6, align 8
  %10 = load %struct.property*, %struct.property** %6, align 8
  %11 = icmp ne %struct.property* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.property* null, %struct.property** %3, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.property*, %struct.property** %4, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 2
  %16 = load %struct.property*, %struct.property** %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.property* @kstrdup(%struct.property* %16, i32 %17)
  %19 = load %struct.property*, %struct.property** %6, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 2
  store %struct.property* %18, %struct.property** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.property*
  %25 = load %struct.property*, %struct.property** %6, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 1
  store %struct.property* %24, %struct.property** %26, align 8
  %27 = load %struct.property*, %struct.property** %6, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 2
  %29 = load %struct.property*, %struct.property** %28, align 8
  %30 = icmp ne %struct.property* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %13
  %32 = load %struct.property*, %struct.property** %6, align 8
  %33 = getelementptr inbounds %struct.property, %struct.property* %32, i32 0, i32 1
  %34 = load %struct.property*, %struct.property** %33, align 8
  %35 = icmp ne %struct.property* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %31, %13
  %37 = load %struct.property*, %struct.property** %6, align 8
  %38 = getelementptr inbounds %struct.property, %struct.property* %37, i32 0, i32 2
  %39 = load %struct.property*, %struct.property** %38, align 8
  %40 = call i32 @kfree(%struct.property* %39)
  %41 = load %struct.property*, %struct.property** %6, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 1
  %43 = load %struct.property*, %struct.property** %42, align 8
  %44 = call i32 @kfree(%struct.property* %43)
  %45 = load %struct.property*, %struct.property** %6, align 8
  %46 = call i32 @kfree(%struct.property* %45)
  store %struct.property* null, %struct.property** %3, align 8
  br label %52

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.property*, %struct.property** %6, align 8
  %50 = getelementptr inbounds %struct.property, %struct.property* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %51, %struct.property** %3, align 8
  br label %52

52:                                               ; preds = %47, %36, %12
  %53 = load %struct.property*, %struct.property** %3, align 8
  ret %struct.property* %53
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.property* @kstrdup(%struct.property*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
