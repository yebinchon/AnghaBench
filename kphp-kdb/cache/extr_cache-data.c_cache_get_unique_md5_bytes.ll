; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_unique_md5_bytes.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_unique_md5_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.cache_uri = type { i32 }

@get_uri_f_last_md5 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_uri*)* @cache_get_unique_md5_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @get_uri_f_last_md5, i32 0, i32 1), align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %9 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = call i32 @cache_uri_count_by_md5(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @get_uri_f_last_md5, i32 0, i32 0), i32 8)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 8, i32* %2, align 4
  br label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  %28 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %27)
  %29 = call i32 @cache_uri_count_by_md5(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @get_uri_f_last_md5, i32 0, i32 0), i32 16)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store i32 16, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %21, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @cache_uri_count_by_md5(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
