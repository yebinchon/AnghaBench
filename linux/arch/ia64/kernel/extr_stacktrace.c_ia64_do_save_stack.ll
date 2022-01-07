; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_stacktrace.c_ia64_do_save_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_stacktrace.c_ia64_do_save_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_frame_info = type { i32 }
%struct.stack_trace = type { i32, i64, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @ia64_do_save_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_do_save_stack(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stack_trace*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.stack_trace*
  store %struct.stack_trace* %9, %struct.stack_trace** %5, align 8
  %10 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %11 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %14 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %47, %2
  %16 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %17 = call i32 @unw_get_ip(%struct.unw_frame_info* %16, i64* %6)
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %51

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %27 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %30 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i64, i64* %28, i64 %31
  store i64 %25, i64* %33, align 8
  %34 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %35 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.stack_trace*, %struct.stack_trace** %5, align 8
  %38 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %51

42:                                               ; preds = %24
  br label %46

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %49 = call i64 @unw_unwind(%struct.unw_frame_info* %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %15, label %51

51:                                               ; preds = %47, %41, %20
  ret void
}

declare dso_local i32 @unw_get_ip(%struct.unw_frame_info*, i64*) #1

declare dso_local i64 @unw_unwind(%struct.unw_frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
