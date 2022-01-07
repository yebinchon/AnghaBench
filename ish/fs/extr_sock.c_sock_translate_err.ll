; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_translate_err.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sock_translate_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.sockaddr = type { i32 }

@_ENOTCONN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@_ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fd*, i32*)* @sock_translate_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sock_translate_err(%struct.fd* %0, i32* %1) #0 {
  %3 = alloca %struct.fd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @_ENOTCONN, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %12 = load %struct.fd*, %struct.fd** %3, align 8
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @getpeername(i32 %14, %struct.sockaddr* %5, i32* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINVAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @_ECONNRESET, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %17, %11
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
