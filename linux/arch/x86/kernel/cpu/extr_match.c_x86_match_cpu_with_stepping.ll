; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_match.c_x86_match_cpu_with_stepping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_match.c_x86_match_cpu_with_stepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i64, i32, i32, i64 }
%struct.x86_cpu_desc = type { i32, i32, i64, i64 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.x86_cpu_desc* (%struct.x86_cpu_desc*)* @x86_match_cpu_with_stepping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.x86_cpu_desc* @x86_match_cpu_with_stepping(%struct.x86_cpu_desc* %0) #0 {
  %2 = alloca %struct.x86_cpu_desc*, align 8
  %3 = alloca %struct.x86_cpu_desc*, align 8
  %4 = alloca %struct.cpuinfo_x86*, align 8
  %5 = alloca %struct.x86_cpu_desc*, align 8
  store %struct.x86_cpu_desc* %0, %struct.x86_cpu_desc** %3, align 8
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %4, align 8
  %6 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %3, align 8
  store %struct.x86_cpu_desc* %6, %struct.x86_cpu_desc** %5, align 8
  br label %7

7:                                                ; preds = %54, %1
  %8 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %9 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %12 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %7
  %17 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %18 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %21 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %54

25:                                               ; preds = %16
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %30 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %36 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %39 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %54

43:                                               ; preds = %34
  %44 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %45 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %48 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %54

52:                                               ; preds = %43
  %53 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  store %struct.x86_cpu_desc* %53, %struct.x86_cpu_desc** %2, align 8
  br label %58

54:                                               ; preds = %51, %42, %33, %24
  %55 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %5, align 8
  %56 = getelementptr inbounds %struct.x86_cpu_desc, %struct.x86_cpu_desc* %55, i32 1
  store %struct.x86_cpu_desc* %56, %struct.x86_cpu_desc** %5, align 8
  br label %7

57:                                               ; preds = %7
  store %struct.x86_cpu_desc* null, %struct.x86_cpu_desc** %2, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = load %struct.x86_cpu_desc*, %struct.x86_cpu_desc** %2, align 8
  ret %struct.x86_cpu_desc* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
