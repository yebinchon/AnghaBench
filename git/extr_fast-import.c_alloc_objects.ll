; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_alloc_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_alloc_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry_pool = type { i64, i64, i64, %struct.object_entry_pool* }

@blocks = common dso_local global %struct.object_entry_pool* null, align 8
@alloc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @alloc_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_objects(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.object_entry_pool*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add i64 32, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.object_entry_pool* @xmalloc(i32 %8)
  store %struct.object_entry_pool* %9, %struct.object_entry_pool** %3, align 8
  %10 = load %struct.object_entry_pool*, %struct.object_entry_pool** @blocks, align 8
  %11 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  %12 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %11, i32 0, i32 3
  store %struct.object_entry_pool* %10, %struct.object_entry_pool** %12, align 8
  %13 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  %14 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  %17 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  %19 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  %25 = getelementptr inbounds %struct.object_entry_pool, %struct.object_entry_pool* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.object_entry_pool*, %struct.object_entry_pool** %3, align 8
  store %struct.object_entry_pool* %26, %struct.object_entry_pool** @blocks, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @alloc_count, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* @alloc_count, align 4
  ret void
}

declare dso_local %struct.object_entry_pool* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
