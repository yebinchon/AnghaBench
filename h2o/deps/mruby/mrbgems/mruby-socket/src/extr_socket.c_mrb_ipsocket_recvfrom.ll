; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_recvfrom.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"i|i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ipsocket_recvfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ipsocket_recvfrom(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @socket_fd(i32* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  store i64 0, i64* %10, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @mrb_get_args(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11, i64* %10)
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @mrb_str_buf_new(i32* %19, i64 %20)
  store i32 %21, i32* %8, align 4
  store i32 4, i32* %6, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @RSTRING_PTR(i32 %23)
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %30 = call i32 @recvfrom(i32 %22, i32 %24, i32 %26, i32 %28, %struct.sockaddr* %29, i32* %6)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @mrb_sys_fail(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %2
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = call i32 @mrb_str_resize(i32* %37, i32 %38, i64 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr*
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sa2addrlist(i32* %42, %struct.sockaddr* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @mrb_ary_new_capa(i32* %46, i32 2)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @mrb_ary_push(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @mrb_ary_push(i32* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i64*) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i64) #1

declare dso_local i32 @recvfrom(i32, i32, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i64) #1

declare dso_local i32 @sa2addrlist(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
