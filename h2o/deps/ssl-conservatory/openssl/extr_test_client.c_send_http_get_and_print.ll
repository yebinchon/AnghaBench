; ModuleID = '/home/carl/AnghaBench/h2o/deps/ssl-conservatory/openssl/extr_test_client.c_send_http_get_and_print.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/ssl-conservatory/openssl/extr_test_client.c_send_http_get_and_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.0\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @send_http_get_and_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_http_get_and_print(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @stdout, align 4
  %7 = load i32, i32* @BIO_NOCLOSE, align 4
  %8 = call i32* @BIO_new_fp(i32 %6, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @BIO_puts(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %14 = call i32 @BIO_read(i32* %12, i8* %13, i32 1024)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %23

18:                                               ; preds = %11
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @BIO_write(i32* %19, i8* %20, i32 %21)
  br label %11

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @BIO_free(i32* %24)
  ret void
}

declare dso_local i32* @BIO_new_fp(i32, i32) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
