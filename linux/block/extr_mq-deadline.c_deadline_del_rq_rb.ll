; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_deadline_del_rq_rb.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_deadline_del_rq_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deadline_data = type { %struct.request** }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.deadline_data*, %struct.request*)* @deadline_del_rq_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deadline_del_rq_rb(%struct.deadline_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.deadline_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.deadline_data* %0, %struct.deadline_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i32 @rq_data_dir(%struct.request* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.deadline_data*, %struct.deadline_data** %3, align 8
  %9 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %8, i32 0, i32 0
  %10 = load %struct.request**, %struct.request*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.request*, %struct.request** %10, i64 %12
  %14 = load %struct.request*, %struct.request** %13, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = icmp eq %struct.request* %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = call %struct.request* @deadline_latter_request(%struct.request* %18)
  %20 = load %struct.deadline_data*, %struct.deadline_data** %3, align 8
  %21 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %20, i32 0, i32 0
  %22 = load %struct.request**, %struct.request*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.request*, %struct.request** %22, i64 %24
  store %struct.request* %19, %struct.request** %25, align 8
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.deadline_data*, %struct.deadline_data** %3, align 8
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = call i32 @deadline_rb_root(%struct.deadline_data* %27, %struct.request* %28)
  %30 = load %struct.request*, %struct.request** %4, align 8
  %31 = call i32 @elv_rb_del(i32 %29, %struct.request* %30)
  ret void
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local %struct.request* @deadline_latter_request(%struct.request*) #1

declare dso_local i32 @elv_rb_del(i32, %struct.request*) #1

declare dso_local i32 @deadline_rb_root(%struct.deadline_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
