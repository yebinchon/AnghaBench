; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_read_from_sgtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_read_from_sgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*, i64)* @devcd_read_from_sgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devcd_read_from_sgtable(i8* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.scatterlist*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.scatterlist*
  store %struct.scatterlist* %14, %struct.scatterlist** %12, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %39

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %11, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %34 = call i32 @sg_nents(%struct.scatterlist* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @sg_pcopy_to_buffer(%struct.scatterlist* %32, i32 %34, i8* %35, i64 %36, i64 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %18
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @sg_pcopy_to_buffer(%struct.scatterlist*, i32, i8*, i64, i64) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
