; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__accept.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_core.c_uv__accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__accept.no_accept4 = internal global i32 0, align 4
@UV__SOCK_NONBLOCK = common dso_local global i32 0, align 4
@UV__SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__accept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  br label %10

10:                                               ; preds = %1, %28, %46
  %11 = load i32, i32* @uv__accept.no_accept4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UV__SOCK_NONBLOCK, align 4
  %17 = load i32, i32* @UV__SOCK_CLOEXEC, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @uv__accept4(i32 %15, i32* null, i32* null, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINTR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %10

29:                                               ; preds = %24
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOSYS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = call i32 @UV__ERR(i64 %34)
  store i32 %35, i32* %2, align 4
  br label %67

36:                                               ; preds = %29
  store i32 1, i32* @uv__accept.no_accept4, align 4
  br label %37

37:                                               ; preds = %36, %13
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @accept(i32 %38, i32* null, i32* null)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EINTR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %10

47:                                               ; preds = %42
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @UV__ERR(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %37
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @uv__cloexec(i32 %51, i32 1)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @uv__nonblock(i32 %56, i32 1)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @uv__close(i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %61, %47, %33, %22
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__accept4(i32, i32*, i32*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

declare dso_local i32 @uv__close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
