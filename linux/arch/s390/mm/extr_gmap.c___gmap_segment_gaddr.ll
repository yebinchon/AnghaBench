; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_segment_gaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c___gmap_segment_gaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @__gmap_segment_gaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__gmap_segment_gaddr(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %6 = load i64*, i64** %2, align 8
  %7 = ptrtoint i64* %6 to i64
  %8 = udiv i64 %7, 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @PTRS_PER_PMD, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %9, %12
  %14 = load i64, i64* @PMD_SIZE, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @PTRS_PER_PMD, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = sub i64 %18, 1
  %20 = xor i64 %19, -1
  store i64 %20, i64* %5, align 8
  %21 = load i64*, i64** %2, align 8
  %22 = ptrtoint i64* %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %22, %23
  %25 = inttoptr i64 %24 to i8*
  %26 = call %struct.page* @virt_to_page(i8* %25)
  store %struct.page* %26, %struct.page** %3, align 8
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %29, %30
  ret i64 %31
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
