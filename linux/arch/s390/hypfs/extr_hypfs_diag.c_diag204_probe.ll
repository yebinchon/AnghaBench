; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_diag204_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_diag.c_diag204_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIAG204_INFO_EXT = common dso_local global i64 0, align 8
@DIAG204_SUBC_STIB7 = common dso_local global i64 0, align 8
@diag204_store_sc = common dso_local global i64 0, align 8
@diag204_info_type = common dso_local global i64 0, align 8
@DIAG204_SUBC_STIB6 = common dso_local global i64 0, align 8
@DIAG204_INFO_SIMPLE = common dso_local global i64 0, align 8
@DIAG204_SUBC_STIB4 = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @diag204_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diag204_probe() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %5 = call i8* @diag204_get_buffer(i64 %4, i32* %2)
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i64 @IS_ERR(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* @DIAG204_SUBC_STIB7, align 8
  %11 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %12 = or i64 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i64 @diag204(i64 %12, i32 %13, i8* %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i64, i64* @DIAG204_SUBC_STIB7, align 8
  store i64 %18, i64* @diag204_store_sc, align 8
  %19 = load i64, i64* @DIAG204_INFO_EXT, align 8
  store i64 %19, i64* @diag204_info_type, align 8
  br label %56

20:                                               ; preds = %9
  %21 = load i64, i64* @DIAG204_SUBC_STIB6, align 8
  %22 = load i64, i64* @DIAG204_INFO_EXT, align 8
  %23 = or i64 %21, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i8*, i8** %1, align 8
  %26 = call i64 @diag204(i64 %23, i32 %24, i8* %25)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @DIAG204_SUBC_STIB6, align 8
  store i64 %29, i64* @diag204_store_sc, align 8
  %30 = load i64, i64* @DIAG204_INFO_EXT, align 8
  store i64 %30, i64* @diag204_info_type, align 8
  br label %56

31:                                               ; preds = %20
  %32 = call i32 (...) @diag204_free_buffer()
  br label %33

33:                                               ; preds = %31, %0
  %34 = load i64, i64* @DIAG204_INFO_SIMPLE, align 8
  %35 = call i8* @diag204_get_buffer(i64 %34, i32* %2)
  store i8* %35, i8** %1, align 8
  %36 = load i8*, i8** %1, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %33
  %43 = load i64, i64* @DIAG204_SUBC_STIB4, align 8
  %44 = load i64, i64* @DIAG204_INFO_SIMPLE, align 8
  %45 = or i64 %43, %44
  %46 = load i32, i32* %2, align 4
  %47 = load i8*, i8** %1, align 8
  %48 = call i64 @diag204(i64 %45, i32 %46, i8* %47)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* @DIAG204_SUBC_STIB4, align 8
  store i64 %51, i64* @diag204_store_sc, align 8
  %52 = load i64, i64* @DIAG204_INFO_SIMPLE, align 8
  store i64 %52, i64* @diag204_info_type, align 8
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOSYS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %50, %28, %17
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = call i32 (...) @diag204_free_buffer()
  br label %59

59:                                               ; preds = %57, %39
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @diag204_get_buffer(i64, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @diag204(i64, i32, i8*) #1

declare dso_local i32 @diag204_free_buffer(...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
