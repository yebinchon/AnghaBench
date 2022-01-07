; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_decode_header.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_decode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_record_header_t = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fcgi_record_header_t*, i8*)* @decode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_header(%struct.st_fcgi_record_header_t* %0, i8* %1) #0 {
  %3 = alloca %struct.st_fcgi_record_header_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.st_fcgi_record_header_t* %0, %struct.st_fcgi_record_header_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @memcpy(%struct.st_fcgi_record_header_t* %5, i8* %6, i32 16)
  %8 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @htons(i8* %10)
  %12 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %3, align 8
  %15 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @htons(i8* %16)
  %18 = load %struct.st_fcgi_record_header_t*, %struct.st_fcgi_record_header_t** %3, align 8
  %19 = getelementptr inbounds %struct.st_fcgi_record_header_t, %struct.st_fcgi_record_header_t* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.st_fcgi_record_header_t*, i8*, i32) #1

declare dso_local i8* @htons(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
