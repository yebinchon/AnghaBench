; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_internal_activate_user.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_internal_activate_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_session_info = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_USER1_UID = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_TRUE = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error building Activate UserN command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @internal_activate_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_activate_user(%struct.opal_dev* %0, i8* %1) #0 {
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
  %17 = load i32*, i32** @opaluid, align 8
  %18 = load i64, i64* @OPAL_USER1_UID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %22 = call i32 @memcpy(i32* %16, i32 %20, i32 %21)
  %23 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %24 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %16, i64 7
  store i32 %25, i32* %26, align 4
  %27 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %28 = load i32*, i32** @opalmethod, align 8
  %29 = load i64, i64* @OPAL_SET, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cmd_start(%struct.opal_dev* %27, i32* %16, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %34 = load i32, i32* @OPAL_STARTNAME, align 4
  %35 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %33, i32 %34)
  %36 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %37 = load i32, i32* @OPAL_VALUES, align 4
  %38 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %36, i32 %37)
  %39 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %40 = load i32, i32* @OPAL_STARTLIST, align 4
  %41 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %39, i32 %40)
  %42 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %43 = load i32, i32* @OPAL_STARTNAME, align 4
  %44 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %42, i32 %43)
  %45 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %46 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %45, i32 5)
  %47 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %48 = load i32, i32* @OPAL_TRUE, align 4
  %49 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %47, i32 %48)
  %50 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %51 = load i32, i32* @OPAL_ENDNAME, align 4
  %52 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %50, i32 %51)
  %53 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %54 = load i32, i32* @OPAL_ENDLIST, align 4
  %55 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %53, i32 %54)
  %56 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %57 = load i32, i32* @OPAL_ENDNAME, align 4
  %58 = call i32 @add_token_u8(i32* %9, %struct.opal_dev* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %2
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

64:                                               ; preds = %2
  %65 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %66 = load i32, i32* @parse_and_check_status, align 4
  %67 = call i32 @finalize_and_send(%struct.opal_dev* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #2

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
