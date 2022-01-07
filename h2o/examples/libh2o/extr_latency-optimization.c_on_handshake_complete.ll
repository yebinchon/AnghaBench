; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_on_handshake_complete.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_on_handshake_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@h2o_socket_error_ssl_cert_name_mismatch = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"TLS handshake failure:%s\0A\00", align 1
@mode_server = common dso_local global i64 0, align 8
@server_on_read_first = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@client_on_write_complete = common dso_local global i32 0, align 4
@client_on_read_first = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @on_handshake_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_handshake_complete(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** @h2o_socket_error_ssl_cert_name_mismatch, align 8
  %11 = icmp ne i8* %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @ERR_print_errors_fp(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @h2o_socket_close(i32* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %8, %2
  %22 = load i64, i64* @mode_server, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @server_on_read_first, align 4
  %27 = call i32 @h2o_socket_read_start(i32* %25, i32 %26)
  br label %37

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %30 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %29, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @client_on_write_complete, align 4
  %33 = call i32 @h2o_socket_write(i32* %31, %struct.TYPE_3__* %5, i32 1, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @client_on_read_first, align 4
  %36 = call i32 @h2o_socket_read_start(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @h2o_socket_read_start(i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_socket_write(i32*, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
