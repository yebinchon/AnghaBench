; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_flash.c_get_flash_status_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas_flash.c_get_flash_status_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"error: this partition does not have service authority\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"info: no firmware image for flash\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error: flash image short\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error: internal error bad length\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error: internal error null data\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ready: firmware image ready for flash on reboot\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"error: unexpected status value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @get_flash_status_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_flash_status_msg(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 133, label %9
    i32 128, label %10
    i32 129, label %11
    i32 132, label %12
    i32 131, label %13
    i32 130, label %14
  ]

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %19

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %19

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %19

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %19

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @sprintf(i8* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %17)
  store i64 %18, i64* %3, align 8
  br label %28

19:                                               ; preds = %14, %13, %12, %11, %10, %9
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = call i32 @memcpy(i8* %22, i8* %23, i64 %25)
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %19, %15
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
