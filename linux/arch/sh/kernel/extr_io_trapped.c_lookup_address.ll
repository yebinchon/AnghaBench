; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_lookup_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_io_trapped.c_lookup_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapped_io = type { i32, %struct.resource*, i64 }
%struct.resource = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trapped_io*, i64)* @lookup_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_address(%struct.trapped_io* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.trapped_io*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.trapped_io* %0, %struct.trapped_io** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %11 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %47, %2
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %16 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.trapped_io*, %struct.trapped_io** %4, align 8
  %21 = getelementptr inbounds %struct.trapped_io, %struct.trapped_io* %20, i32 0, i32 1
  %22 = load %struct.resource*, %struct.resource** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %22, i64 %24
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i64 @roundup(i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = add i64 %38, %41
  store i64 %42, i64* %3, align 8
  br label %51

43:                                               ; preds = %19
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %13

50:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
