; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }
%struct.cpuinfo_x86 = type { i8*, i32 }

@X86_VENDOR_NUM = common dso_local global i32 0, align 4
@cpu_devs = common dso_local global %struct.TYPE_4__** null, align 8
@this_cpu = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [84 x i8] c"CPU: vendor_id '%s' unknown, using generic init.\0ACPU: Your system may be unstable.\0A\00", align 1
@X86_VENDOR_UNKNOWN = common dso_local global i32 0, align 4
@default_cpu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_x86*)* @get_cpu_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cpu_vendor(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %5 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %6 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @X86_VENDOR_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_devs, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %72

20:                                               ; preds = %12
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_devs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @strcmp(i8* %21, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %20
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_devs, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %33
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_devs, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @strcmp(i8* %45, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %44, %20
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @cpu_devs, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** @this_cpu, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @this_cpu, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %78

68:                                               ; preds = %44, %33
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %8

72:                                               ; preds = %19, %8
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @pr_err_once(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @X86_VENDOR_UNKNOWN, align 4
  %76 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %77 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  store %struct.TYPE_4__* @default_cpu, %struct.TYPE_4__** @this_cpu, align 8
  br label %78

78:                                               ; preds = %72, %57
  ret void
}

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @pr_err_once(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
