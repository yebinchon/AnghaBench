; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_sid_cpin_pin.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_sid_cpin_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_key = type { i32, i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_C_PIN_SID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Error building Set SID cpin\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @set_sid_cpin_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sid_cpin_pin(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.opal_key*, align 8
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.opal_key*
  store %struct.opal_key* %15, %struct.opal_key** %8, align 8
  %16 = load i32*, i32** @opaluid, align 8
  %17 = load i64, i64* @OPAL_C_PIN_SID, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %21 = call i32 @memcpy(i32* %13, i32 %19, i32 %20)
  %22 = load %struct.opal_key*, %struct.opal_key** %8, align 8
  %23 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.opal_key*, %struct.opal_key** %8, align 8
  %26 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %29 = call i64 @generic_pw_cmd(i32 %24, i32 %27, i32* %13, %struct.opal_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %37 = load i32, i32* @parse_and_check_status, align 4
  %38 = call i32 @finalize_and_send(%struct.opal_dev* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @generic_pw_cmd(i32, i32, i32*, %struct.opal_dev*) #2

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
