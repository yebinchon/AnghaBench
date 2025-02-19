; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_new_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_new_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipmi_reg_list = type { i32, i32 }

@ipmi_major = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ipmi_devintf: Unable to create the ipmi class device link\0A\00", align 1
@reg_list_mutex = common dso_local global i32 0, align 4
@ipmi_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ipmi%d\00", align 1
@reg_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.device*)* @ipmi_new_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_new_smi(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_reg_list*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load i32, i32* @ipmi_major, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @MKDEV(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipmi_reg_list* @kmalloc(i32 8, i32 %10)
  store %struct.ipmi_reg_list* %11, %struct.ipmi_reg_list** %6, align 8
  %12 = load %struct.ipmi_reg_list*, %struct.ipmi_reg_list** %6, align 8
  %13 = icmp ne %struct.ipmi_reg_list* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ipmi_reg_list*, %struct.ipmi_reg_list** %6, align 8
  %19 = getelementptr inbounds %struct.ipmi_reg_list, %struct.ipmi_reg_list* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 @mutex_lock(i32* @reg_list_mutex)
  %21 = load i32, i32* @ipmi_class, align 4
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_create(i32 %21, %struct.device* %22, i32 %23, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.ipmi_reg_list*, %struct.ipmi_reg_list** %6, align 8
  %27 = getelementptr inbounds %struct.ipmi_reg_list, %struct.ipmi_reg_list* %26, i32 0, i32 0
  %28 = call i32 @list_add(i32* %27, i32* @reg_list)
  %29 = call i32 @mutex_unlock(i32* @reg_list_mutex)
  br label %30

30:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local %struct.ipmi_reg_list* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_create(i32, %struct.device*, i32, i32*, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
