; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_h2o_status_register.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_h2o_status_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.st_h2o_root_status_handler_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@on_context_init = common dso_local global i32 0, align 4
@on_context_dispose = common dso_local global i32 0, align 4
@on_req = common dso_local global i32 0, align 4
@h2o_requests_status_handler = common dso_local global i32 0, align 4
@h2o_events_status_handler = common dso_local global i32 0, align 4
@h2o_ssl_status_handler = common dso_local global i32 0, align 4
@h2o_durations_status_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_status_register(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.st_h2o_root_status_handler_t*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i64 @h2o_create_handler(%struct.TYPE_6__* %4, i32 12)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.st_h2o_root_status_handler_t*
  store %struct.st_h2o_root_status_handler_t* %7, %struct.st_h2o_root_status_handler_t** %3, align 8
  %8 = load i32, i32* @on_context_init, align 4
  %9 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @on_context_dispose, align 4
  %13 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %3, align 8
  %14 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @on_req, align 4
  %17 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_h2o_root_status_handler_t, %struct.st_h2o_root_status_handler_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @h2o_config_register_status_handler(i32 %22, i32* @h2o_requests_status_handler)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @h2o_config_register_status_handler(i32 %26, i32* @h2o_events_status_handler)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @h2o_config_register_status_handler(i32 %30, i32* @h2o_ssl_status_handler)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @h2o_config_register_status_handler(i32 %34, i32* @h2o_durations_status_handler)
  ret void
}

declare dso_local i64 @h2o_create_handler(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @h2o_config_register_status_handler(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
