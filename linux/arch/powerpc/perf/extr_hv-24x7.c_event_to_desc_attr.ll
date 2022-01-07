; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_to_desc_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_to_desc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.hv_24x7_event_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (%struct.hv_24x7_event_data*, i32)* @event_to_desc_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @event_to_desc_attr(%struct.hv_24x7_event_data* %0, i32 %1) #0 {
  %3 = alloca %struct.attribute*, align 8
  %4 = alloca %struct.hv_24x7_event_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.hv_24x7_event_data* %0, %struct.hv_24x7_event_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %4, align 8
  %11 = call i8* @event_name(%struct.hv_24x7_event_data* %10, i32* %6)
  store i8* %11, i8** %8, align 8
  %12 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %4, align 8
  %13 = call i8* @event_desc(%struct.hv_24x7_event_data* %12, i32* %7)
  store i8* %13, i8** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.attribute* null, %struct.attribute** %3, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.attribute* @device_str_attr_create(i8* %18, i32 %19, i32 %20, i8* %21, i32 %22)
  store %struct.attribute* %23, %struct.attribute** %3, align 8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load %struct.attribute*, %struct.attribute** %3, align 8
  ret %struct.attribute* %25
}

declare dso_local i8* @event_name(%struct.hv_24x7_event_data*, i32*) #1

declare dso_local i8* @event_desc(%struct.hv_24x7_event_data*, i32*) #1

declare dso_local %struct.attribute* @device_str_attr_create(i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
