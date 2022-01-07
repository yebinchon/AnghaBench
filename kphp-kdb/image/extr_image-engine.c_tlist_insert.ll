; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_tlist_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_tlist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i32, %struct.forth_request*, %struct.forth_request* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlist_insert(%struct.forth_request* %0, %struct.forth_request* %1) #0 {
  %3 = alloca %struct.forth_request*, align 8
  %4 = alloca %struct.forth_request*, align 8
  %5 = alloca %struct.forth_request*, align 8
  %6 = alloca %struct.forth_request*, align 8
  store %struct.forth_request* %0, %struct.forth_request** %3, align 8
  store %struct.forth_request* %1, %struct.forth_request** %4, align 8
  %7 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %8 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %7, i32 0, i32 2
  %9 = load %struct.forth_request*, %struct.forth_request** %8, align 8
  store %struct.forth_request* %9, %struct.forth_request** %5, align 8
  %10 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  store %struct.forth_request* %10, %struct.forth_request** %6, align 8
  %11 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %12 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %13 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %12, i32 0, i32 1
  store %struct.forth_request* %11, %struct.forth_request** %13, align 8
  %14 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %15 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %16 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %15, i32 0, i32 2
  store %struct.forth_request* %14, %struct.forth_request** %16, align 8
  %17 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %18 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %19 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %18, i32 0, i32 2
  store %struct.forth_request* %17, %struct.forth_request** %19, align 8
  %20 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %21 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %22 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %21, i32 0, i32 1
  store %struct.forth_request* %20, %struct.forth_request** %22, align 8
  %23 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %24 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
