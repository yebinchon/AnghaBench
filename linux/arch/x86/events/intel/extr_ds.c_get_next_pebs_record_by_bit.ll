; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_get_next_pebs_record_by_bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_get_next_pebs_record_by_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cpu_hw_events = type { i64, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PEBS_COUNTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32)* @get_next_pebs_record_by_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_next_pebs_record_by_bit(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpu_hw_events*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %12, %struct.cpu_hw_events** %8, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %4, align 8
  br label %72

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* null, i8** %4, align 8
  br label %72

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %64, %21
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @get_pebs_status(i8* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @test_bit(i32 %30, i64* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %35 = icmp sge i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %4, align 8
  br label %72

38:                                               ; preds = %33
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %4, align 8
  br label %72

46:                                               ; preds = %38
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %8, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = and i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @PEBS_COUNTER_MASK, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 1, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i8*, i8** %9, align 8
  store i8* %61, i8** %4, align 8
  br label %72

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %27
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %8, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr i8, i8* %68, i64 %69
  store i8* %70, i8** %9, align 8
  br label %23

71:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %72

72:                                               ; preds = %71, %60, %44, %36, %20, %15
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @get_pebs_status(i8*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
