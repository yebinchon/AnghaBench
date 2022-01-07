; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_sanitize_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_sanitize_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cdrom_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CDROM_LBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.cdrom_addr*, i64*, i64)* @sanitize_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_format(%union.cdrom_addr* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %union.cdrom_addr*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %union.cdrom_addr* %0, %union.cdrom_addr** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %63

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CDROM_LBA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %19 = bitcast %union.cdrom_addr* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %23 = bitcast %union.cdrom_addr* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 2
  %27 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %28 = bitcast %union.cdrom_addr* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 60, %30
  %32 = add nsw i32 %26, %31
  %33 = mul nsw i32 75, %32
  %34 = add nsw i32 %21, %33
  %35 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %36 = bitcast %union.cdrom_addr* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %60

37:                                               ; preds = %13
  %38 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %39 = bitcast %union.cdrom_addr* %38 to i32*
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = srem i32 %41, 75
  %43 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %44 = bitcast %union.cdrom_addr* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 75
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = srem i32 %50, 60
  %52 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %53 = bitcast %union.cdrom_addr* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 60
  %57 = load %union.cdrom_addr*, %union.cdrom_addr** %4, align 8
  %58 = bitcast %union.cdrom_addr* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %37, %17
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
