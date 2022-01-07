; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_lock_unlock_locking_range.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_lock_unlock_locking_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lock_unlock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Tried to set an invalid locking state... returning to uland\0A\00", align 1
@OPAL_INVAL_PARAM = common dso_local global i32 0, align 4
@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_READLOCKED = common dso_local global i32 0, align 4
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_WRITELOCKED = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error building SET command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @lock_unlock_locking_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_unlock_locking_range(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.opal_lock_unlock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.opal_lock_unlock*
  store %struct.opal_lock_unlock* %18, %struct.opal_lock_unlock** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = mul nuw i64 4, %14
  %20 = trunc i64 %19 to i32
  %21 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %8, align 8
  %22 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @build_locking_range(i32* %16, i32 %20, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

31:                                               ; preds = %2
  %32 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %8, align 8
  %33 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 129, label %35
    i32 128, label %36
    i32 130, label %37
  ]

35:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %41

36:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %41

37:                                               ; preds = %31
  br label %41

38:                                               ; preds = %31
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @OPAL_INVAL_PARAM, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

41:                                               ; preds = %37, %36, %35
  %42 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %43 = load i32*, i32** @opalmethod, align 8
  %44 = load i64, i64* @OPAL_SET, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cmd_start(%struct.opal_dev* %42, i32* %16, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %49 = load i32, i32* @OPAL_STARTNAME, align 4
  %50 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %48, i32 %49)
  %51 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %52 = load i32, i32* @OPAL_VALUES, align 4
  %53 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %51, i32 %52)
  %54 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %55 = load i32, i32* @OPAL_STARTLIST, align 4
  %56 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %54, i32 %55)
  %57 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %58 = load i32, i32* @OPAL_STARTNAME, align 4
  %59 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %57, i32 %58)
  %60 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %61 = load i32, i32* @OPAL_READLOCKED, align 4
  %62 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %60, i32 %61)
  %63 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %63, i32 %64)
  %66 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %67 = load i32, i32* @OPAL_ENDNAME, align 4
  %68 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %66, i32 %67)
  %69 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %70 = load i32, i32* @OPAL_STARTNAME, align 4
  %71 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %69, i32 %70)
  %72 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %73 = load i32, i32* @OPAL_WRITELOCKED, align 4
  %74 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %72, i32 %73)
  %75 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %75, i32 %76)
  %78 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %79 = load i32, i32* @OPAL_ENDNAME, align 4
  %80 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %78, i32 %79)
  %81 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %82 = load i32, i32* @OPAL_ENDLIST, align 4
  %83 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %81, i32 %82)
  %84 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %85 = load i32, i32* @OPAL_ENDNAME, align 4
  %86 = call i32 @add_token_u8(i32* %11, %struct.opal_dev* %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %41
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

92:                                               ; preds = %41
  %93 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %94 = load i32, i32* @parse_and_check_status, align 4
  %95 = call i32 @finalize_and_send(%struct.opal_dev* %93, i32 %94)
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %92, %89, %38, %28
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @build_locking_range(i32*, i32, i32) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #2

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
