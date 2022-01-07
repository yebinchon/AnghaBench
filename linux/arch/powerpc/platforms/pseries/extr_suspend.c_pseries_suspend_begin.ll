; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_suspend.c_pseries_suspend_begin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_suspend.c_pseries_suspend_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_VASI_STATE = common dso_local global i32 0, align 4
@stream_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"pseries_suspend_begin: vasi_state returned %ld\0A\00", align 1
@H_VASI_ENABLED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@H_VASI_SUSPENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"pseries_suspend_begin: vasi_state returned state %ld\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pseries_suspend_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_suspend_begin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i64, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @H_VASI_STATE, align 4
  %14 = load i32, i32* @stream_id, align 4
  %15 = call i64 @plpar_hcall(i32 %13, i64* %12, i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 0
  %17 = load i64, i64* %16, align 16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @H_VASI_ENABLED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @H_VASI_SUSPENDING, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %36, %29, %20
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall(i32, i64*, i32) #2

declare dso_local i32 @pr_err(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
