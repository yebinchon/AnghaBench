; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_stat_failure_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_stat_failure_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat_failure = type { i64, i32*, i32, i32 }
%struct.forth_request = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat_failure*, %struct.forth_request*)* @stat_failure_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_failure_incr(%struct.stat_failure* %0, %struct.forth_request* %1) #0 {
  %3 = alloca %struct.stat_failure*, align 8
  %4 = alloca %struct.forth_request*, align 8
  store %struct.stat_failure* %0, %struct.stat_failure** %3, align 8
  store %struct.forth_request* %1, %struct.forth_request** %4, align 8
  %5 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %6 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %10 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %13 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %15 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %20 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %25 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %28 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %30 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.stat_failure*, %struct.stat_failure** %3, align 8
  %33 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %35 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %37 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
