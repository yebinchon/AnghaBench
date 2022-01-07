; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_check_options.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@rootfs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"No rootfs filename supplied\00", align 1
@out = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No output filename supplied\00", align 1
@board_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No board-name supplied\00", align 1
@version_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"No version supplied\00", align 1
@rootfs_size = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid rootfs size supplied\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Board name is to long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_options() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rootfs, i32 0, i32 0), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %1, align 4
  br label %33

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %1, align 4
  br label %33

11:                                               ; preds = %6
  %12 = load i32, i32* @board_name, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %1, align 4
  br label %33

16:                                               ; preds = %11
  %17 = load i32, i32* @version_name, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -5, i32* %1, align 4
  br label %33

21:                                               ; preds = %16
  %22 = load i64, i64* @rootfs_size, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -6, i32* %1, align 4
  br label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @board_name, align 4
  %28 = call i32 @strlen(i32 %27)
  %29 = icmp sgt i32 %28, 31
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -7, i32* %1, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %30, %24, %19, %14, %9, %4
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
