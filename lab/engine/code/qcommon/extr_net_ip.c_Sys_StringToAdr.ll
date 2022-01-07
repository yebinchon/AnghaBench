; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_StringToAdr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_Sys_StringToAdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_StringToAdr(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @AF_INET, align 4
  store i32 %12, i32* %9, align 4
  br label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @AF_INET6, align 4
  store i32 %14, i32* %9, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @Sys_StringToSockaddr(i8* %18, %struct.sockaddr* %19, i32 4, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @qfalse, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %17
  %26 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @SockadrToNetadr(%struct.sockaddr* %26, i32* %27)
  %29 = load i32, i32* @qtrue, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @Sys_StringToSockaddr(i8*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @SockadrToNetadr(%struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
