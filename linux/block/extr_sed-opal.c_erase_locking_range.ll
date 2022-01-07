; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_erase_locking_range.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_erase_locking_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_session_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@opalmethod = common dso_local global i32* null, align 8
@OPAL_ERASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Error building Erase Locking Range Command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @erase_locking_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_locking_range(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opal_session_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.opal_session_info*
  store %struct.opal_session_info* %12, %struct.opal_session_info** %6, align 8
  %13 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = mul nuw i64 4, %14
  %18 = trunc i64 %17 to i32
  %19 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %20 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @build_locking_range(i32* %16, i32 %18, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %30 = load i32*, i32** @opalmethod, align 8
  %31 = load i64, i64* @OPAL_ERASE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cmd_start(%struct.opal_dev* %29, i32* %16, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %42 = load i32, i32* @parse_and_check_status, align 4
  %43 = call i32 @finalize_and_send(%struct.opal_dev* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %37, %25
  %45 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @build_locking_range(i32*, i32, i32) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
