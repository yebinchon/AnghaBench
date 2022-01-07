; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_init_binder_logs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_init_binder_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.binderfs_info*, %struct.dentry* }
%struct.binderfs_info = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"binder_logs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@binder_stats_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@binder_state_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@binder_transactions_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"transaction_log\00", align 1
@binder_transaction_log_fops = common dso_local global i32 0, align 4
@binder_transaction_log = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"failed_transaction_log\00", align 1
@binder_transaction_log_failed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @init_binder_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_binder_logs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.binderfs_info*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  %11 = call %struct.dentry* @binderfs_create_dir(%struct.dentry* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i64 @IS_ERR(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = call i32 @PTR_ERR(%struct.dentry* %16)
  store i32 %17, i32* %7, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call %struct.dentry* @binderfs_create_file(%struct.dentry* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @binder_stats_fops, i32* null)
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = call i64 @IS_ERR(%struct.dentry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call i32 @PTR_ERR(%struct.dentry* %25)
  store i32 %26, i32* %7, align 4
  br label %79

27:                                               ; preds = %18
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = call %struct.dentry* @binderfs_create_file(%struct.dentry* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @binder_state_fops, i32* null)
  store %struct.dentry* %29, %struct.dentry** %4, align 8
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = call i64 @IS_ERR(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.dentry* %34)
  store i32 %35, i32* %7, align 4
  br label %79

36:                                               ; preds = %27
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = call %struct.dentry* @binderfs_create_file(%struct.dentry* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* @binder_transactions_fops, i32* null)
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = call i64 @IS_ERR(%struct.dentry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = call i32 @PTR_ERR(%struct.dentry* %43)
  store i32 %44, i32* %7, align 4
  br label %79

45:                                               ; preds = %36
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = call %struct.dentry* @binderfs_create_file(%struct.dentry* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* @binder_transaction_log_fops, i32* @binder_transaction_log)
  store %struct.dentry* %47, %struct.dentry** %4, align 8
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = call i64 @IS_ERR(%struct.dentry* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = call i32 @PTR_ERR(%struct.dentry* %52)
  store i32 %53, i32* %7, align 4
  br label %79

54:                                               ; preds = %45
  %55 = load %struct.dentry*, %struct.dentry** %3, align 8
  %56 = call %struct.dentry* @binderfs_create_file(%struct.dentry* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* @binder_transaction_log_fops, i32* @binder_transaction_log_failed)
  store %struct.dentry* %56, %struct.dentry** %4, align 8
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = call i64 @IS_ERR(%struct.dentry* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = call i32 @PTR_ERR(%struct.dentry* %61)
  store i32 %62, i32* %7, align 4
  br label %79

63:                                               ; preds = %54
  %64 = load %struct.dentry*, %struct.dentry** %3, align 8
  %65 = call %struct.dentry* @binderfs_create_dir(%struct.dentry* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store %struct.dentry* %65, %struct.dentry** %5, align 8
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = call i64 @IS_ERR(%struct.dentry* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i32 @PTR_ERR(%struct.dentry* %70)
  store i32 %71, i32* %7, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.super_block*, %struct.super_block** %2, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 0
  %75 = load %struct.binderfs_info*, %struct.binderfs_info** %74, align 8
  store %struct.binderfs_info* %75, %struct.binderfs_info** %6, align 8
  %76 = load %struct.dentry*, %struct.dentry** %5, align 8
  %77 = load %struct.binderfs_info*, %struct.binderfs_info** %6, align 8
  %78 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %77, i32 0, i32 0
  store %struct.dentry* %76, %struct.dentry** %78, align 8
  br label %79

79:                                               ; preds = %72, %69, %60, %51, %42, %33, %24, %15
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.dentry* @binderfs_create_dir(%struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @binderfs_create_file(%struct.dentry*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
