; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_acpi_video_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_video_detect.c_acpi_video_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@acpi_video_backlight_string = common dso_local global i32 0, align 4
@acpi_backlight_vendor = common dso_local global i32 0, align 4
@acpi_backlight_cmdline = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@acpi_backlight_video = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@acpi_backlight_native = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@acpi_backlight_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_video_parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_parse_cmdline() #0 {
  %1 = load i32, i32* @acpi_video_backlight_string, align 4
  %2 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @acpi_backlight_vendor, align 4
  store i32 %5, i32* @acpi_backlight_cmdline, align 4
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @acpi_video_backlight_string, align 4
  %8 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @acpi_backlight_video, align 4
  store i32 %11, i32* @acpi_backlight_cmdline, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @acpi_video_backlight_string, align 4
  %14 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @acpi_backlight_native, align 4
  store i32 %17, i32* @acpi_backlight_cmdline, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* @acpi_video_backlight_string, align 4
  %20 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @acpi_backlight_none, align 4
  store i32 %23, i32* @acpi_backlight_cmdline, align 4
  br label %24

24:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
