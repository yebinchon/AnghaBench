; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_do_callback_proceed.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_do_callback_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.st_h2o_mruby_callback_sender_t = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @do_callback_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_callback_proceed(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.st_h2o_mruby_callback_sender_t*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.st_h2o_mruby_callback_sender_t*
  store %struct.st_h2o_mruby_callback_sender_t* %15, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %16 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %17 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %25 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %24, i32 0, i32 1
  %26 = call i32 @h2o_doublebuffer_consume(i32* %25)
  %27 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %28 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  %34 = call i32 @h2o_mruby_sender_do_send(%struct.TYPE_6__* %32, i32* null, i32 0, i32 %33)
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %37 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mrb_nil_p(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %43 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %42, i32 0, i32 1
  %44 = load %struct.st_h2o_mruby_callback_sender_t*, %struct.st_h2o_mruby_callback_sender_t** %6, align 8
  %45 = getelementptr inbounds %struct.st_h2o_mruby_callback_sender_t, %struct.st_h2o_mruby_callback_sender_t* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_6__* %41, i32* %43, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_doublebuffer_consume(i32*) #1

declare dso_local i32 @h2o_mruby_sender_do_send(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @h2o_mruby_sender_do_send_buffer(%struct.TYPE_6__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
