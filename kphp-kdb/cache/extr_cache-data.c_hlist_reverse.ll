; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_hlist_reverse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_hlist_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { %struct.cache_uri* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_uri* (%struct.cache_uri*)* @hlist_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_uri* @hlist_reverse(%struct.cache_uri* %0) #0 {
  %2 = alloca %struct.cache_uri*, align 8
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca %struct.cache_uri*, align 8
  store %struct.cache_uri* %0, %struct.cache_uri** %2, align 8
  store %struct.cache_uri* null, %struct.cache_uri** %5, align 8
  %6 = load %struct.cache_uri*, %struct.cache_uri** %2, align 8
  store %struct.cache_uri* %6, %struct.cache_uri** %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %9 = icmp ne %struct.cache_uri* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %12 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %11, i32 0, i32 0
  %13 = load %struct.cache_uri*, %struct.cache_uri** %12, align 8
  store %struct.cache_uri* %13, %struct.cache_uri** %4, align 8
  %14 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  %15 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %16 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %15, i32 0, i32 0
  store %struct.cache_uri* %14, %struct.cache_uri** %16, align 8
  %17 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  store %struct.cache_uri* %17, %struct.cache_uri** %5, align 8
  br label %18

18:                                               ; preds = %10
  %19 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  store %struct.cache_uri* %19, %struct.cache_uri** %3, align 8
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.cache_uri*, %struct.cache_uri** %5, align 8
  ret %struct.cache_uri* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
