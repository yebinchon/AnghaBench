; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_gethostname.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_socket_gethostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"gethostname\00", align 1
@HOST_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_socket_gethostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_socket_gethostname(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 256, i64* %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i64, i64* %6, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @mrb_str_buf_new(i32* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @RSTRING_PTR(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @gethostname(i32 %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_sys_fail(i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RSTRING_PTR(i32 %23)
  %25 = call i64 @strlen(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 @mrb_str_resize(i32* %21, i32 %22, i32 %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i64 @gethostname(i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
