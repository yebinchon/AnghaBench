; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_sockaddr_un.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_sockaddr_un.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"too long unix socket path (max: %S bytes)\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_socket_sockaddr_un to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_socket_sockaddr_un(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @RSTRING_LEN(i32 %10)
  %12 = icmp ugt i64 %11, 7
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %16 = call i32 @mrb_fixnum_value(i32 7)
  %17 = call i32 @mrb_raisef(i32* %14, i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @mrb_str_buf_new(i32* %19, i32 24)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @RSTRING_PTR(i32 %21)
  %23 = inttoptr i64 %22 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %23, %struct.sockaddr_un** %5, align 8
  %24 = load i32, i32* @AF_UNIX, align 4
  %25 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @RSTRING_PTR(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @RSTRING_LEN(i32 %32)
  %34 = call i32 @memcpy(i8* %29, i64 %31, i64 %33)
  %35 = load %struct.sockaddr_un*, %struct.sockaddr_un** %5, align 8
  %36 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @RSTRING_LEN(i32 %38)
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mrb_str_resize(i32* %41, i32 %42, i32 24)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
