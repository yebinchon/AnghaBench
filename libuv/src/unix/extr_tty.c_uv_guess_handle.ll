; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_guess_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv_guess_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.stat = type { i32 }

@UV_UNKNOWN_HANDLE = common dso_local global i32 0, align 4
@UV_TTY = common dso_local global i32 0, align 4
@UV_FILE = common dso_local global i32 0, align 4
@UV_NAMED_PIPE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@UV_UDP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@UV_TCP = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_guess_handle(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.sockaddr, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %11, i32* %2, align 4
  br label %109

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @isatty(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @UV_TTY, align 4
  store i32 %17, i32* %2, align 4
  br label %109

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @fstat(i64 %19, %struct.stat* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISREG(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @UV_FILE, align 4
  store i32 %30, i32* %2, align 4
  br label %109

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISCHR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @UV_FILE, align 4
  store i32 %37, i32* %2, align 4
  br label %109

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISFIFO(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @UV_NAMED_PIPE, align 4
  store i32 %44, i32* %2, align 4
  br label %109

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @S_ISSOCK(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %51, i32* %2, align 4
  br label %109

52:                                               ; preds = %45
  store i32 4, i32* %6, align 4
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* @SOL_SOCKET, align 4
  %55 = load i32, i32* @SO_TYPE, align 4
  %56 = call i64 @getsockopt(i64 %53, i32 %54, i32 %55, i32* %7, i32* %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %59, i32* %2, align 4
  br label %109

60:                                               ; preds = %52
  store i32 8, i32* %6, align 4
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @getsockname(i64 %61, %struct.sockaddr* %4, i32* %6)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %65, i32* %2, align 4
  br label %109

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SOCK_DGRAM, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AF_INET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AF_INET6, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @UV_UDP, align 4
  store i32 %81, i32* %2, align 4
  br label %109

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @SOCK_STREAM, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %107

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AF_INET6, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @UV_TCP, align 4
  store i32 %98, i32* %2, align 4
  br label %109

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %4, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AF_UNIX, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @UV_NAMED_PIPE, align 4
  store i32 %105, i32* %2, align 4
  br label %109

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* @UV_UNKNOWN_HANDLE, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %104, %97, %80, %64, %58, %50, %43, %36, %29, %22, %16, %10
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @isatty(i64) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local i64 @getsockopt(i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
