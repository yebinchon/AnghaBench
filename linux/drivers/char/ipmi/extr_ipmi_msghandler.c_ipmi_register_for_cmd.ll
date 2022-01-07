; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_register_for_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_register_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { %struct.ipmi_smi* }
%struct.ipmi_smi = type { i32, i32 }
%struct.cmd_rcvr = type { i8, i8, i32, i32, %struct.ipmi_user* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_COMMANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_register_for_cmd(%struct.ipmi_user* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_user*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_smi*, align 8
  %11 = alloca %struct.cmd_rcvr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipmi_user* %0, %struct.ipmi_user** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %15 = getelementptr inbounds %struct.ipmi_user, %struct.ipmi_user* %14, i32 0, i32 0
  %16 = load %struct.ipmi_smi*, %struct.ipmi_smi** %15, align 8
  store %struct.ipmi_smi* %16, %struct.ipmi_smi** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %18 = call %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user* %17, i32* %13)
  store %struct.ipmi_user* %18, %struct.ipmi_user** %6, align 8
  %19 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %20 = icmp ne %struct.ipmi_user* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cmd_rcvr* @kmalloc(i32 24, i32 %25)
  store %struct.cmd_rcvr* %26, %struct.cmd_rcvr** %11, align 8
  %27 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %28 = icmp ne %struct.cmd_rcvr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %76

32:                                               ; preds = %24
  %33 = load i8, i8* %8, align 1
  %34 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %35 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 8
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %38 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %37, i32 0, i32 1
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %41 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %43 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %44 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %43, i32 0, i32 4
  store %struct.ipmi_user* %42, %struct.ipmi_user** %44, align 8
  %45 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %49 = load i8, i8* %7, align 1
  %50 = load i8, i8* %8, align 1
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @is_cmd_rcvr_exclusive(%struct.ipmi_smi* %48, i8 zeroext %49, i8 zeroext %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %32
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %66

57:                                               ; preds = %32
  %58 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %59 = load i32, i32* @IPMI_WATCH_MASK_CHECK_COMMANDS, align 4
  %60 = call i32 @smi_add_watch(%struct.ipmi_smi* %58, i32 %59)
  %61 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %62 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %61, i32 0, i32 3
  %63 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %63, i32 0, i32 1
  %65 = call i32 @list_add_rcu(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.ipmi_smi*, %struct.ipmi_smi** %10, align 8
  %68 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %74 = call i32 @kfree(%struct.cmd_rcvr* %73)
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %29
  %77 = load %struct.ipmi_user*, %struct.ipmi_user** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @release_ipmi_user(%struct.ipmi_user* %77, i32 %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %21
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.ipmi_user* @acquire_ipmi_user(%struct.ipmi_user*, i32*) #1

declare dso_local %struct.cmd_rcvr* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_cmd_rcvr_exclusive(%struct.ipmi_smi*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @smi_add_watch(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cmd_rcvr*) #1

declare dso_local i32 @release_ipmi_user(%struct.ipmi_user*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
