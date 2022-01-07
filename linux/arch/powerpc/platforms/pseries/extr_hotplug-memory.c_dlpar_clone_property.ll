; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_clone_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_clone_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (%struct.property*, i32)* @dlpar_clone_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @dlpar_clone_property(%struct.property* %0, i32 %1) #0 {
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
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.property*, %struct.property** %4, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrdup(i32 %16, i32 %17)
  %19 = load %struct.property*, %struct.property** %6, align 8
  %20 = getelementptr inbounds %struct.property, %struct.property* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.property*, %struct.property** %6, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.property*, %struct.property** %6, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  %31 = load %struct.property*, %struct.property** %6, align 8
  %32 = getelementptr inbounds %struct.property, %struct.property* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %13
  %36 = load %struct.property*, %struct.property** %6, align 8
  %37 = call i32 @dlpar_free_property(%struct.property* %36)
  store %struct.property* null, %struct.property** %3, align 8
  br label %56

38:                                               ; preds = %30
  %39 = load %struct.property*, %struct.property** %6, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.property*, %struct.property** %4, align 8
  %43 = getelementptr inbounds %struct.property, %struct.property* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.property*, %struct.property** %4, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i8* %41, i8* %44, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.property*, %struct.property** %6, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.property*, %struct.property** %6, align 8
  %53 = load i32, i32* @OF_DYNAMIC, align 4
  %54 = call i32 @of_property_set_flag(%struct.property* %52, i32 %53)
  %55 = load %struct.property*, %struct.property** %6, align 8
  store %struct.property* %55, %struct.property** %3, align 8
  br label %56

56:                                               ; preds = %38, %35, %12
  %57 = load %struct.property*, %struct.property** %3, align 8
  ret %struct.property* %57
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @dlpar_free_property(%struct.property*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @of_property_set_flag(%struct.property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
