; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_sys_ipl_device_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_sys_ipl_device_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@ipl_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"0.%x.%04x\0A\00", align 1
@ipl_block = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"0.0.%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @sys_ipl_device_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_ipl_device_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ipl_info, i32 0, i32 0), align 4
  switch i32 %8, label %18 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %14
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 1, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 1, i32 1), align 4
  %13 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  br label %19

14:                                               ; preds = %3, %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipl_block, i32 0, i32 0, i32 0), align 4
  %17 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %14, %9
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
