; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_winsock.c_uv_ntstatus_to_winsock_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_winsock.c_uv_ntstatus_to_winsock_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_IO_PENDING = common dso_local global i32 0, align 4
@WSAENOTSOCK = common dso_local global i32 0, align 4
@WSAENOBUFS = common dso_local global i32 0, align 4
@WSAEADDRINUSE = common dso_local global i32 0, align 4
@WSAETIMEDOUT = common dso_local global i32 0, align 4
@WSAEDISCON = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WSAENETUNREACH = common dso_local global i32 0, align 4
@WSAEHOSTUNREACH = common dso_local global i32 0, align 4
@WSAEINTR = common dso_local global i32 0, align 4
@WSAEMSGSIZE = common dso_local global i32 0, align 4
@WSAEFAULT = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAENETDOWN = common dso_local global i32 0, align 4
@WSAENOTCONN = common dso_local global i32 0, align 4
@WSAECONNREFUSED = common dso_local global i32 0, align 4
@WSAESHUTDOWN = common dso_local global i32 0, align 4
@WSAEADDRNOTAVAIL = common dso_local global i32 0, align 4
@WSAEOPNOTSUPP = common dso_local global i32 0, align 4
@WSAEACCES = common dso_local global i32 0, align 4
@FACILITY_NTWIN32 = common dso_local global i32 0, align 4
@ERROR_SEVERITY_ERROR = common dso_local global i32 0, align 4
@ERROR_SEVERITY_WARNING = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_ntstatus_to_winsock_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %49 [
    i32 134, label %5
    i32 145, label %7
    i32 162, label %9
    i32 147, label %9
    i32 167, label %11
    i32 146, label %11
    i32 177, label %11
    i32 128, label %11
    i32 152, label %11
    i32 141, label %11
    i32 131, label %11
    i32 138, label %11
    i32 132, label %13
    i32 135, label %13
    i32 182, label %13
    i32 158, label %15
    i32 160, label %15
    i32 133, label %15
    i32 170, label %17
    i32 140, label %19
    i32 172, label %19
    i32 159, label %19
    i32 174, label %19
    i32 143, label %19
    i32 169, label %19
    i32 157, label %21
    i32 130, label %21
    i32 175, label %21
    i32 181, label %23
    i32 155, label %23
    i32 142, label %23
    i32 168, label %25
    i32 178, label %27
    i32 137, label %27
    i32 180, label %29
    i32 164, label %29
    i32 179, label %31
    i32 183, label %31
    i32 171, label %33
    i32 136, label %33
    i32 161, label %35
    i32 156, label %35
    i32 151, label %35
    i32 150, label %35
    i32 148, label %35
    i32 149, label %35
    i32 129, label %35
    i32 163, label %37
    i32 139, label %39
    i32 173, label %39
    i32 144, label %41
    i32 176, label %43
    i32 166, label %43
    i32 165, label %43
    i32 153, label %45
    i32 154, label %45
    i32 184, label %47
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %6, i32* %2, align 4
  br label %69

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR_IO_PENDING, align 4
  store i32 %8, i32* %2, align 4
  br label %69

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @WSAENOTSOCK, align 4
  store i32 %10, i32* %2, align 4
  br label %69

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %12 = load i32, i32* @WSAENOBUFS, align 4
  store i32 %12, i32* %2, align 4
  br label %69

13:                                               ; preds = %1, %1, %1
  %14 = load i32, i32* @WSAEADDRINUSE, align 4
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %1, %1, %1
  %16 = load i32, i32* @WSAETIMEDOUT, align 4
  store i32 %16, i32* %2, align 4
  br label %69

17:                                               ; preds = %1
  %18 = load i32, i32* @WSAEDISCON, align 4
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1, %1, %1, %1, %1, %1
  %20 = load i32, i32* @WSAECONNRESET, align 4
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1, %1, %1
  %22 = load i32, i32* @WSAECONNABORTED, align 4
  store i32 %22, i32* %2, align 4
  br label %69

23:                                               ; preds = %1, %1, %1
  %24 = load i32, i32* @WSAENETUNREACH, align 4
  store i32 %24, i32* %2, align 4
  br label %69

25:                                               ; preds = %1
  %26 = load i32, i32* @WSAEHOSTUNREACH, align 4
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %1, %1
  %28 = load i32, i32* @WSAEINTR, align 4
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %1, %1
  %30 = load i32, i32* @WSAEMSGSIZE, align 4
  store i32 %30, i32* %2, align 4
  br label %69

31:                                               ; preds = %1, %1
  %32 = load i32, i32* @WSAEFAULT, align 4
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %1, %1
  %34 = load i32, i32* @WSAEWOULDBLOCK, align 4
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %36 = load i32, i32* @WSAENETDOWN, align 4
  store i32 %36, i32* %2, align 4
  br label %69

37:                                               ; preds = %1
  %38 = load i32, i32* @WSAENOTCONN, align 4
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %1, %1
  %40 = load i32, i32* @WSAECONNREFUSED, align 4
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %1
  %42 = load i32, i32* @WSAESHUTDOWN, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %1, %1, %1
  %44 = load i32, i32* @WSAEADDRNOTAVAIL, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %1, %1
  %46 = load i32, i32* @WSAEOPNOTSUPP, align 4
  store i32 %46, i32* %2, align 4
  br label %69

47:                                               ; preds = %1
  %48 = load i32, i32* @WSAEACCES, align 4
  store i32 %48, i32* %2, align 4
  br label %69

49:                                               ; preds = %1
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @FACILITY_NTWIN32, align 4
  %52 = shl i32 %51, 16
  %53 = and i32 %50, %52
  %54 = load i32, i32* @FACILITY_NTWIN32, align 4
  %55 = shl i32 %54, 16
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @ERROR_SEVERITY_ERROR, align 4
  %60 = load i32, i32* @ERROR_SEVERITY_WARNING, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %57, %49
  %68 = load i32, i32* @WSAEINVAL, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %64, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
