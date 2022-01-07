; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_init_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/plat-eznps/extr_mtm.c_mtm_init_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nps_host_reg_thr_init = type { i64, i32, i64 }
%struct.nps_host_reg_thr_init_sts = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to thread init cpu %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Wrong thread id in thread init for cpu %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Got thread init timeout for cpu %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mtm_init_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtm_init_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nps_host_reg_thr_init, align 8
  %6 = alloca %struct.nps_host_reg_thr_init_sts, align 8
  store i32 %0, i32* %2, align 4
  store i32 5, i32* %4, align 4
  %7 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @MTM_THR_INIT(i32 %10)
  %12 = call i32 @iowrite32be(i64 %9, i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @NPS_CPU_TO_THREAD_NUM(i32 %13)
  %15 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @MTM_THR_INIT(i32 %19)
  %21 = call i32 @iowrite32be(i64 %18, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %53, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @MTM_THR_INIT_STS(i32 %27)
  %29 = call i32 @ioread32be(i32 %28)
  %30 = getelementptr inbounds %struct.nps_host_reg_thr_init_sts, %struct.nps_host_reg_thr_init_sts* %6, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.nps_host_reg_thr_init_sts, %struct.nps_host_reg_thr_init_sts* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.nps_host_reg_thr_init, %struct.nps_host_reg_thr_init* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nps_host_reg_thr_init_sts, %struct.nps_host_reg_thr_init_sts* %6, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %53

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nps_host_reg_thr_init_sts, %struct.nps_host_reg_thr_init_sts* %6, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48
  br label %56

50:                                               ; preds = %26
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %22

56:                                               ; preds = %50, %49, %22
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @iowrite32be(i64, i32) #1

declare dso_local i32 @MTM_THR_INIT(i32) #1

declare dso_local i64 @NPS_CPU_TO_THREAD_NUM(i32) #1

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @MTM_THR_INIT_STS(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
