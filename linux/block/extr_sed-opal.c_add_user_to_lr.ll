; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_user_to_lr.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_add_user_to_lr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_lock_unlock = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OPAL_UID_LENGTH = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32** null, align 8
@OPAL_LOCKINGRANGE_ACE_RDLOCKED = common dso_local global i64 0, align 8
@OPAL_RW = common dso_local global i64 0, align 8
@OPAL_LOCKINGRANGE_ACE_WRLOCKED = common dso_local global i64 0, align 8
@OPAL_USER1_UID = common dso_local global i64 0, align 8
@opalmethod = common dso_local global i32* null, align 8
@OPAL_SET = common dso_local global i64 0, align 8
@OPAL_STARTNAME = common dso_local global i32 0, align 4
@OPAL_VALUES = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_HALF_UID_AUTHORITY_OBJ_REF = common dso_local global i64 0, align 8
@OPAL_ENDNAME = common dso_local global i32 0, align 4
@OPAL_HALF_UID_BOOLEAN_ACE = common dso_local global i64 0, align 8
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error building add user to locking range command.\0A\00", align 1
@parse_and_check_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @add_user_to_lr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_user_to_lr(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.opal_lock_unlock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.opal_lock_unlock*
  store %struct.opal_lock_unlock* %20, %struct.opal_lock_unlock** %9, align 8
  %21 = load i32**, i32*** @opaluid, align 8
  %22 = load i64, i64* @OPAL_LOCKINGRANGE_ACE_RDLOCKED, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %26 = call i32 @memcpy(i32* %15, i32* %24, i32 %25)
  %27 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %9, align 8
  %28 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OPAL_RW, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32**, i32*** @opaluid, align 8
  %34 = load i64, i64* @OPAL_LOCKINGRANGE_ACE_WRLOCKED, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %38 = call i32 @memcpy(i32* %15, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %9, align 8
  %41 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %15, i64 7
  store i32 %44, i32* %45, align 4
  %46 = load i32**, i32*** @opaluid, align 8
  %47 = load i64, i64* @OPAL_USER1_UID, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %51 = call i32 @memcpy(i32* %18, i32* %49, i32 %50)
  %52 = load %struct.opal_lock_unlock*, %struct.opal_lock_unlock** %9, align 8
  %53 = getelementptr inbounds %struct.opal_lock_unlock, %struct.opal_lock_unlock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds i32, i32* %18, i64 7
  store i32 %55, i32* %56, align 4
  %57 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %58 = load i32*, i32** @opalmethod, align 8
  %59 = load i64, i64* @OPAL_SET, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cmd_start(%struct.opal_dev* %57, i32* %15, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %64 = load i32, i32* @OPAL_STARTNAME, align 4
  %65 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %63, i32 %64)
  %66 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %67 = load i32, i32* @OPAL_VALUES, align 4
  %68 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %66, i32 %67)
  %69 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %70 = load i32, i32* @OPAL_STARTLIST, align 4
  %71 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %69, i32 %70)
  %72 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %73 = load i32, i32* @OPAL_STARTNAME, align 4
  %74 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %72, i32 %73)
  %75 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %76 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %75, i32 3)
  %77 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %78 = load i32, i32* @OPAL_STARTLIST, align 4
  %79 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %77, i32 %78)
  %80 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %81 = load i32, i32* @OPAL_STARTNAME, align 4
  %82 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %80, i32 %81)
  %83 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %84 = load i32**, i32*** @opaluid, align 8
  %85 = load i64, i64* @OPAL_HALF_UID_AUTHORITY_OBJ_REF, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %89 = sdiv i32 %88, 2
  %90 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %83, i32* %87, i32 %89)
  %91 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %92 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %93 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %91, i32* %18, i32 %92)
  %94 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %95 = load i32, i32* @OPAL_ENDNAME, align 4
  %96 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %94, i32 %95)
  %97 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %98 = load i32, i32* @OPAL_STARTNAME, align 4
  %99 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %97, i32 %98)
  %100 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %101 = load i32**, i32*** @opaluid, align 8
  %102 = load i64, i64* @OPAL_HALF_UID_AUTHORITY_OBJ_REF, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %106 = sdiv i32 %105, 2
  %107 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %100, i32* %104, i32 %106)
  %108 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %109 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %110 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %108, i32* %18, i32 %109)
  %111 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %112 = load i32, i32* @OPAL_ENDNAME, align 4
  %113 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %111, i32 %112)
  %114 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %115 = load i32, i32* @OPAL_STARTNAME, align 4
  %116 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %114, i32 %115)
  %117 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %118 = load i32**, i32*** @opaluid, align 8
  %119 = load i64, i64* @OPAL_HALF_UID_BOOLEAN_ACE, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @OPAL_UID_LENGTH, align 4
  %123 = sdiv i32 %122, 2
  %124 = call i32 @add_token_bytestring(i32* %10, %struct.opal_dev* %117, i32* %121, i32 %123)
  %125 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %126 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %125, i32 1)
  %127 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %128 = load i32, i32* @OPAL_ENDNAME, align 4
  %129 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %127, i32 %128)
  %130 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %131 = load i32, i32* @OPAL_ENDLIST, align 4
  %132 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %130, i32 %131)
  %133 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %134 = load i32, i32* @OPAL_ENDNAME, align 4
  %135 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %133, i32 %134)
  %136 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %137 = load i32, i32* @OPAL_ENDLIST, align 4
  %138 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %136, i32 %137)
  %139 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %140 = load i32, i32* @OPAL_ENDNAME, align 4
  %141 = call i32 @add_token_u8(i32* %10, %struct.opal_dev* %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %39
  %145 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %151

147:                                              ; preds = %39
  %148 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %149 = load i32, i32* @parse_and_check_status, align 4
  %150 = call i32 @finalize_and_send(%struct.opal_dev* %148, i32 %149)
  store i32 %150, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cmd_start(%struct.opal_dev*, i32*, i32) #2

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
