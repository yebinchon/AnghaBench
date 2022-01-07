; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_write_all_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_bt_sm.c_write_all_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bt_debug = common dso_local global i32 0, align 4
@BT_DEBUG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"write %d bytes seq=0x%02X\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si_sm_data*)* @write_all_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_all_bytes(%struct.si_sm_data* %0) #0 {
  %2 = alloca %struct.si_sm_data*, align 8
  %3 = alloca i32, align 4
  store %struct.si_sm_data* %0, %struct.si_sm_data** %2, align 8
  %4 = load i32, i32* @bt_debug, align 4
  %5 = load i32, i32* @BT_DEBUG_MSG, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %10 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %15 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %18 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %36, %8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %24 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %29 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %21

39:                                               ; preds = %21
  %40 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %1
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %45 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load %struct.si_sm_data*, %struct.si_sm_data** %2, align 8
  %50 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @HOST2BMC(i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %42

60:                                               ; preds = %42
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @HOST2BMC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
