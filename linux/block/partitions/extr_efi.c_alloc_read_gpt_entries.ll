; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_alloc_read_gpt_entries.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_efi.c_alloc_read_gpt_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.parsed_partitions*, %struct.TYPE_3__*)* @alloc_read_gpt_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_read_gpt_entries(%struct.parsed_partitions* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %47

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = mul i64 %15, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %47

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kmalloc(i64 %25, i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le64_to_cpu(i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @read_lba(%struct.parsed_partitions* %32, i32 %36, i32* %37, i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @kfree(i32* %43)
  store i32* null, i32** %7, align 8
  store i32* null, i32** %3, align 8
  br label %47

45:                                               ; preds = %31
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %45, %42, %30, %23, %10
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @read_lba(%struct.parsed_partitions*, i32, i32*, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
