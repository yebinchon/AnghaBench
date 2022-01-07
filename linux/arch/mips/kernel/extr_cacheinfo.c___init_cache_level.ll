; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cacheinfo.c___init_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_cacheinfo.c___init_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.cpu_cacheinfo = type { i32, i32 }

@current_cpu_data = common dso_local global %struct.cpuinfo_mips zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__init_cache_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__init_cache_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuinfo_mips*, align 8
  %5 = alloca %struct.cpu_cacheinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cpuinfo_mips* @current_cpu_data, %struct.cpuinfo_mips** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %8)
  store %struct.cpu_cacheinfo* %9, %struct.cpu_cacheinfo** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %11 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %15
  %22 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %23 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 2, i32 1
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %32 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %21
  %42 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %4, align 8
  %43 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %5, align 8
  %55 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %5, align 8
  %58 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %18
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
