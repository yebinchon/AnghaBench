; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_cleanup.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_tcache.c_tcache_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@config_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcache_cleanup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @tsd_tcachep_get(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @tcache_available(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @tsd_tcache_enabled_get(i32* %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @config_debug, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_4__* @tcache_small_bin_get(i32* %18, i32 0)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %17, %9
  br label %49

27:                                               ; preds = %1
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @tsd_tcache_enabled_get(i32* %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.TYPE_4__* @tcache_small_bin_get(i32* %31, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @tcache_destroy(i32* %39, i32* %40, i32 1)
  %42 = load i64, i64* @config_debug, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load i32*, i32** %3, align 8
  %46 = call %struct.TYPE_4__* @tcache_small_bin_get(i32* %45, i32 0)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %26, %44, %27
  ret void
}

declare dso_local i32* @tsd_tcachep_get(i32*) #1

declare dso_local i32 @tcache_available(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsd_tcache_enabled_get(i32*) #1

declare dso_local %struct.TYPE_4__* @tcache_small_bin_get(i32*, i32) #1

declare dso_local i32 @tcache_destroy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
