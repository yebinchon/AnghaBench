; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_alloc_pn_space.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_alloc_pn_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_quicly_pn_space_t = type { i64, i64, i32, i32 }

@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_quicly_pn_space_t* (i64)* @alloc_pn_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_quicly_pn_space_t* @alloc_pn_space(i64 %0) #0 {
  %2 = alloca %struct.st_quicly_pn_space_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_quicly_pn_space_t*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call %struct.st_quicly_pn_space_t* @malloc(i64 %5)
  store %struct.st_quicly_pn_space_t* %6, %struct.st_quicly_pn_space_t** %4, align 8
  %7 = icmp eq %struct.st_quicly_pn_space_t* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.st_quicly_pn_space_t* null, %struct.st_quicly_pn_space_t** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  %11 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %10, i32 0, i32 3
  %12 = call i32 @quicly_ranges_init(i32* %11)
  %13 = load i32, i32* @INT64_MAX, align 4
  %14 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  %17 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  %19 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 24
  br i1 %21, label %22, label %29

22:                                               ; preds = %9
  %23 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  %24 = bitcast %struct.st_quicly_pn_space_t* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 24
  %26 = load i64, i64* %3, align 8
  %27 = sub i64 %26, 24
  %28 = call i32 @memset(i32* %25, i32 0, i64 %27)
  br label %29

29:                                               ; preds = %22, %9
  %30 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %4, align 8
  store %struct.st_quicly_pn_space_t* %30, %struct.st_quicly_pn_space_t** %2, align 8
  br label %31

31:                                               ; preds = %29, %8
  %32 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %2, align 8
  ret %struct.st_quicly_pn_space_t* %32
}

declare dso_local %struct.st_quicly_pn_space_t* @malloc(i64) #1

declare dso_local i32 @quicly_ranges_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
