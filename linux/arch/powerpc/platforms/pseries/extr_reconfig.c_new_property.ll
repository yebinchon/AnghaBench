; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_new_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_reconfig.c_new_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, %struct.property*, %struct.property*, %struct.property* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (i8*, i32, i8*, %struct.property*)* @new_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @new_property(i8* %0, i32 %1, i8* %2, %struct.property* %3) #0 {
  %5 = alloca %struct.property*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.property*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.property* %3, %struct.property** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.property* @kzalloc(i32 32, i32 %11)
  store %struct.property* %12, %struct.property** %10, align 8
  %13 = load %struct.property*, %struct.property** %10, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.property* null, %struct.property** %5, align 8
  br label %65

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.property* @kstrdup(i8* %17, i32 %18)
  %20 = load %struct.property*, %struct.property** %10, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 2
  store %struct.property* %19, %struct.property** %21, align 8
  %22 = icmp ne %struct.property* %19, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %54

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.property* @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.property*, %struct.property** %10, align 8
  %30 = getelementptr inbounds %struct.property, %struct.property* %29, i32 0, i32 1
  store %struct.property* %28, %struct.property** %30, align 8
  %31 = icmp ne %struct.property* %28, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %54

33:                                               ; preds = %24
  %34 = load %struct.property*, %struct.property** %10, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 1
  %36 = load %struct.property*, %struct.property** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memcpy(%struct.property* %36, i8* %37, i32 %38)
  %40 = load %struct.property*, %struct.property** %10, align 8
  %41 = getelementptr inbounds %struct.property, %struct.property* %40, i32 0, i32 1
  %42 = load %struct.property*, %struct.property** %41, align 8
  %43 = bitcast %struct.property* %42 to i8*
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.property*, %struct.property** %10, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.property*, %struct.property** %9, align 8
  %51 = load %struct.property*, %struct.property** %10, align 8
  %52 = getelementptr inbounds %struct.property, %struct.property* %51, i32 0, i32 3
  store %struct.property* %50, %struct.property** %52, align 8
  %53 = load %struct.property*, %struct.property** %10, align 8
  store %struct.property* %53, %struct.property** %5, align 8
  br label %65

54:                                               ; preds = %32, %23
  %55 = load %struct.property*, %struct.property** %10, align 8
  %56 = getelementptr inbounds %struct.property, %struct.property* %55, i32 0, i32 2
  %57 = load %struct.property*, %struct.property** %56, align 8
  %58 = call i32 @kfree(%struct.property* %57)
  %59 = load %struct.property*, %struct.property** %10, align 8
  %60 = getelementptr inbounds %struct.property, %struct.property* %59, i32 0, i32 1
  %61 = load %struct.property*, %struct.property** %60, align 8
  %62 = call i32 @kfree(%struct.property* %61)
  %63 = load %struct.property*, %struct.property** %10, align 8
  %64 = call i32 @kfree(%struct.property* %63)
  store %struct.property* null, %struct.property** %5, align 8
  br label %65

65:                                               ; preds = %54, %33, %15
  %66 = load %struct.property*, %struct.property** %5, align 8
  ret %struct.property* %66
}

declare dso_local %struct.property* @kzalloc(i32, i32) #1

declare dso_local %struct.property* @kstrdup(i8*, i32) #1

declare dso_local %struct.property* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.property*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
