; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_update_time_stamp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_update_time_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_pe_update_time_stamp(%struct.eeh_pe* %0) #0 {
  %2 = alloca %struct.eeh_pe*, align 8
  %3 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %2, align 8
  %4 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %5 = icmp ne %struct.eeh_pe* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %9 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %14 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i8* (...) @ktime_get_seconds()
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %18 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %35

19:                                               ; preds = %7
  %20 = call i8* (...) @ktime_get_seconds()
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %24 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  %27 = icmp sgt i32 %26, 3600
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %31 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  %33 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %19
  br label %35

35:                                               ; preds = %6, %34, %12
  ret void
}

declare dso_local i8* @ktime_get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
