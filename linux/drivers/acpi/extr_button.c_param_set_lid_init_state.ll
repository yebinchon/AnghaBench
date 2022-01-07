; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_param_set_lid_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_button.c_param_set_lid_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"open\00", align 1
@ACPI_BUTTON_LID_INIT_OPEN = common dso_local global i32 0, align 4
@lid_init_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Notify initial lid state as open\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@ACPI_BUTTON_LID_INIT_METHOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Notify initial lid state with _LID return value\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@ACPI_BUTTON_LID_INIT_IGNORE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Do not notify initial lid state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_set_lid_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_set_lid_init_state(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ACPI_BUTTON_LID_INIT_OPEN, align 4
  store i32 %10, i32* @lid_init_state, align 4
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %31

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ACPI_BUTTON_LID_INIT_METHOD, align 4
  store i32 %17, i32* @lid_init_state, align 4
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %30

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ACPI_BUTTON_LID_INIT_IGNORE, align 4
  store i32 %24, i32* @lid_init_state, align 4
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
