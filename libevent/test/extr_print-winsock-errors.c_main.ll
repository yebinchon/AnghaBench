; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_print-winsock-errors.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_print-winsock-errors.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSAEINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0Aiteration %d:\0A\0A\00", align 1
@WSAEACCES = common dso_local global i32 0, align 4
@WSAEFAULT = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i32 0, align 4
@WSAEMFILE = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4
@WSAEINPROGRESS = common dso_local global i32 0, align 4
@WSAEALREADY = common dso_local global i32 0, align 4
@WSAENOTSOCK = common dso_local global i32 0, align 4
@WSAEDESTADDRREQ = common dso_local global i32 0, align 4
@WSAEMSGSIZE = common dso_local global i32 0, align 4
@WSAEPROTOTYPE = common dso_local global i32 0, align 4
@WSAENOPROTOOPT = common dso_local global i32 0, align 4
@WSAEPROTONOSUPPORT = common dso_local global i32 0, align 4
@WSAESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@WSAEOPNOTSUPP = common dso_local global i32 0, align 4
@WSAEPFNOSUPPORT = common dso_local global i32 0, align 4
@WSAEAFNOSUPPORT = common dso_local global i32 0, align 4
@WSAEADDRINUSE = common dso_local global i32 0, align 4
@WSAEADDRNOTAVAIL = common dso_local global i32 0, align 4
@WSAENETDOWN = common dso_local global i32 0, align 4
@WSAENETUNREACH = common dso_local global i32 0, align 4
@WSAENETRESET = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i32 0, align 4
@WSAECONNRESET = common dso_local global i32 0, align 4
@WSAENOBUFS = common dso_local global i32 0, align 4
@WSAEISCONN = common dso_local global i32 0, align 4
@WSAENOTCONN = common dso_local global i32 0, align 4
@WSAESHUTDOWN = common dso_local global i32 0, align 4
@WSAETIMEDOUT = common dso_local global i32 0, align 4
@WSAECONNREFUSED = common dso_local global i32 0, align 4
@WSAEHOSTDOWN = common dso_local global i32 0, align 4
@WSAEHOSTUNREACH = common dso_local global i32 0, align 4
@WSAEPROCLIM = common dso_local global i32 0, align 4
@WSASYSNOTREADY = common dso_local global i32 0, align 4
@WSAVERNOTSUPPORTED = common dso_local global i32 0, align 4
@WSANOTINITIALISED = common dso_local global i32 0, align 4
@WSAEDISCON = common dso_local global i32 0, align 4
@WSATYPE_NOT_FOUND = common dso_local global i32 0, align 4
@WSAHOST_NOT_FOUND = common dso_local global i32 0, align 4
@WSATRY_AGAIN = common dso_local global i32 0, align 4
@WSANO_RECOVERY = common dso_local global i32 0, align 4
@WSANO_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"caching failed!\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @WSAEINTR, align 4
  %12 = call i8* @evutil_socket_error_to_string(i32 %11)
  store i8* %12, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %117, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %120

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @WSAEINTR, align 4
  %20 = call i32 @E(i32 %19)
  %21 = load i32, i32* @WSAEACCES, align 4
  %22 = call i32 @E(i32 %21)
  %23 = load i32, i32* @WSAEFAULT, align 4
  %24 = call i32 @E(i32 %23)
  %25 = load i32, i32* @WSAEINVAL, align 4
  %26 = call i32 @E(i32 %25)
  %27 = load i32, i32* @WSAEMFILE, align 4
  %28 = call i32 @E(i32 %27)
  %29 = load i32, i32* @WSAEWOULDBLOCK, align 4
  %30 = call i32 @E(i32 %29)
  %31 = load i32, i32* @WSAEINPROGRESS, align 4
  %32 = call i32 @E(i32 %31)
  %33 = load i32, i32* @WSAEALREADY, align 4
  %34 = call i32 @E(i32 %33)
  %35 = load i32, i32* @WSAENOTSOCK, align 4
  %36 = call i32 @E(i32 %35)
  %37 = load i32, i32* @WSAEDESTADDRREQ, align 4
  %38 = call i32 @E(i32 %37)
  %39 = load i32, i32* @WSAEMSGSIZE, align 4
  %40 = call i32 @E(i32 %39)
  %41 = load i32, i32* @WSAEPROTOTYPE, align 4
  %42 = call i32 @E(i32 %41)
  %43 = load i32, i32* @WSAENOPROTOOPT, align 4
  %44 = call i32 @E(i32 %43)
  %45 = load i32, i32* @WSAEPROTONOSUPPORT, align 4
  %46 = call i32 @E(i32 %45)
  %47 = load i32, i32* @WSAESOCKTNOSUPPORT, align 4
  %48 = call i32 @E(i32 %47)
  %49 = load i32, i32* @WSAEOPNOTSUPP, align 4
  %50 = call i32 @E(i32 %49)
  %51 = load i32, i32* @WSAEPFNOSUPPORT, align 4
  %52 = call i32 @E(i32 %51)
  %53 = load i32, i32* @WSAEAFNOSUPPORT, align 4
  %54 = call i32 @E(i32 %53)
  %55 = load i32, i32* @WSAEADDRINUSE, align 4
  %56 = call i32 @E(i32 %55)
  %57 = load i32, i32* @WSAEADDRNOTAVAIL, align 4
  %58 = call i32 @E(i32 %57)
  %59 = load i32, i32* @WSAENETDOWN, align 4
  %60 = call i32 @E(i32 %59)
  %61 = load i32, i32* @WSAENETUNREACH, align 4
  %62 = call i32 @E(i32 %61)
  %63 = load i32, i32* @WSAENETRESET, align 4
  %64 = call i32 @E(i32 %63)
  %65 = load i32, i32* @WSAECONNABORTED, align 4
  %66 = call i32 @E(i32 %65)
  %67 = load i32, i32* @WSAECONNRESET, align 4
  %68 = call i32 @E(i32 %67)
  %69 = load i32, i32* @WSAENOBUFS, align 4
  %70 = call i32 @E(i32 %69)
  %71 = load i32, i32* @WSAEISCONN, align 4
  %72 = call i32 @E(i32 %71)
  %73 = load i32, i32* @WSAENOTCONN, align 4
  %74 = call i32 @E(i32 %73)
  %75 = load i32, i32* @WSAESHUTDOWN, align 4
  %76 = call i32 @E(i32 %75)
  %77 = load i32, i32* @WSAETIMEDOUT, align 4
  %78 = call i32 @E(i32 %77)
  %79 = load i32, i32* @WSAECONNREFUSED, align 4
  %80 = call i32 @E(i32 %79)
  %81 = load i32, i32* @WSAEHOSTDOWN, align 4
  %82 = call i32 @E(i32 %81)
  %83 = load i32, i32* @WSAEHOSTUNREACH, align 4
  %84 = call i32 @E(i32 %83)
  %85 = load i32, i32* @WSAEPROCLIM, align 4
  %86 = call i32 @E(i32 %85)
  %87 = load i32, i32* @WSASYSNOTREADY, align 4
  %88 = call i32 @E(i32 %87)
  %89 = load i32, i32* @WSAVERNOTSUPPORTED, align 4
  %90 = call i32 @E(i32 %89)
  %91 = load i32, i32* @WSANOTINITIALISED, align 4
  %92 = call i32 @E(i32 %91)
  %93 = load i32, i32* @WSAEDISCON, align 4
  %94 = call i32 @E(i32 %93)
  %95 = load i32, i32* @WSATYPE_NOT_FOUND, align 4
  %96 = call i32 @E(i32 %95)
  %97 = load i32, i32* @WSAHOST_NOT_FOUND, align 4
  %98 = call i32 @E(i32 %97)
  %99 = load i32, i32* @WSATRY_AGAIN, align 4
  %100 = call i32 @E(i32 %99)
  %101 = load i32, i32* @WSANO_RECOVERY, align 4
  %102 = call i32 @E(i32 %101)
  %103 = load i32, i32* @WSANO_DATA, align 4
  %104 = call i32 @E(i32 %103)
  %105 = call i32 @E(i32 -559038737)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %113, %16
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 50
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = call i32 @evutil_secure_rng_get_bytes(i32* %10, i32 4)
  %111 = load i32, i32* %10, align 4
  %112 = call i8* @evutil_socket_error_to_string(i32 %111)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %106

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %13

120:                                              ; preds = %13
  %121 = load i32, i32* @WSAEINTR, align 4
  %122 = call i8* @evutil_socket_error_to_string(i32 %121)
  store i8* %122, i8** %9, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = icmp ne i8* %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %120
  %129 = call i32 (...) @libevent_global_shutdown()
  %130 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %130
}

declare dso_local i8* @evutil_socket_error_to_string(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @E(i32) #1

declare dso_local i32 @evutil_secure_rng_get_bytes(i32*, i32) #1

declare dso_local i32 @libevent_global_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
