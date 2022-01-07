; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_encode_record_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_encode_record_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_record_header_t = type { i64, i64, i32, i32, i32, i32 }

@FCGI_VERSION_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @encode_record_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_record_header(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.st_fcgi_record_header_t*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.st_fcgi_record_header_t*
  store %struct.st_fcgi_record_header_t* %11, %struct.st_fcgi_record_header_t** %9, align 8
  %12 = load i32, i32* @FCGI_VERSION_1, align 4
  %13 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %14 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %17 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %19 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %18, i32 0, i32 3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @encode_uint16(i32* %19, i32 %20)
  %22 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %23 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %22, i32 0, i32 2
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @encode_uint16(i32* %23, i32 %24)
  %26 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %27 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %9, align 8
  %29 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @encode_uint16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
