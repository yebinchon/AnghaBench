; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_alloc_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@alloc_min = common dso_local global i32 0, align 4
@tbl_entries = common dso_local global i32 0, align 4
@alloc_tbl = common dso_local global %struct.alloc_info* null, align 8
@next_base = common dso_local global i64 0, align 8
@space_left = common dso_local global i64 0, align 8
@simple_malloc = common dso_local global i32 0, align 4
@platform_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@simple_free = common dso_local global i32 0, align 4
@simple_realloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @simple_alloc_init(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i64 @_ALIGN_UP(i64 %11, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @alloc_min, align 4
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @tbl_entries, align 4
  %19 = load i32, i32* @tbl_entries, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  store i64 %21, i64* %10, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = call i64 @_ALIGN_UP(i64 %23, i32 8)
  %25 = inttoptr i64 %24 to %struct.alloc_info*
  store %struct.alloc_info* %25, %struct.alloc_info** @alloc_tbl, align 8
  %26 = load %struct.alloc_info*, %struct.alloc_info** @alloc_tbl, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @memset(%struct.alloc_info* %26, i32 0, i64 %27)
  %29 = load %struct.alloc_info*, %struct.alloc_info** @alloc_tbl, align 8
  %30 = ptrtoint %struct.alloc_info* %29 to i64
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = load i32, i32* @alloc_min, align 4
  %34 = call i64 @_ALIGN_UP(i64 %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* @next_base, align 8
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* @space_left, align 8
  %37 = load i32, i32* @simple_malloc, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 2), align 4
  %38 = load i32, i32* @simple_free, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 1), align 4
  %39 = load i32, i32* @simple_realloc, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @platform_ops, i32 0, i32 0), align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  ret i8* %43
}

declare dso_local i64 @_ALIGN_UP(i64, i32) #1

declare dso_local i32 @memset(%struct.alloc_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
