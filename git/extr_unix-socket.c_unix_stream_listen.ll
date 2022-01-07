; ModuleID = '/home/carl/AnghaBench/git/extr_unix-socket.c_unix_stream_listen.c'
source_filename = "/home/carl/AnghaBench/git/extr_unix-socket.c_unix_stream_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32 }
%struct.unix_sockaddr_context = type { i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix_stream_listen(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca %struct.unix_sockaddr_context, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @unlink(i8* %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @unix_sockaddr_init(%struct.sockaddr_un* %6, i8* %10, %struct.unix_sockaddr_context* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = call i32 (...) @unix_stream_socket()
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %18 = call i64 @bind(i32 %16, %struct.sockaddr* %17, i32 4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @listen(i32 %22, i32 5)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %29

26:                                               ; preds = %21
  %27 = call i32 @unix_sockaddr_cleanup(%struct.unix_sockaddr_context* %7)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %5, align 4
  %31 = call i32 @unix_sockaddr_cleanup(%struct.unix_sockaddr_context* %7)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %26, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @unix_sockaddr_init(%struct.sockaddr_un*, i8*, %struct.unix_sockaddr_context*) #1

declare dso_local i32 @unix_stream_socket(...) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @unix_sockaddr_cleanup(%struct.unix_sockaddr_context*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
