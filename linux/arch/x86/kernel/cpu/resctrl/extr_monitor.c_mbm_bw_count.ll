; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_bw_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_bw_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.rmid_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mbm_state* }
%struct.mbm_state = type { i32, i32, i32, i32, i32, i32 }

@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RDT_RESOURCE_L3 = common dso_local global i64 0, align 8
@RMID_VAL_ERROR = common dso_local global i32 0, align 4
@RMID_VAL_UNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.rmid_read*)* @mbm_bw_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbm_bw_count(i64 %0, %struct.rmid_read* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rmid_read*, align 8
  %5 = alloca %struct.rdt_resource*, align 8
  %6 = alloca %struct.mbm_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.rmid_read* %1, %struct.rmid_read** %4, align 8
  %10 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %11 = load i64, i64* @RDT_RESOURCE_L3, align 8
  %12 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %10, i64 %11
  store %struct.rdt_resource* %12, %struct.rdt_resource** %5, align 8
  %13 = load %struct.rmid_read*, %struct.rmid_read** %4, align 8
  %14 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mbm_state*, %struct.mbm_state** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %17, i64 %18
  store %struct.mbm_state* %19, %struct.mbm_state** %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.rmid_read*, %struct.rmid_read** %4, align 8
  %22 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__rmid_read(i64 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @RMID_VAL_ERROR, align 4
  %27 = load i32, i32* @RMID_VAL_UNAVAIL, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %76

32:                                               ; preds = %2
  %33 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %34 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mbm_overflow_count(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %40 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %44 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %47 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %50 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = ashr i32 %52, 20
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %55 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %32
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %61 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = call i32 @abs(i32 %63) #3
  %65 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %66 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %32
  %68 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %69 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %72 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %75 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %31
  ret void
}

declare dso_local i32 @__rmid_read(i64, i32) #1

declare dso_local i32 @mbm_overflow_count(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
