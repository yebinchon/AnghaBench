; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_sender_proceed.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_do_sender_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.st_h2o_mruby_http_sender_t = type { %struct.TYPE_8__, %struct.TYPE_6__, i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @do_sender_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sender_proceed(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.st_h2o_mruby_http_sender_t*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.st_h2o_mruby_http_sender_t*
  store %struct.st_h2o_mruby_http_sender_t* %16, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %17 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %18 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %17, i32 0, i32 0
  %19 = call i32 @h2o_doublebuffer_consume(%struct.TYPE_8__* %18)
  %20 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %21 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %26 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32** @peek_content(i32* %27, i32* %8)
  store i32** %28, i32*** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %36 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %35, i32 0, i32 2
  store i32** %36, i32*** %7, align 8
  store i32 1, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %39 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %45 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load %struct.st_h2o_mruby_http_sender_t*, %struct.st_h2o_mruby_http_sender_t** %6, align 8
  %52 = getelementptr inbounds %struct.st_h2o_mruby_http_sender_t, %struct.st_h2o_mruby_http_sender_t* %51, i32 0, i32 0
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_7__* %50, %struct.TYPE_8__* %52, i32** %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %43, %37
  ret void
}

declare dso_local i32 @h2o_doublebuffer_consume(%struct.TYPE_8__*) #1

declare dso_local i32** @peek_content(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_7__*, %struct.TYPE_8__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
