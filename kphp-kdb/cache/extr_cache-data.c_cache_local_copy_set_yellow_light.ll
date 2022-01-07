; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_set_yellow_light.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_local_copy_set_yellow_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"cache_local_copy_set_yellow_light (duration: %d)\0A\00", align 1
@CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_local_copy*, i32)* @cache_local_copy_set_yellow_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_local_copy_set_yellow_light(%struct.cache_local_copy* %0, i32 %1) #0 {
  %3 = alloca %struct.cache_local_copy*, align 8
  %4 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %10 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %15 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @log_last_ts, align 4
  %19 = load %struct.cache_local_copy*, %struct.cache_local_copy** %3, align 8
  %20 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
