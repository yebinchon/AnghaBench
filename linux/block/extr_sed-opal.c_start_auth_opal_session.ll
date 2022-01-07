; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_auth_opal_session.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_auth_opal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_session_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32* }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@GENERIC_HOST_SESSION_NUM = common dso_local global i32 0, align 4
@OPAL_ADMIN1 = common dso_local global i64 0, align 8
@opaluid = common dso_local global i32** null, align 8
@OPAL_ADMIN1_UID = common dso_local global i64 0, align 8
@OPAL_SMUID_UID = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_STARTSESSION = common dso_local global i64 0, align 8
@OPAL_LOCKINGSP_UID = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error building STARTSESSION command.\0A\00", align 1
@start_opal_session_cont = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @start_auth_opal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_auth_opal_session(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opal_session_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.opal_session_info*
  store %struct.opal_session_info* %15, %struct.opal_session_info** %6, align 8
  %16 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %21 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %25 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* @GENERIC_HOST_SESSION_NUM, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %30 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = mul nuw i64 4, %17
  %35 = trunc i64 %34 to i32
  %36 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %37 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @build_locking_user(i32* %19, i32 %35, i64 %39)
  store i32 %40, i32* %10, align 4
  br label %68

41:                                               ; preds = %2
  %42 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %43 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OPAL_ADMIN1, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %49 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = mul nuw i64 4, %17
  %54 = trunc i64 %53 to i32
  %55 = load %struct.opal_session_info*, %struct.opal_session_info** %6, align 8
  %56 = getelementptr inbounds %struct.opal_session_info, %struct.opal_session_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @build_locking_user(i32* %19, i32 %54, i64 %58)
  store i32 %59, i32* %10, align 4
  br label %67

60:                                               ; preds = %47, %41
  %61 = load i32**, i32*** @opaluid, align 8
  %62 = load i64, i64* @OPAL_ADMIN1_UID, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %66 = call i32 @memcpy(i32* %19, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %60, %52
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

73:                                               ; preds = %68
  %74 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %75 = load i32**, i32*** @opaluid, align 8
  %76 = load i64, i64* @OPAL_SMUID_UID, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** @opalmethod, align 8
  %80 = load i64, i64* @OPAL_STARTSESSION, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cmd_start(%struct.opal_dev* %74, i32* %78, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @add_token_u64(i32* %10, %struct.opal_dev* %84, i32 %85)
  %87 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %88 = load i32**, i32*** @opaluid, align 8
  %89 = load i64, i64* @OPAL_LOCKINGSP_UID, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %93 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %87, i32* %91, i32 %92)
  %94 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %95 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %94, i32 1)
  %96 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %97 = load i32, i32* @OPAL_STARTNAME, align 4
  %98 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %96, i32 %97)
  %99 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %100 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %99, i32 0)
  %101 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i64, i64* %9, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %101, i32* %102, i32 %104)
  %106 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %107 = load i32, i32* @OPAL_ENDNAME, align 4
  %108 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %106, i32 %107)
  %109 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %110 = load i32, i32* @OPAL_STARTNAME, align 4
  %111 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %109, i32 %110)
  %112 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %113 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %112, i32 3)
  %114 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %115 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %116 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %114, i32* %19, i32 %115)
  %117 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %118 = load i32, i32* @OPAL_ENDNAME, align 4
  %119 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %117, i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %73
  %123 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

125:                                              ; preds = %73
  %126 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %127 = load i32, i32* @start_opal_session_cont, align 4
  %128 = call i32 @finalize_and_send(%struct.opal_dev* %126, i32 %127)
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

129:                                              ; preds = %125, %122, %71
  %130 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @build_locking_user(i32*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @add_token_u64(i32*, %struct.opal_dev*, i32) #2

declare dso_local i32 @add_token_bytestring(i32*, %struct.opal_dev*, i32*, i32) #2

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
