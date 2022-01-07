; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c___blk_rq_prep_clone.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c___blk_rq_prep_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, i32, i32, i32 }

@RQF_SPECIAL_PAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.request*)* @__blk_rq_prep_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_rq_prep_clone(%struct.request* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = call i32 @blk_rq_pos(%struct.request* %5)
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call i32 @blk_rq_bytes(%struct.request* %9)
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @RQF_SPECIAL_PAYLOAD, align 4
  %21 = load %struct.request*, %struct.request** %3, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %2
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request*, %struct.request** %3, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.request*, %struct.request** %3, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.request*, %struct.request** %3, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
