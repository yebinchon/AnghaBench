; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__nonblock_fcntl.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__nonblock_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__nonblock_fcntl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @F_GETFL, align 4
  %11 = call i32 (i32, i32, ...) @fcntl(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EINTR, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %8, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @UV__ERR(i64 %25)
  store i32 %26, i32* %3, align 4
  br label %76

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %76

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @O_NONBLOCK, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @O_NONBLOCK, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @F_SETFL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i32, ...) @fcntl(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @EINTR, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %55, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* @errno, align 8
  %74 = call i32 @UV__ERR(i64 %73)
  store i32 %74, i32* %3, align 4
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72, %41, %24
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
