; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_misc_flags_sf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_perf_misc_flags_sf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.perf_sf_sde_regs = type { i64 }

@PERF_RECORD_MISC_GUEST_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*)* @perf_misc_flags_sf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @perf_misc_flags_sf(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.perf_sf_sde_regs*, align 8
  %4 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = bitcast i32* %6 to %struct.perf_sf_sde_regs*
  store %struct.perf_sf_sde_regs* %7, %struct.perf_sf_sde_regs** %3, align 8
  %8 = load %struct.perf_sf_sde_regs*, %struct.perf_sf_sde_regs** %3, align 8
  %9 = getelementptr inbounds %struct.perf_sf_sde_regs, %struct.perf_sf_sde_regs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i64 @user_mode(%struct.pt_regs* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  br label %20

18:                                               ; preds = %12
  %19 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %4, align 8
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = call i64 @user_mode(%struct.pt_regs* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @PERF_RECORD_MISC_USER, align 8
  br label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
