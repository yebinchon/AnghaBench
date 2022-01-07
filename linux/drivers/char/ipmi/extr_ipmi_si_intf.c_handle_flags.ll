; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i32, i64 (%struct.smi_info*)*, i8*, i32 }

@WDT_PRE_TIMEOUT_INT = common dso_local global i32 0, align 4
@watchdog_pretimeouts = common dso_local global i32 0, align 4
@RECEIVE_MSG_AVAIL = common dso_local global i32 0, align 4
@EVENT_MSG_BUFFER_FULL = common dso_local global i32 0, align 4
@OEM_DATA_AVAIL = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @handle_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_flags(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  br label %3

3:                                                ; preds = %85, %1
  %4 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %5 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WDT_PRE_TIMEOUT_INT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %12 = load i32, i32* @watchdog_pretimeouts, align 4
  %13 = call i32 @smi_inc_stat(%struct.smi_info* %11, i32 %12)
  %14 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %15 = call i32 @start_clear_flags(%struct.smi_info* %14)
  %16 = load i32, i32* @WDT_PRE_TIMEOUT_INT, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %19 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %23 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ipmi_smi_watchdog_pretimeout(i32 %24)
  br label %94

26:                                               ; preds = %3
  %27 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %28 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RECEIVE_MSG_AVAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %35 = call i8* @alloc_msg_handle_irq(%struct.smi_info* %34)
  %36 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %37 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %39 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %94

43:                                               ; preds = %33
  %44 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %45 = call i32 @start_getting_msg_queue(%struct.smi_info* %44)
  br label %93

46:                                               ; preds = %26
  %47 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EVENT_MSG_BUFFER_FULL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %55 = call i8* @alloc_msg_handle_irq(%struct.smi_info* %54)
  %56 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %57 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %59 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %94

63:                                               ; preds = %53
  %64 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %65 = call i32 @start_getting_events(%struct.smi_info* %64)
  br label %92

66:                                               ; preds = %46
  %67 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %68 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @OEM_DATA_AVAIL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %75 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %74, i32 0, i32 2
  %76 = load i64 (%struct.smi_info*)*, i64 (%struct.smi_info*)** %75, align 8
  %77 = icmp ne i64 (%struct.smi_info*)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %80 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %79, i32 0, i32 2
  %81 = load i64 (%struct.smi_info*)*, i64 (%struct.smi_info*)** %80, align 8
  %82 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %83 = call i64 %81(%struct.smi_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %3

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %73, %66
  %88 = load i32, i32* @SI_NORMAL, align 4
  %89 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %90 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %43
  br label %94

94:                                               ; preds = %42, %62, %93, %10
  ret void
}

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local i32 @start_clear_flags(%struct.smi_info*) #1

declare dso_local i32 @ipmi_smi_watchdog_pretimeout(i32) #1

declare dso_local i8* @alloc_msg_handle_irq(%struct.smi_info*) #1

declare dso_local i32 @start_getting_msg_queue(%struct.smi_info*) #1

declare dso_local i32 @start_getting_events(%struct.smi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
