; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_for_each_cached_alternate.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_for_each_cached_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alternate_object_cache = type { i64, %struct.object** }
%struct.object = type opaque
%struct.fetch_negotiator = type { i32 }

@for_each_cached_alternate.initialized = internal global i32 0, align 4
@for_each_cached_alternate.cache = internal global %struct.alternate_object_cache zeroinitializer, align 8
@cache_one_alternate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fetch_negotiator*, void (%struct.fetch_negotiator*, %struct.object*)*)* @for_each_cached_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_cached_alternate(%struct.fetch_negotiator* %0, void (%struct.fetch_negotiator*, %struct.object*)* %1) #0 {
  %3 = alloca %struct.fetch_negotiator*, align 8
  %4 = alloca void (%struct.fetch_negotiator*, %struct.object*)*, align 8
  %5 = alloca i64, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %3, align 8
  store void (%struct.fetch_negotiator*, %struct.object*)* %1, void (%struct.fetch_negotiator*, %struct.object*)** %4, align 8
  %6 = load i32, i32* @for_each_cached_alternate.initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @cache_one_alternate, align 4
  %10 = call i32 @for_each_alternate_ref(i32 %9, %struct.alternate_object_cache* @for_each_cached_alternate.cache)
  store i32 1, i32* @for_each_cached_alternate.initialized, align 4
  br label %11

11:                                               ; preds = %8, %2
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.alternate_object_cache, %struct.alternate_object_cache* @for_each_cached_alternate.cache, i32 0, i32 0), align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load void (%struct.fetch_negotiator*, %struct.object*)*, void (%struct.fetch_negotiator*, %struct.object*)** %4, align 8
  %18 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %3, align 8
  %19 = load %struct.object**, %struct.object*** getelementptr inbounds (%struct.alternate_object_cache, %struct.alternate_object_cache* @for_each_cached_alternate.cache, i32 0, i32 1), align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.object*, %struct.object** %19, i64 %20
  %22 = load %struct.object*, %struct.object** %21, align 8
  call void %17(%struct.fetch_negotiator* %18, %struct.object* %22)
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %12

26:                                               ; preds = %12
  ret void
}

declare dso_local i32 @for_each_alternate_ref(i32, %struct.alternate_object_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
