; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__dup2_cloexec.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__dup2_cloexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__dup2_cloexec.no_dup3 = internal global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@F_DUP2FD_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__dup2_cloexec(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @uv__dup2_cloexec.no_dup3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = call i32 @uv__dup3(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EBUSY, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %11, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOSYS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @UV__ERR(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %30
  store i32 1, i32* @uv__dup2_cloexec.no_dup3, align 4
  br label %38

38:                                               ; preds = %37, %2
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dup2(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @errno, align 8
  %48 = load i64, i64* @EBUSY, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %39, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @errno, align 8
  %57 = call i32 @UV__ERR(i64 %56)
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @uv__cloexec(i32 %59, i32 1)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @uv__close(i32 %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %63, %55, %34, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @uv__dup3(i32, i32, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @uv__close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
