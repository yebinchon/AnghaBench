; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c___get_mem_config_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_core.c___get_mem_config_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32, i32, i32, %struct.TYPE_6__, i8*, i64 }
%struct.TYPE_6__ = type { i8*, i32, i8*, i8* }
%union.cpuid_0x10_3_eax = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%union.cpuid_0x10_x_edx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MAX_MBA_BW = common dso_local global i8* null, align 8
@MBA_IS_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*)* @__get_mem_config_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_mem_config_intel(%struct.rdt_resource* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdt_resource*, align 8
  %4 = alloca %union.cpuid_0x10_3_eax, align 8
  %5 = alloca %union.cpuid_0x10_x_edx, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %3, align 8
  %8 = bitcast %union.cpuid_0x10_3_eax* %4 to i32*
  %9 = bitcast %union.cpuid_0x10_x_edx* %5 to i32*
  %10 = call i32 @cpuid_count(i32 16, i32 3, i32* %8, i32* %6, i32* %7, i32* %9)
  %11 = bitcast %union.cpuid_0x10_x_edx* %5 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %16 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %15, i32 0, i32 5
  store i64 %14, i64* %16, align 8
  %17 = bitcast %union.cpuid_0x10_3_eax* %4 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 1
  %21 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %22 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** @MAX_MBA_BW, align 8
  %25 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %26 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MBA_IS_LINEAR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %1
  %32 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %33 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** @MAX_MBA_BW, align 8
  %36 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %37 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %35 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %45 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @MAX_MBA_BW, align 8
  %48 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %49 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %47 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %57 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  br label %65

59:                                               ; preds = %1
  %60 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %61 = call i32 @rdt_get_mb_table(%struct.rdt_resource* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %72

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %31
  %66 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %67 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %66, i32 0, i32 0
  store i32 3, i32* %67, align 8
  %68 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %69 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.rdt_resource*, %struct.rdt_resource** %3, align 8
  %71 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %63
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @rdt_get_mb_table(%struct.rdt_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
