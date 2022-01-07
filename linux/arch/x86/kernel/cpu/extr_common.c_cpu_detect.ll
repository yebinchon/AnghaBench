; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cpu_detect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_cpu_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32, i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_detect(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %10 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %14 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  %17 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = call i32 (i32, ...) @cpuid(i32 0, i32* %8, i32* %12, i32* %16, i32* %20)
  %22 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %22, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %58

28:                                               ; preds = %1
  %29 = call i32 (i32, ...) @cpuid(i32 1, i32* %4, i32* %6, i32* %3, i32* %5)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @x86_family(i32 %30)
  %32 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %33 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @x86_model(i32 %34)
  %36 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %37 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @x86_stepping(i32 %38)
  %40 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %41 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 524288
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = mul nsw i32 %48, 8
  %50 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %51 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %53 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %56 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %28
  br label %58

58:                                               ; preds = %57, %1
  ret void
}

declare dso_local i32 @cpuid(i32, ...) #1

declare dso_local i32 @x86_family(i32) #1

declare dso_local i32 @x86_model(i32) #1

declare dso_local i32 @x86_stepping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
