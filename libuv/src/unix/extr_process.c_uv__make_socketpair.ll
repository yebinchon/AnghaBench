; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__make_socketpair.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__make_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv__make_socketpair.no_cloexec = internal global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@UV__SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@UV__F_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__make_socketpair(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @uv__make_socketpair.no_cloexec, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load i32, i32* @AF_UNIX, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = load i32, i32* @UV__SOCK_CLOEXEC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @socketpair(i32 %10, i32 %15, i32 0, i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %60

20:                                               ; preds = %9
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EINVAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = call i32 @UV__ERR(i64 %25)
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %20
  store i32 1, i32* @uv__make_socketpair.no_cloexec, align 4
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i32, i32* @AF_UNIX, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @socketpair(i32 %29, i32 %30, i32 0, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 @UV__ERR(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @uv__cloexec(i32 %40, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @uv__cloexec(i32 %44, i32 1)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UV__F_NONBLOCK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uv__nonblock(i32 %53, i32 1)
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @uv__nonblock(i32 %57, i32 1)
  br label %59

59:                                               ; preds = %50, %37
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %34, %24, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__cloexec(i32, i32) #1

declare dso_local i32 @uv__nonblock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
