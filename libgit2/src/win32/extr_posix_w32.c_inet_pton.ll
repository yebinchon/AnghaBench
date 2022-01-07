; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_inet_pton.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_inet_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_inet_pton(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AF_INET, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %9, align 8
  store i32 4, i32* %11, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AF_INET6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %25, i32 0, i32 0
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %9, align 8
  store i32 4, i32* %11, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = ptrtoint %struct.sockaddr_storage* %8 to i32
  %36 = call i32 @WSAStringToAddressA(i32 %33, i32 %34, i32* null, i32 %35, i32* %10)
  store i32 %36, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  store i32 1, i32* %4, align 4
  br label %52

43:                                               ; preds = %31
  %44 = call i32 (...) @WSAGetLastError()
  switch i32 %44, label %50 [
    i32 129, label %45
    i32 130, label %46
    i32 128, label %48
  ]

45:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @ENOSPC, align 4
  store i32 %47, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48, %46, %45, %38, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @WSAStringToAddressA(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
