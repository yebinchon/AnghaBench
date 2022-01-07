; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_sa2addrlist.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_sa2addrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i16 }
%struct.sockaddr_in6 = type { i16 }

@.str = private unnamed_addr constant [8 x i8] c"AF_INET\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"AF_INET6\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"bad af\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"getnameinfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr*, i32)* @sa2addrlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa2addrlist(i32* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %25 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %10, align 2
  br label %30

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in6*
  %23 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %10, align 2
  br label %30

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %28 = call i32 @mrb_raise(i32* %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (...) @mrb_nil_value()
  store i32 %29, i32* %4, align 4
  br label %76

30:                                               ; preds = %20, %15
  %31 = load i16, i16* %10, align 2
  %32 = call zeroext i16 @ntohs(i16 zeroext %31)
  store i16 %32, i16* %10, align 2
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @NI_MAXHOST, align 4
  %35 = call i32 @mrb_str_buf_new(i32* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @RSTRING_PTR(i32 %38)
  %40 = load i32, i32* @NI_MAXHOST, align 4
  %41 = load i32, i32* @NI_NUMERICHOST, align 4
  %42 = call i32 @getnameinfo(%struct.sockaddr* %36, i32 %37, i32 %39, i32 %40, i32* null, i32 0, i32 %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @mrb_sys_fail(i32* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @RSTRING_PTR(i32 %50)
  %52 = call i32 @strlen(i32 %51)
  %53 = call i32 @mrb_str_resize(i32* %48, i32 %49, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @mrb_ary_new_capa(i32* %54, i32 4)
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @mrb_str_new_cstr(i32* %58, i8* %59)
  %61 = call i32 @mrb_ary_push(i32* %56, i32 %57, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i16, i16* %10, align 2
  %65 = call i32 @mrb_fixnum_value(i16 zeroext %64)
  %66 = call i32 @mrb_ary_push(i32* %62, i32 %63, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mrb_ary_push(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @mrb_ary_push(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %47, %25
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local zeroext i16 @ntohs(i16 zeroext) #1

declare dso_local i32 @mrb_str_buf_new(i32*, i32) #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
