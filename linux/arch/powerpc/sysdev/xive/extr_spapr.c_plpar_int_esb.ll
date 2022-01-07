; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_esb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_plpar_int_esb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"H_INT_ESB flags=%lx lisn=%lx offset=%lx in=%lx\0A\00", align 1
@H_INT_ESB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"H_INT_ESB lisn=%ld offset=%ld returned %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64*)* @plpar_int_esb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plpar_int_esb(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @pr_devel(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i64 %22, i64 %23)
  br label %25

25:                                               ; preds = %32, %5
  %26 = load i32, i32* @H_INT_ESB, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @plpar_hcall(i32 %26, i64* %19, i64 %27, i64 %28, i64 %29, i64 %30)
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @plpar_busy_delay(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %25, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41, i64 %42)
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %49

45:                                               ; preds = %36
  %46 = getelementptr inbounds i64, i64* %19, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = load i64*, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_devel(i8*, i64, i64, i64, i64) #2

declare dso_local i64 @plpar_hcall(i32, i64*, i64, i64, i64, i64) #2

declare dso_local i64 @plpar_busy_delay(i64) #2

declare dso_local i32 @pr_err(i8*, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
