; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_uptime.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmp = type { i64, i64, i64* }

@UTMP_FILE = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@BOOT_TIME = common dso_local global i64 0, align 8
@UV_ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_uptime(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca %struct.utmp*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @UTMP_FILE, align 4
  %8 = call i32 @utmpname(i32 %7)
  %9 = call i32 (...) @setutent()
  br label %10

10:                                               ; preds = %39, %1
  %11 = call %struct.utmp* (...) @getutent()
  store %struct.utmp* %11, %struct.utmp** %4, align 8
  %12 = icmp ne %struct.utmp* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.utmp*, %struct.utmp** %4, align 8
  %15 = getelementptr inbounds %struct.utmp, %struct.utmp* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.utmp*, %struct.utmp** %4, align 8
  %22 = getelementptr inbounds %struct.utmp, %struct.utmp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USER_PROCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %20, %13
  %30 = load %struct.utmp*, %struct.utmp** %4, align 8
  %31 = getelementptr inbounds %struct.utmp, %struct.utmp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BOOT_TIME, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.utmp*, %struct.utmp** %4, align 8
  %37 = getelementptr inbounds %struct.utmp, %struct.utmp* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %29
  br label %10

40:                                               ; preds = %10
  %41 = call i32 (...) @endutent()
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %40
  %47 = call i64 @time(i32* null)
  %48 = load i64, i64* %6, align 8
  %49 = sub nsw i64 %47, %48
  %50 = sitofp i64 %49 to double
  %51 = load double*, double** %3, align 8
  store double %50, double* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %44
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @utmpname(i32) #1

declare dso_local i32 @setutent(...) #1

declare dso_local %struct.utmp* @getutent(...) #1

declare dso_local i32 @endutent(...) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
