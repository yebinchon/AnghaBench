; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_vmstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_node.c_node_read_vmstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pglist_data = type { i32 }

@NR_VM_ZONE_STAT_ITEMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s %lu\0A\00", align 1
@vmstat_text = common dso_local global i8** null, align 8
@NR_VM_NODE_STAT_ITEMS = common dso_local global i32 0, align 4
@NR_VM_NUMA_STAT_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @node_read_vmstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_read_vmstat(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pglist_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.pglist_data* @NODE_DATA(i32 %14)
  store %struct.pglist_data* %15, %struct.pglist_data** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %38, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NR_VM_ZONE_STAT_ITEMS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8**, i8*** @vmstat_text, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sum_zone_node_page_state(i32 %30, i32 %31)
  %33 = call i64 @sprintf(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %16

41:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @NR_VM_NODE_STAT_ITEMS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8**, i8*** @vmstat_text, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NR_VM_ZONE_STAT_ITEMS, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @NR_VM_NUMA_STAT_ITEMS, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %51, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.pglist_data*, %struct.pglist_data** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @node_page_state(%struct.pglist_data* %60, i32 %61)
  %63 = call i64 @sprintf(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %46
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @sum_zone_node_page_state(i32, i32) #1

declare dso_local i32 @node_page_state(%struct.pglist_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
