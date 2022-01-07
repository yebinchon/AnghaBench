; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_unregister_for_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_unregister_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { %struct.ipmi_smi* }
%struct.ipmi_smi = type { i32 }
%struct.cmd_rcvr = type { i32, %struct.cmd_rcvr*, i32, %struct.ipmi_user* }

@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPMI_NUM_CHANNELS = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_COMMANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_unregister_for_cmd(%struct.ipmi_user* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_user*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_smi*, align 8
  %11 = alloca %struct.cmd_rcvr*, align 8
  %12 = alloca %struct.cmd_rcvr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %17 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %16, i32 0, i32 0
  %18 = load %struct.ipmi_smi*, %struct.ipmi_smi** %17, align 8
  store %struct.ipmi_smi* %18, %struct.ipmi_smi** %10, align 8
  store %struct.cmd_rcvr* null, %struct.cmd_rcvr** %12, align 8
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %22 = call %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user* %21, i32* %15)
  store %struct.ipmi_user* %22, %struct.ipmi_user** %6, align 8
  %23 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %24 = icmp ne %struct.ipmi_user* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %105

28:                                               ; preds = %4
  %29 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %30 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %79, %28
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @IPMI_NUM_CHANNELS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %79

43:                                               ; preds = %36
  %44 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %45 = load i8, i8* %7, align 1
  %46 = load i8, i8* %8, align 1
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi* %44, i8 zeroext %45, i8 zeroext %46, i32 %47)
  store %struct.cmd_rcvr* %48, %struct.cmd_rcvr** %11, align 8
  %49 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %50 = icmp eq %struct.cmd_rcvr* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %79

52:                                               ; preds = %43
  %53 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %54 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %53, i32 0, i32 3
  %55 = load %struct.ipmi_user*, %struct.ipmi_user** %54, align 8
  %56 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %57 = icmp eq %struct.ipmi_user* %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %62 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %66 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %71 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %70, i32 0, i32 2
  %72 = call i32 @list_del_rcu(i32* %71)
  %73 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %12, align 8
  %74 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %75 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %74, i32 0, i32 1
  store %struct.cmd_rcvr* %73, %struct.cmd_rcvr** %75, align 8
  %76 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  store %struct.cmd_rcvr* %76, %struct.cmd_rcvr** %12, align 8
  br label %77

77:                                               ; preds = %69, %58
  br label %78

78:                                               ; preds = %77, %52
  br label %79

79:                                               ; preds = %78, %51, %42
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %32

82:                                               ; preds = %32
  %83 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %84 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = call i32 (...) @synchronize_rcu()
  %87 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @release_ipmi_user(%struct.ipmi_user* %87, i32 %88)
  br label %90

90:                                               ; preds = %93, %82
  %91 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %12, align 8
  %92 = icmp ne %struct.cmd_rcvr* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %95 = load i32, i32* @IPMI_WATCH_MASK_CHECK_COMMANDS, align 4
  %96 = call i32 @smi_remove_watch(%struct.ipmi_smi* %94, i32 %95)
  %97 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %12, align 8
  store %struct.cmd_rcvr* %97, %struct.cmd_rcvr** %11, align 8
  %98 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %99 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %98, i32 0, i32 1
  %100 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %99, align 8
  store %struct.cmd_rcvr* %100, %struct.cmd_rcvr** %12, align 8
  %101 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %102 = call i32 @kfree(%struct.cmd_rcvr* %101)
  br label %90

103:                                              ; preds = %90
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(%struct.ipmi_smi*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @release_ipmi_user(%struct.ipmi_user*, i32) #1

declare dso_local i32 @smi_remove_watch(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @kfree(%struct.cmd_rcvr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
