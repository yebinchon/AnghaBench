; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_getpeername.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_getpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_getpeername to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_getpeername(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @socket_fd(i32* %7, i32 %8)
  %10 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %11 = call i64 @getpeername(i32 %9, %struct.sockaddr* %10, i32* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @mrb_sys_fail(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast %struct.sockaddr_storage* %5 to i8*
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mrb_str_new(i32* %17, i8* %18, i32 %19)
  ret i32 %20
}

declare dso_local i64 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
