; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%union.decode_item = type { i32 }

@MAX_COVERAGE_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@coverage = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@coverage_start_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.decode_item*)* @coverage_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coverage_start(%union.decode_item* %0) #0 {
  %2 = alloca %union.decode_item*, align 8
  store %union.decode_item* %0, %union.decode_item** %2, align 8
  %3 = load i32, i32* @MAX_COVERAGE_ENTRIES, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i32 @kmalloc_array(i32 %3, i32 4, i32 %4)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @coverage, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @coverage, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @coverage, i32 0, i32 0), align 8
  %6 = load %union.decode_item*, %union.decode_item** %2, align 8
  %7 = load i32, i32* @coverage_start_fn, align 4
  %8 = call i32 @table_iter(%union.decode_item* %6, i32 %7, %struct.TYPE_3__* @coverage)
  ret i32 %8
}

declare dso_local i32 @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @table_iter(%union.decode_item*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
