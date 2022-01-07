; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_write_http_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_write_http_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@write_http_error.buff = internal global [1024 x i8] zeroinitializer, align 16
@error_text_pattern = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_http_error(%struct.connection* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 204
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @write_basic_http_header(%struct.connection* %11, i32 %12, i32 0, i32 -1, i32 0, i32 0)
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @write_http_error.buff, i64 0, i64 0), i8** %6, align 8
  %15 = call i8* @http_get_error_msg_text(i32* %5)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @error_text_pattern, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sprintf(i8* %16, i8* %17, i32 %18, i8* %19, i32 %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %6, align 8
  %26 = load %struct.connection*, %struct.connection** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = sub i64 %29, ptrtoint ([1024 x i8]* @write_http_error.buff to i64)
  %31 = trunc i64 %30 to i32
  %32 = call i32 @write_basic_http_header(%struct.connection* %26, i32 %27, i32 0, i32 %31, i32 0, i32 0)
  %33 = load %struct.connection*, %struct.connection** %4, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 0
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 %36, ptrtoint ([1024 x i8]* @write_http_error.buff to i64)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @write_out(i32* %34, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @write_http_error.buff, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %14, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @write_basic_http_header(%struct.connection*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @http_get_error_msg_text(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
