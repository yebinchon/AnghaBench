; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_aix.c_alloc_lvn.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_aix.c_alloc_lvn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvname = type { i32 }
%struct.parsed_partitions = type { i32 }

@LVM_MAXLVS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lvname* (%struct.parsed_partitions*, i32)* @alloc_lvn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lvname* @alloc_lvn(%struct.parsed_partitions* %0, i32 %1) #0 {
  %3 = alloca %struct.lvname*, align 8
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lvname*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @LVM_MAXLVS, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lvname* @kmalloc(i64 %11, i32 %12)
  store %struct.lvname* %13, %struct.lvname** %7, align 8
  %14 = load %struct.lvname*, %struct.lvname** %7, align 8
  %15 = icmp ne %struct.lvname* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.lvname* null, %struct.lvname** %3, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.lvname*, %struct.lvname** %7, align 8
  %21 = bitcast %struct.lvname* %20 to i32*
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @read_lba(%struct.parsed_partitions* %18, i32 %19, i32* %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.lvname*, %struct.lvname** %7, align 8
  %28 = call i32 @kfree(%struct.lvname* %27)
  store %struct.lvname* null, %struct.lvname** %3, align 8
  br label %31

29:                                               ; preds = %17
  %30 = load %struct.lvname*, %struct.lvname** %7, align 8
  store %struct.lvname* %30, %struct.lvname** %3, align 8
  br label %31

31:                                               ; preds = %29, %26, %16
  %32 = load %struct.lvname*, %struct.lvname** %3, align 8
  ret %struct.lvname* %32
}

declare dso_local %struct.lvname* @kmalloc(i64, i32) #1

declare dso_local i64 @read_lba(%struct.parsed_partitions*, i32, i32*, i64) #1

declare dso_local i32 @kfree(%struct.lvname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
