; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_pton.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-socket/src/extr_socket.c_mrb_ipsocket_pton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"unsupported address family\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_ipsocket_pton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_ipsocket_pton(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [50 x i8], align 16
  %10 = alloca %struct.in_addr, align 4
  %11 = alloca %struct.in6_addr, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @mrb_get_args(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %6, i8** %8, i64* %7)
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 49
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %19 = call i32 @mrb_raise(i32* %17, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @AF_INET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load i64, i64* @AF_INET, align 8
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %33 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @inet_pton(i64 %31, i8* %32, i8* %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %66

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @mrb_str_new(i32* %39, i8* %41, i32 4)
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %20
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = getelementptr inbounds [50 x i8], [50 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @inet_pton(i64 %48, i8* %49, i8* %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %66

55:                                               ; preds = %47
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %11, i32 0, i32 0
  %58 = bitcast i32* %57 to i8*
  %59 = call i32 @mrb_str_new(i32* %56, i8* %58, i32 16)
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %63 = call i32 @mrb_raise(i32* %61, i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %54, %37
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %69 = call i32 @mrb_raise(i32* %67, i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (...) @mrb_nil_value()
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %55, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i8**, i64*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @inet_pton(i64, i8*, i8*) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
