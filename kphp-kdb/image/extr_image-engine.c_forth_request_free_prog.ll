; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_free_prog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_free_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, i32* }

@unloaded_results = common dso_local global i32 0, align 4
@results_unload_bytes = common dso_local global i32 0, align 4
@all_results_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.forth_request*)* @forth_request_free_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forth_request_free_prog(%struct.forth_request* %0) #0 {
  %2 = alloca %struct.forth_request*, align 8
  store %struct.forth_request* %0, %struct.forth_request** %2, align 8
  %3 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %4 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i32, i32* @unloaded_results, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @unloaded_results, align 4
  %10 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %11 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* @results_unload_bytes, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @results_unload_bytes, align 4
  %18 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %19 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @all_results_memory, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @all_results_memory, align 4
  %26 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %27 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  %30 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %31 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  %33 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
