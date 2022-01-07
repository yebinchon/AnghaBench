; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_start_processing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_start_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32 }
%struct.smi_info = type { i32, i64, i32*, %struct.TYPE_2__, i32, %struct.ipmi_smi* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 (%struct.TYPE_2__*)*, %struct.smi_info* }

@smi_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@num_force_kipmid = common dso_local global i64 0, align 8
@force_kipmid = common dso_local global i32* null, align 8
@SI_BT = common dso_local global i64 0, align 8
@ipmi_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kipmi%d\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Could not start kernel thread due to error %ld, only using timers to drive the interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ipmi_smi*)* @smi_start_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_start_processing(i8* %0, %struct.ipmi_smi* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.smi_info*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ipmi_smi* %1, %struct.ipmi_smi** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.smi_info*
  store %struct.smi_info* %8, %struct.smi_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %10 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 5
  store %struct.ipmi_smi* %9, %struct.ipmi_smi** %11, align 8
  %12 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %13 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %12, i32 0, i32 4
  %14 = load i32, i32* @smi_timeout, align 4
  %15 = call i32 @timer_setup(i32* %13, i32 %14, i32 0)
  %16 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %17 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* @SI_TIMEOUT_JIFFIES, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @smi_mod_timer(%struct.smi_info* %18, i64 %21)
  %23 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_2__*)* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %30 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store %struct.smi_info* %29, %struct.smi_info** %32, align 8
  %33 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %34 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %35, align 8
  %37 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %38 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %37, i32 0, i32 3
  %39 = call i32 %36(%struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %28, %2
  %41 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %42 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @num_force_kipmid, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32*, i32** @force_kipmid, align 8
  %48 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %49 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %68

53:                                               ; preds = %40
  %54 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %55 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SI_BT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %62 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %60, %53
  br label %68

68:                                               ; preds = %67, %46
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, i32* @ipmi_thread, align 4
  %73 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %74 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %75 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32* @kthread_run(i32 %72, %struct.smi_info* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %79 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %81 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @IS_ERR(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %71
  %86 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %87 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %91 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @PTR_ERR(i32* %92)
  %94 = call i32 @dev_notice(i32 %89, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %96 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %95, i32 0, i32 2
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %85, %71
  br label %98

98:                                               ; preds = %97, %68
  ret i32 0
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @smi_mod_timer(%struct.smi_info*, i64) #1

declare dso_local i32* @kthread_run(i32, %struct.smi_info*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
