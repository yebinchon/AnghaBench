; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, i32, i32 }
%struct.cc_workarea = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (%struct.cc_workarea*)* @dlpar_parse_cc_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @dlpar_parse_cc_property(%struct.cc_workarea* %0) #0 {
  %2 = alloca %struct.property*, align 8
  %3 = alloca %struct.cc_workarea*, align 8
  %4 = alloca %struct.property*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.cc_workarea* %0, %struct.cc_workarea** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.property* @kzalloc(i32 12, i32 %7)
  store %struct.property* %8, %struct.property** %4, align 8
  %9 = load %struct.property*, %struct.property** %4, align 8
  %10 = icmp ne %struct.property* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.property* null, %struct.property** %2, align 8
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %14 = bitcast %struct.cc_workarea* %13 to i8*
  %15 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %16 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %14, i64 %19
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kstrdup(i8* %21, i32 %22)
  %24 = load %struct.property*, %struct.property** %4, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.property*, %struct.property** %4, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load %struct.property*, %struct.property** %4, align 8
  %32 = call i32 @dlpar_free_cc_property(%struct.property* %31)
  store %struct.property* null, %struct.property** %2, align 8
  br label %65

33:                                               ; preds = %12
  %34 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %35 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = load %struct.property*, %struct.property** %4, align 8
  %39 = getelementptr inbounds %struct.property, %struct.property* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %41 = bitcast %struct.cc_workarea* %40 to i8*
  %42 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %43 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.property*, %struct.property** %4, align 8
  %50 = getelementptr inbounds %struct.property, %struct.property* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @kmemdup(i8* %48, i32 %51, i32 %52)
  %54 = load %struct.property*, %struct.property** %4, align 8
  %55 = getelementptr inbounds %struct.property, %struct.property* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.property*, %struct.property** %4, align 8
  %57 = getelementptr inbounds %struct.property, %struct.property* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %33
  %61 = load %struct.property*, %struct.property** %4, align 8
  %62 = call i32 @dlpar_free_cc_property(%struct.property* %61)
  store %struct.property* null, %struct.property** %2, align 8
  br label %65

63:                                               ; preds = %33
  %64 = load %struct.property*, %struct.property** %4, align 8
  store %struct.property* %64, %struct.property** %2, align 8
  br label %65

65:                                               ; preds = %63, %60, %30, %11
  %66 = load %struct.property*, %struct.property** %2, align 8
  ret %struct.property* %66
}

declare dso_local %struct.property* @kzalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @dlpar_free_cc_property(%struct.property*) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
