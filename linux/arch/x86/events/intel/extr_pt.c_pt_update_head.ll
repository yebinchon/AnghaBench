; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_update_head.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_update_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt = type { i32 }
%struct.pt_buffer = type { i64, i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt*)* @pt_update_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_update_head(%struct.pt* %0) #0 {
  %2 = alloca %struct.pt*, align 8
  %3 = alloca %struct.pt_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt* %0, %struct.pt** %2, align 8
  %7 = load %struct.pt*, %struct.pt** %2, align 8
  %8 = getelementptr inbounds %struct.pt, %struct.pt* %7, i32 0, i32 0
  %9 = call %struct.pt_buffer* @perf_get_aux(i32* %8)
  store %struct.pt_buffer* %9, %struct.pt_buffer** %3, align 8
  %10 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %19

19:                                               ; preds = %33, %1
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %26, i32 0, i32 6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TOPA_ENTRY_SIZE(%struct.TYPE_2__* %28, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %42, i32 0, i32 3
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @local_set(i32* %43, i64 %44)
  br label %78

46:                                               ; preds = %36
  %47 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %48 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %47, i32 0, i32 4
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @local64_xchg(i32* %48, i64 %49)
  %51 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %50, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %46
  %63 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %64 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %62, %46
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.pt_buffer*, %struct.pt_buffer** %3, align 8
  %76 = getelementptr inbounds %struct.pt_buffer, %struct.pt_buffer* %75, i32 0, i32 3
  %77 = call i32 @local_add(i64 %74, i32* %76)
  br label %78

78:                                               ; preds = %71, %41
  ret void
}

declare dso_local %struct.pt_buffer* @perf_get_aux(i32*) #1

declare dso_local i64 @TOPA_ENTRY_SIZE(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @local_set(i32*, i64) #1

declare dso_local i32 @local64_xchg(i32*, i64) #1

declare dso_local i32 @local_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
