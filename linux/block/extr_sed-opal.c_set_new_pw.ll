; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_new_pw.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_set_new_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_session_info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_C_PIN_ADMIN1 = common dso_local global i64 0, align 8
@OPAL_ADMIN1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error building set password command.\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @set_new_pw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_new_pw(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.opal_session_info*, align 8
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
  %15 = bitcast i8* %14 to %struct.opal_session_info*
  store %struct.opal_session_info* %15, %struct.opal_session_info** %8, align 8
  %16 = load i32*, i32** @opaluid, align 8
  %17 = load i64, i64* @OPAL_C_PIN_ADMIN1, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %21 = call i32 @memcpy(i32* %13, i32 %19, i32 %20)
  %22 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %23 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OPAL_ADMIN1, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %2
  %28 = getelementptr inbounds i32, i32* %13, i64 5
  store i32 3, i32* %28, align 4
  %29 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %30 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %35 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds i32, i32* %13, i64 7
  store i32 %38, i32* %39, align 4
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %42 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds i32, i32* %13, i64 7
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %48 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.opal_session_info*, %struct.opal_session_info** %8, align 8
  %52 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %56 = call i64 @generic_pw_cmd(i32 %50, i32 %54, i32* %13, %struct.opal_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ERANGE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %64 = load i32, i32* @parse_and_check_status, align 4
  %65 = call i32 @finalize_and_send(%struct.opal_dev* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
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
