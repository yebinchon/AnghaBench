; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kyber_queue_data* }
%struct.kyber_queue_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @kyber_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyber_finish_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.kyber_queue_data*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %9, align 8
  store %struct.kyber_queue_data* %10, %struct.kyber_queue_data** %3, align 8
  %11 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = call i32 @rq_clear_domain_token(%struct.kyber_queue_data* %11, %struct.request* %12)
  ret void
}

declare dso_local i32 @rq_clear_domain_token(%struct.kyber_queue_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
