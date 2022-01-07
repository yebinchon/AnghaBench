; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_config_filters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_config_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.perf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pt_filters* }
%struct.pt_filters = type { i32, %struct.pt_filter* }
%struct.pt_filter = type { i64, i64, i32 }
%struct.pt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@pt_ctx = common dso_local global i32 0, align 4
@pt_address_ranges = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @pt_config_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_config_filters(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.pt_filters*, align 8
  %5 = alloca %struct.pt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_filter*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.pt_filters*, %struct.pt_filters** %11, align 8
  store %struct.pt_filters* %12, %struct.pt_filters** %4, align 8
  %13 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %13, %struct.pt** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.pt_filters*, %struct.pt_filters** %4, align 8
  %15 = icmp ne %struct.pt_filters* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

17:                                               ; preds = %1
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @perf_event_addr_filters_sync(%struct.perf_event* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %117, %17
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pt_filters*, %struct.pt_filters** %4, align 8
  %23 = getelementptr inbounds %struct.pt_filters, %struct.pt_filters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %20
  %27 = load %struct.pt_filters*, %struct.pt_filters** %4, align 8
  %28 = getelementptr inbounds %struct.pt_filters, %struct.pt_filters* %27, i32 0, i32 1
  %29 = load %struct.pt_filter*, %struct.pt_filter** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %29, i64 %31
  store %struct.pt_filter* %32, %struct.pt_filter** %8, align 8
  %33 = load %struct.pt*, %struct.pt** %5, align 8
  %34 = getelementptr inbounds %struct.pt, %struct.pt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %43 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %26
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pt_address_ranges, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %54 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @wrmsrl(i32 %52, i64 %55)
  %57 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %58 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pt*, %struct.pt** %5, align 8
  %61 = getelementptr inbounds %struct.pt, %struct.pt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 %59, i64* %67, align 8
  br label %68

68:                                               ; preds = %46, %26
  %69 = load %struct.pt*, %struct.pt** %5, align 8
  %70 = getelementptr inbounds %struct.pt, %struct.pt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %79 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %68
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pt_address_ranges, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %90 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @wrmsrl(i32 %88, i64 %91)
  %93 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %94 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.pt*, %struct.pt** %5, align 8
  %97 = getelementptr inbounds %struct.pt, %struct.pt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i64 %95, i64* %103, align 8
  br label %104

104:                                              ; preds = %82, %68
  %105 = load %struct.pt_filter*, %struct.pt_filter** %8, align 8
  %106 = getelementptr inbounds %struct.pt_filter, %struct.pt_filter* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pt_address_ranges, align 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %107, %113
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %20

120:                                              ; preds = %20
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %16
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_event_addr_filters_sync(%struct.perf_event*) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
