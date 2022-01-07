; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_iterate_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_iterate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_tree = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@sun4v_chip_type = common dso_local global i32 0, align 4
@niagara_iterate_method = common dso_local global i32* null, align 8
@generic_iterate_method = common dso_local global i32* null, align 8
@CPUINFO_LVL_MAX = common dso_local global i32 0, align 4
@ROVER_INC_ON_VISIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_tree*, i32)* @iterate_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_cpu(%struct.cpuinfo_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cpuinfo_tree* %0, %struct.cpuinfo_tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @sun4v_chip_type, align 4
  switch i32 %10, label %13 [
    i32 137, label %11
    i32 136, label %11
    i32 135, label %11
    i32 134, label %11
    i32 133, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
    i32 132, label %11
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load i32*, i32** @niagara_iterate_method, align 8
  store i32* %12, i32** %5, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** @generic_iterate_method, align 8
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %53, %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @CPUINFO_LVL_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %3, align 8
  %30 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ROVER_INC_ON_VISIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @increment_rover(%struct.cpuinfo_tree* %46, i32 %47, i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @increment_rover(%struct.cpuinfo_tree*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
