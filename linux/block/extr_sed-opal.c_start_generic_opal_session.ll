; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_generic_opal_session.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_generic_opal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@OPAL_INVAL_PARAM = common dso_local global i32 0, align 4
@GENERIC_HOST_SESSION_NUM = common dso_local global i32 0, align 4
@opaluid = common dso_local global i8** null, align 8
@OPAL_SMUID_UID = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_STARTSESSION = common dso_local global i64 0, align 8
@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot start Admin SP session with auth %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Error building start adminsp session command.\0A\00", align 1
@start_opal_session_cont = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32, i32, i8*, i32)* @start_generic_opal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_generic_opal_session(%struct.opal_dev* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 130
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @OPAL_INVAL_PARAM, align 4
  store i32 %20, i32* %6, align 4
  br label %91

21:                                               ; preds = %16, %5
  %22 = load i32, i32* @GENERIC_HOST_SESSION_NUM, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %24 = load i8**, i8*** @opaluid, align 8
  %25 = load i64, i64* @OPAL_SMUID_UID, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load i32*, i32** @opalmethod, align 8
  %29 = load i64, i64* @OPAL_STARTSESSION, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cmd_start(%struct.opal_dev* %23, i8* %27, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @add_token_u64(i32* %13, %struct.opal_dev* %33, i32 %34)
  %36 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %37 = load i8**, i8*** @opaluid, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %43 = call i32 @add_token_bytestring(i32* %13, %struct.opal_dev* %36, i8* %41, i32 %42)
  %44 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %45 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %44, i32 1)
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %77 [
    i32 130, label %47
    i32 131, label %48
    i32 128, label %48
    i32 129, label %48
  ]

47:                                               ; preds = %21
  br label %81

48:                                               ; preds = %21, %21, %21
  %49 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %50 = load i32, i32* @OPAL_STARTNAME, align 4
  %51 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %49, i32 %50)
  %52 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %53 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %52, i32 0)
  %54 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @add_token_bytestring(i32* %13, %struct.opal_dev* %54, i8* %55, i32 %56)
  %58 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %59 = load i32, i32* @OPAL_ENDNAME, align 4
  %60 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %58, i32 %59)
  %61 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %62 = load i32, i32* @OPAL_STARTNAME, align 4
  %63 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %61, i32 %62)
  %64 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %65 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %64, i32 3)
  %66 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %67 = load i8**, i8*** @opaluid, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %73 = call i32 @add_token_bytestring(i32* %13, %struct.opal_dev* %66, i8* %71, i32 %72)
  %74 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %75 = load i32, i32* @OPAL_ENDNAME, align 4
  %76 = call i32 @add_token_u8(i32* %13, %struct.opal_dev* %74, i32 %75)
  br label %81

77:                                               ; preds = %21
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @OPAL_INVAL_PARAM, align 4
  store i32 %80, i32* %6, align 4
  br label %91

81:                                               ; preds = %48, %47
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %91

87:                                               ; preds = %81
  %88 = load %struct.opal_dev*, %struct.opal_dev** %7, align 8
  %89 = load i32, i32* @start_opal_session_cont, align 4
  %90 = call i32 @finalize_and_send(%struct.opal_dev* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %84, %77, %19
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @cmd_start(%struct.opal_dev*, i8*, i32) #1

declare dso_local i32 @add_token_u64(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @add_token_bytestring(i32*, %struct.opal_dev*, i8*, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
