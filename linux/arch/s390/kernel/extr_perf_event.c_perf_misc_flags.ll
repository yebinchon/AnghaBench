; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_misc_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_misc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i64, i32* }

@CPU_MF_INT_SF_PRA = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_misc_flags(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 5127
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CPU_MF_INT_SF_PRA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 15
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = call i64 @perf_misc_flags_sf(%struct.pt_regs* %22)
  store i64 %23, i64* %2, align 8
  br label %42

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %8, %1
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = call i64 @is_in_guest(%struct.pt_regs* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = call i64 @perf_misc_guest_flags(%struct.pt_regs* %30)
  store i64 %31, i64* %2, align 8
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %34 = call i64 @user_mode(%struct.pt_regs* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %29, %21
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i64 @perf_misc_flags_sf(%struct.pt_regs*) #1

declare dso_local i64 @is_in_guest(%struct.pt_regs*) #1

declare dso_local i64 @perf_misc_guest_flags(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
