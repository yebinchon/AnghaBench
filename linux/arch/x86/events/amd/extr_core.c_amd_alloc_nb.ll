; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_alloc_nb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_alloc_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.amd_nb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd_nb* (i32)* @amd_alloc_nb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd_nb* @amd_alloc_nb(i32 %0) #0 {
  %2 = alloca %struct.amd_nb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_nb*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_to_node(i32 %7)
  %9 = call %struct.amd_nb* @kzalloc_node(i32 16, i32 %6, i32 %8)
  store %struct.amd_nb* %9, %struct.amd_nb** %4, align 8
  %10 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %11 = icmp ne %struct.amd_nb* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.amd_nb* null, %struct.amd_nb** %2, align 8
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %15 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %38, %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %23 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__set_bit(i32 %21, i32 %29)
  %31 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  %32 = getelementptr inbounds %struct.amd_nb, %struct.amd_nb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.amd_nb*, %struct.amd_nb** %4, align 8
  store %struct.amd_nb* %42, %struct.amd_nb** %2, align 8
  br label %43

43:                                               ; preds = %41, %12
  %44 = load %struct.amd_nb*, %struct.amd_nb** %2, align 8
  ret %struct.amd_nb* %44
}

declare dso_local %struct.amd_nb* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
