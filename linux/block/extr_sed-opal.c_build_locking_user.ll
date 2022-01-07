; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_build_locking_user.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_build_locking_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPAL_UID_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Can't build locking range user. Length OOB\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@opaluid = common dso_local global i32* null, align 8
@OPAL_USER1_UID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @build_locking_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_locking_user(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @OPAL_UID_LENGTH, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i64*, i64** %5, align 8
  %17 = load i32*, i32** @opaluid, align 8
  %18 = load i64, i64* @OPAL_USER1_UID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @OPAL_UID_LENGTH, align 8
  %22 = call i32 @memcpy(i64* %16, i32 %20, i64 %21)
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 7
  store i64 %24, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %15, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
