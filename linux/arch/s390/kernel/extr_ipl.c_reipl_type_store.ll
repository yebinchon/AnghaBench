; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_type_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_type_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPL_CCW_STR = common dso_local global i32 0, align 4
@IPL_TYPE_CCW = common dso_local global i32 0, align 4
@IPL_FCP_STR = common dso_local global i32 0, align 4
@IPL_TYPE_FCP = common dso_local global i32 0, align 4
@IPL_NSS_STR = common dso_local global i32 0, align 4
@IPL_TYPE_NSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @reipl_type_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reipl_type_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* @IPL_CCW_STR, align 4
  %14 = load i32, i32* @IPL_CCW_STR, align 4
  %15 = call i32 @strlen(i32 %14)
  %16 = call i64 @strncmp(i8* %12, i32 %13, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @IPL_TYPE_CCW, align 4
  %20 = call i32 @reipl_set_type(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @IPL_FCP_STR, align 4
  %24 = load i32, i32* @IPL_FCP_STR, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = call i64 @strncmp(i8* %22, i32 %23, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @IPL_TYPE_FCP, align 4
  %30 = call i32 @reipl_set_type(i32 %29)
  store i32 %30, i32* %9, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @IPL_NSS_STR, align 4
  %34 = load i32, i32* @IPL_NSS_STR, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = call i64 @strncmp(i8* %32, i32 %33, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @IPL_TYPE_NSS, align 4
  %40 = call i32 @reipl_set_type(i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  br label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @reipl_set_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
