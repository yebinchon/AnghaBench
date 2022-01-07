; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_update_purgatory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_kexec_file_update_purgatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.kimage = type { i64 }
%struct.s390_load_data = type { i32 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@STARTUP_KDUMP_OFFSET = common dso_local global i64 0, align 8
@STARTUP_NORMAL_OFFSET = common dso_local global i64 0, align 8
@KEXEC_TYPE_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"kernel_entry\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"kernel_type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"crash_start\00", align 1
@crashk_res = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"crash_size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.s390_load_data*)* @kexec_file_update_purgatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_file_update_purgatory(%struct.kimage* %0, %struct.s390_load_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca %struct.s390_load_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store %struct.s390_load_data* %1, %struct.s390_load_data** %5, align 8
  %10 = load %struct.kimage*, %struct.kimage** %4, align 8
  %11 = getelementptr inbounds %struct.kimage, %struct.kimage* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @STARTUP_KDUMP_OFFSET, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  store i64 %17, i64* %7, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @STARTUP_NORMAL_OFFSET, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* @KEXEC_TYPE_DEFAULT, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.kimage*, %struct.kimage** %4, align 8
  %23 = call i32 @kexec_purgatory_get_set_symbol(%struct.kimage* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %6, i32 8, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %21
  %29 = load %struct.kimage*, %struct.kimage** %4, align 8
  %30 = call i32 @kexec_purgatory_get_set_symbol(%struct.kimage* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %7, i32 8, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %28
  %36 = load %struct.kimage*, %struct.kimage** %4, align 8
  %37 = getelementptr inbounds %struct.kimage, %struct.kimage* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.kimage*, %struct.kimage** %4, align 8
  %43 = call i32 @kexec_purgatory_get_set_symbol(%struct.kimage* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crashk_res, i32 0, i32 0), i32 8, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %41
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crashk_res, i32 0, i32 1), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @crashk_res, i32 0, i32 0), align 8
  %51 = sub nsw i64 %49, %50
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = load %struct.kimage*, %struct.kimage** %4, align 8
  %54 = call i32 @kexec_purgatory_get_set_symbol(%struct.kimage* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %9, i32 8, i32 0)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %48, %35
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %46, %33, %26
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @kexec_purgatory_get_set_symbol(%struct.kimage*, i8*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
