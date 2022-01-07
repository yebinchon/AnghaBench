; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_get_source_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_get_source_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_INT_GET_SOURCE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"H_INT_GET_SOURCE_INFO lisn=%ld failed %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"H_INT_GET_SOURCE_INFO flags=%lx eoi=%lx trig=%lx shift=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64*, i64*, i64*, i64*)* @plpar_int_get_source_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plpar_int_get_source_info(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  br label %22

22:                                               ; preds = %27, %6
  %23 = load i32, i32* @H_INT_GET_SOURCE_INFO, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @plpar_hcall(i32 %23, i64* %21, i64 %24, i64 %25)
  store i64 %26, i64* %16, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i64, i64* %16, align 8
  %29 = call i64 @plpar_busy_delay(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %22, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %16, align 8
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i64, i64* %16, align 8
  store i64 %38, i64* %7, align 8
  store i32 1, i32* %17, align 4
  br label %61

39:                                               ; preds = %31
  %40 = getelementptr inbounds i64, i64* %21, i64 0
  %41 = load i64, i64* %40, align 16
  %42 = load i64*, i64** %10, align 8
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds i64, i64* %21, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds i64, i64* %21, i64 2
  %47 = load i64, i64* %46, align 16
  %48 = load i64*, i64** %12, align 8
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %21, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %13, align 8
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds i64, i64* %21, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds i64, i64* %21, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %21, i64 2
  %57 = load i64, i64* %56, align 16
  %58 = getelementptr inbounds i64, i64* %21, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pr_devel(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %55, i64 %57, i64 %59)
  store i64 0, i64* %7, align 8
  store i32 1, i32* %17, align 4
  br label %61

61:                                               ; preds = %39, %34
  %62 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall(i32, i64*, i64, i64) #2

declare dso_local i64 @plpar_busy_delay(i64) #2

declare dso_local i32 @pr_err(i8*, i64, i64) #2

declare dso_local i32 @pr_devel(i8*, i64, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
