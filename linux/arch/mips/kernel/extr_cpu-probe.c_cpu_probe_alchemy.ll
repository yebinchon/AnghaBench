; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_alchemy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cpu-probe.c_cpu_probe_alchemy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32 }

@PRID_IMP_MASK = common dso_local global i32 0, align 4
@CPU_ALCHEMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Au1000\00", align 1
@__cpu_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Au1500\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Au1100\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Au1550\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Au1200\00", align 1
@PRID_REV_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"Au1250\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Au1210\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Au1xxx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_mips*, i32)* @cpu_probe_alchemy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_probe_alchemy(%struct.cpuinfo_mips* %0, i32 %1) #0 {
  %3 = alloca %struct.cpuinfo_mips*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %6 = call i32 @decode_configs(%struct.cpuinfo_mips* %5)
  %7 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PRID_IMP_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %69 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @CPU_ALCHEMY, align 4
  %14 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %17 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 24
  %20 = and i32 %19, 255
  switch i32 %20, label %63 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %31
    i32 3, label %36
    i32 4, label %41
    i32 5, label %58
  ]

21:                                               ; preds = %12
  %22 = load i8**, i8*** @__cpu_name, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  br label %68

26:                                               ; preds = %12
  %27 = load i8**, i8*** @__cpu_name, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  br label %68

31:                                               ; preds = %12
  %32 = load i8**, i8*** @__cpu_name, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  br label %68

36:                                               ; preds = %12
  %37 = load i8**, i8*** @__cpu_name, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %40, align 8
  br label %68

41:                                               ; preds = %12
  %42 = load i8**, i8*** @__cpu_name, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %3, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PRID_REV_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i8**, i8*** @__cpu_name, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %41
  br label %68

58:                                               ; preds = %12
  %59 = load i8**, i8*** @__cpu_name, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %62, align 8
  br label %68

63:                                               ; preds = %12
  %64 = load i8**, i8*** @__cpu_name, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %58, %57, %36, %31, %26, %21
  br label %69

69:                                               ; preds = %2, %68
  ret void
}

declare dso_local i32 @decode_configs(%struct.cpuinfo_mips*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
