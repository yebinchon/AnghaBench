; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_send.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_basicsocket_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Si|S\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_basicsocket_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_basicsocket_send(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @mrb_nil_value()
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @mrb_get_args(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8, i64* %6, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @socket_fd(i32* %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @RSTRING_PTR(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @RSTRING_LEN(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @send(i32 %18, i64 %20, i32 %23, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %45

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @socket_fd(i32* %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @RSTRING_PTR(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @RSTRING_LEN(i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @RSTRING_PTR(i32 %38)
  %40 = inttoptr i64 %39 to %struct.sockaddr*
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @RSTRING_LEN(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @sendto(i32 %30, i64 %32, i32 %35, i32 %37, %struct.sockaddr* %40, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %27, %15
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @mrb_sys_fail(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @mrb_fixnum_value(i64 %53)
  ret i32 %54
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i64*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @send(i32, i64, i32, i32) #1

declare dso_local i32 @socket_fd(i32*, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @sendto(i32, i64, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
