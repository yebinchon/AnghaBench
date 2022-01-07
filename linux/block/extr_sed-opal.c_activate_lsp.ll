; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_activate_lsp.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_activate_lsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lr_act = type { i32*, i32, i64 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_LOCKINGSP_UID = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_ACTIVATE = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error building Activate LockingSP command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @activate_lsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_lsp(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opal_lr_act*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.opal_lr_act*
  store %struct.opal_lr_act* %14, %struct.opal_lr_act** %6, align 8
  %15 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 131, i32* %9, align 4
  %19 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %20 = load i32*, i32** @opaluid, align 8
  %21 = load i64, i64* @OPAL_LOCKINGSP_UID, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @opalmethod, align 8
  %25 = load i64, i64* @OPAL_ACTIVATE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cmd_start(%struct.opal_dev* %19, i32 %23, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.opal_lr_act*, %struct.opal_lr_act** %6, align 8
  %30 = getelementptr inbounds %struct.opal_lr_act, %struct.opal_lr_act* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %2
  %34 = mul nuw i64 4, %16
  %35 = trunc i64 %34 to i32
  %36 = load %struct.opal_lr_act*, %struct.opal_lr_act** %6, align 8
  %37 = getelementptr inbounds %struct.opal_lr_act, %struct.opal_lr_act* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @build_locking_range(i32* %18, i32 %35, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %103

46:                                               ; preds = %33
  %47 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %48 = load i32, i32* @OPAL_STARTNAME, align 4
  %49 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %47, i32 %48)
  %50 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %50, i32 %51)
  %53 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %54 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %53, i32 6)
  %55 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %56 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %55, i32 0)
  %57 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %58 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %57, i32 0)
  %59 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %60 = load i32, i32* @OPAL_STARTLIST, align 4
  %61 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %59, i32 %60)
  %62 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %63 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %64 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %62, i32* %18, i32 %63)
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %83, %46
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.opal_lr_act*, %struct.opal_lr_act** %6, align 8
  %68 = getelementptr inbounds %struct.opal_lr_act, %struct.opal_lr_act* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.opal_lr_act*, %struct.opal_lr_act** %6, align 8
  %73 = getelementptr inbounds %struct.opal_lr_act, %struct.opal_lr_act* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds i32, i32* %18, i64 7
  store i32 %78, i32* %79, align 4
  %80 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %81 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %82 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %80, i32* %18, i32 %81)
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %65

86:                                               ; preds = %65
  %87 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %88 = load i32, i32* @OPAL_ENDLIST, align 4
  %89 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %87, i32 %88)
  %90 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %91 = load i32, i32* @OPAL_ENDNAME, align 4
  %92 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %2
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %103

99:                                               ; preds = %93
  %100 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %101 = load i32, i32* @parse_and_check_status, align 4
  %102 = call i32 @finalize_and_send(%struct.opal_dev* %100, i32 %101)
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %96, %44
  %104 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32, i32) #2

declare dso_local i32 @build_locking_range(i32*, i32, i32) #2

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #2

declare dso_local i32 @add_token_bytestring(i32*, %struct.opal_dev*, i32*, i32) #2

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
