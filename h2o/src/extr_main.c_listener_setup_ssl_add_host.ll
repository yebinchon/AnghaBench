; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_listener_setup_ssl_add_host.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_listener_setup_ssl_add_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listener_ssl_config_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.listener_ssl_config_t*, i8*, i32)* @listener_setup_ssl_add_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listener_setup_ssl_add_host(%struct.listener_ssl_config_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.listener_ssl_config_t*, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast %struct.TYPE_4__* %4 to { i8*, i32 }*
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %7, i32 0, i32 0
  store i8* %1, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %7, i32 0, i32 1
  store i32 %2, i32* %9, align 8
  store %struct.listener_ssl_config_t* %0, %struct.listener_ssl_config_t** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @memchr(i8* %11, i8 signext 58, i32 %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %17, %3
  %25 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %5, align 8
  %26 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %25, i32 0, i32 0
  %27 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %5, align 8
  %28 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_5__* %26, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %35 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @h2o_iovec_init(i8* %34, i32 %41)
  %43 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %5, align 8
  %44 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.listener_ssl_config_t*, %struct.listener_ssl_config_t** %5, align 8
  %48 = getelementptr inbounds %struct.listener_ssl_config_t, %struct.listener_ssl_config_t* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 %42, i32* %52, align 4
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
