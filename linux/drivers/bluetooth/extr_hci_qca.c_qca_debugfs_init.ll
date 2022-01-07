; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { %struct.qca_data* }
%struct.qca_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ibs\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tx_ibs_state\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rx_ibs_state\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ibs_sent_sleeps\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ibs_sent_wakes\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"ibs_sent_wake_acks\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ibs_recv_sleeps\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ibs_recv_wakes\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ibs_recv_wake_acks\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"tx_vote\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"tx_votes_on\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"tx_votes_off\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rx_vote\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"rx_votes_on\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"rx_votes_off\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"votes_on\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"votes_off\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"vote_on_ms\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"vote_off_ms\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"wake_retrans\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"tx_idle_delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @qca_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca_debugfs_init(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.qca_data*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.hci_uart* %8, %struct.hci_uart** %3, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 0
  %11 = load %struct.qca_data*, %struct.qca_data** %10, align 8
  store %struct.qca_data* %11, %struct.qca_data** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %126

17:                                               ; preds = %1
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.dentry* %21, %struct.dentry** %5, align 8
  %22 = load i32, i32* @S_IRUGO, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %26 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %25, i32 0, i32 19
  %27 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.dentry* %24, i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %31 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %30, i32 0, i32 18
  %32 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %28, %struct.dentry* %29, i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %36 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %35, i32 0, i32 17
  %37 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %33, %struct.dentry* %34, i32* %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %41 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %40, i32 0, i32 16
  %42 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %38, %struct.dentry* %39, i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %46 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %45, i32 0, i32 15
  %47 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %43, %struct.dentry* %44, i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %51 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %50, i32 0, i32 14
  %52 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %48, %struct.dentry* %49, i32* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %56 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %55, i32 0, i32 13
  %57 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %53, %struct.dentry* %54, i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.dentry*, %struct.dentry** %5, align 8
  %60 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %61 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %60, i32 0, i32 12
  %62 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %58, %struct.dentry* %59, i32* %61)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %66 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %65, i32 0, i32 11
  %67 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %63, %struct.dentry* %64, i32* %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %71 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %70, i32 0, i32 10
  %72 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %68, %struct.dentry* %69, i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %76 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %75, i32 0, i32 9
  %77 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %73, %struct.dentry* %74, i32* %76)
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %81 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %80, i32 0, i32 8
  %82 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %78, %struct.dentry* %79, i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.dentry*, %struct.dentry** %5, align 8
  %85 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %86 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %85, i32 0, i32 7
  %87 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %83, %struct.dentry* %84, i32* %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.dentry*, %struct.dentry** %5, align 8
  %90 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %91 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %90, i32 0, i32 6
  %92 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %88, %struct.dentry* %89, i32* %91)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.dentry*, %struct.dentry** %5, align 8
  %95 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %96 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %95, i32 0, i32 5
  %97 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %93, %struct.dentry* %94, i32* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %101 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %100, i32 0, i32 4
  %102 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %98, %struct.dentry* %99, i32* %101)
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.dentry*, %struct.dentry** %5, align 8
  %105 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %106 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %105, i32 0, i32 3
  %107 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %103, %struct.dentry* %104, i32* %106)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.dentry*, %struct.dentry** %5, align 8
  %110 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %111 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %110, i32 0, i32 2
  %112 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %108, %struct.dentry* %109, i32* %111)
  %113 = load i32, i32* @S_IRUGO, align 4
  %114 = load i32, i32* @S_IWUSR, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.dentry*, %struct.dentry** %5, align 8
  %118 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %119 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %118, i32 0, i32 1
  %120 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %116, %struct.dentry* %117, i32* %119)
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.dentry*, %struct.dentry** %5, align 8
  %123 = load %struct.qca_data*, %struct.qca_data** %4, align 8
  %124 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %123, i32 0, i32 0
  %125 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %121, %struct.dentry* %122, i32* %124)
  br label %126

126:                                              ; preds = %17, %16
  ret void
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u64(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
