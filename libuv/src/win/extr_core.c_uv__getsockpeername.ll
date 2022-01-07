; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__getsockpeername.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv__getsockpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type opaque
%struct.sockaddr.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__getsockpeername(i32* %0, i32 (i32, %struct.sockaddr*, i32*)* %1, %struct.sockaddr.0* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32, %struct.sockaddr*, i32*)*, align 8
  %9 = alloca %struct.sockaddr.0*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 (i32, %struct.sockaddr*, i32*)* %1, i32 (i32, %struct.sockaddr*, i32*)** %8, align 8
  store %struct.sockaddr.0* %2, %struct.sockaddr.0** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @uv_fileno(i32* %14, i64* %13)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @uv_translate_sys_error(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i32 (i32, %struct.sockaddr*, i32*)*, i32 (i32, %struct.sockaddr*, i32*)** %8, align 8
  %28 = load i64, i64* %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.sockaddr.0*, %struct.sockaddr.0** %9, align 8
  %31 = bitcast %struct.sockaddr.0* %30 to %struct.sockaddr*
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 %27(i32 %29, %struct.sockaddr* %31, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = call i32 (...) @WSAGetLastError()
  %38 = call i32 @uv_translate_sys_error(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %36, %23, %18
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @uv_fileno(i32*, i64*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
