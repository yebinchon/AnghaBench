; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_ctx_init.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssl_context*)* @ssl_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_ctx_init(%struct.ssl_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssl_context*, align 8
  %4 = alloca i32*, align 8
  store %struct.ssl_context* %0, %struct.ssl_context** %3, align 8
  %5 = call i32 (...) @ssl_init()
  %6 = call i32* (...) @TLS_method()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @SSL_CTX_new(i32* %11)
  %13 = load %struct.ssl_context*, %struct.ssl_context** %3, align 8
  %14 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ssl_context*, %struct.ssl_context** %3, align 8
  %16 = call i64 @ssl_load_key(%struct.ssl_context* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %25

19:                                               ; preds = %10
  %20 = load %struct.ssl_context*, %struct.ssl_context** %3, align 8
  %21 = call i64 @ssl_load_cert(%struct.ssl_context* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %23, %18, %9
  %26 = load %struct.ssl_context*, %struct.ssl_context** %3, align 8
  %27 = call i32 @ssl_ctx_free(%struct.ssl_context* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ssl_init(...) #1

declare dso_local i32* @TLS_method(...) #1

declare dso_local i32 @SSL_CTX_new(i32*) #1

declare dso_local i64 @ssl_load_key(%struct.ssl_context*) #1

declare dso_local i64 @ssl_load_cert(%struct.ssl_context*) #1

declare dso_local i32 @ssl_ctx_free(%struct.ssl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
