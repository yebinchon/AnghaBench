; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_on_context_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_proxy.c_on_context_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.rp_handler_t = type { i32, i32 }
%struct.rp_handler_context_t = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*)* @on_context_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_context_dispose(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.rp_handler_t*, align 8
  %6 = alloca %struct.rp_handler_context_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.rp_handler_t*
  store %struct.rp_handler_t* %9, %struct.rp_handler_t** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %12 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %11, i32 0, i32 1
  %13 = call %struct.rp_handler_context_t* @h2o_context_get_handler_context(%struct.TYPE_4__* %10, i32* %12)
  store %struct.rp_handler_context_t* %13, %struct.rp_handler_context_t** %6, align 8
  %14 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %15 = getelementptr inbounds %struct.rp_handler_context_t, %struct.rp_handler_context_t* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.rp_handler_context_t*, %struct.rp_handler_context_t** %6, align 8
  %20 = getelementptr inbounds %struct.rp_handler_context_t, %struct.rp_handler_context_t* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.rp_handler_t*, %struct.rp_handler_t** %5, align 8
  %25 = getelementptr inbounds %struct.rp_handler_t, %struct.rp_handler_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @h2o_socketpool_unregister_loop(i32 %26, i32 %29)
  ret void
}

declare dso_local %struct.rp_handler_context_t* @h2o_context_get_handler_context(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @h2o_socketpool_unregister_loop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
