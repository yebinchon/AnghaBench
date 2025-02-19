; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_new_local_copy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_set_new_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }
%struct.cache_local_copy = type { i32 }

@LC = common dso_local global i32* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_uri*, %struct.cache_local_copy*)* @cache_set_new_local_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_set_new_local_copy(%struct.cache_uri* %0, %struct.cache_local_copy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_uri*, align 8
  %5 = alloca %struct.cache_local_copy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cache_uri* %0, %struct.cache_uri** %4, align 8
  store %struct.cache_local_copy* %1, %struct.cache_local_copy** %5, align 8
  %8 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %9 = load i32*, i32** @LC, align 8
  %10 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %11 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %8, i32* %9, i32 %10, i32 0, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i32 -1, i32* %3, align 4
  br label %35

19:                                               ; preds = %14
  %20 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %21 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %22 = call i32 @cache_uri_incr_server_stats(%struct.cache_uri* %20, %struct.cache_local_copy* %21)
  %23 = load i32*, i32** @LC, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load %struct.cache_local_copy*, %struct.cache_local_copy** %5, align 8
  %29 = call i32 @cache_local_copy_cpy(i32* %27, %struct.cache_local_copy* %28)
  %30 = load %struct.cache_uri*, %struct.cache_uri** %4, align 8
  %31 = load i32*, i32** @LC, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %30, i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, i32*, i32, i32, i32*) #1

declare dso_local i32 @cache_uri_incr_server_stats(%struct.cache_uri*, %struct.cache_local_copy*) #1

declare dso_local i32 @cache_local_copy_cpy(i32*, %struct.cache_local_copy*) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
