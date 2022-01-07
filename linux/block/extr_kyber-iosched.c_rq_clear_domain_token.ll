; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_rq_clear_domain_token.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_rq_clear_domain_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kyber_queue_data = type { i32* }
%struct.request = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kyber_queue_data*, %struct.request*)* @rq_clear_domain_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rq_clear_domain_token(%struct.kyber_queue_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.kyber_queue_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kyber_queue_data* %0, %struct.kyber_queue_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i32 @rq_get_domain_token(%struct.request* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @kyber_sched_domain(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %3, align 8
  %17 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sbitmap_queue_clear(i32* %21, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @rq_get_domain_token(%struct.request*) #1

declare dso_local i32 @kyber_sched_domain(i32) #1

declare dso_local i32 @sbitmap_queue_clear(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
