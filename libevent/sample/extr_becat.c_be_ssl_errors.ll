; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_ssl_errors.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_be_ssl_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ssl/err=%d/%s in %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_ssl_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_ssl_errors(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %9 = call i32 @bufferevent_get_openssl_error(%struct.bufferevent* %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @ERR_reason_error_string(i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @ERR_lib_error_string(i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @ERR_func_error_string(i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19, i8* %20, i8* %21)
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @bufferevent_get_openssl_error(%struct.bufferevent*) #1

declare dso_local i8* @ERR_reason_error_string(i32) #1

declare dso_local i8* @ERR_lib_error_string(i32) #1

declare dso_local i8* @ERR_func_error_string(i32) #1

declare dso_local i32 @error(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
