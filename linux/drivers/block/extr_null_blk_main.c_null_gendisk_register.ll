; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_gendisk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_gendisk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { %struct.TYPE_2__*, i32, i32, i32, %struct.gendisk* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.gendisk = type { i32, i32, i32, %struct.nullb*, i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GENHD_FL_SUPPRESS_PARTITION_INFO = common dso_local global i32 0, align 4
@null_major = common dso_local global i32 0, align 4
@null_fops = common dso_local global i32 0, align 4
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb*)* @null_gendisk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_gendisk_register(%struct.nullb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nullb*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nullb* %0, %struct.nullb** %3, align 8
  %7 = load %struct.nullb*, %struct.nullb** %3, align 8
  %8 = getelementptr inbounds %struct.nullb, %struct.nullb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.gendisk* @alloc_disk_node(i32 1, i32 %11)
  %13 = load %struct.nullb*, %struct.nullb** %3, align 8
  %14 = getelementptr inbounds %struct.nullb, %struct.nullb* %13, i32 0, i32 4
  store %struct.gendisk* %12, %struct.gendisk** %14, align 8
  store %struct.gendisk* %12, %struct.gendisk** %4, align 8
  %15 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %16 = icmp ne %struct.gendisk* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.nullb*, %struct.nullb** %3, align 8
  %22 = getelementptr inbounds %struct.nullb, %struct.nullb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i32 %26, 1024
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 1024
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 9
  %34 = call i32 @set_capacity(%struct.gendisk* %31, i32 %33)
  %35 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %36 = load i32, i32* @GENHD_FL_SUPPRESS_PARTITION_INFO, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @null_major, align 4
  %43 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %44 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nullb*, %struct.nullb** %3, align 8
  %46 = getelementptr inbounds %struct.nullb, %struct.nullb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %49 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %51 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %50, i32 0, i32 4
  store i32* @null_fops, i32** %51, align 8
  %52 = load %struct.nullb*, %struct.nullb** %3, align 8
  %53 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %54 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %53, i32 0, i32 3
  store %struct.nullb* %52, %struct.nullb** %54, align 8
  %55 = load %struct.nullb*, %struct.nullb** %3, align 8
  %56 = getelementptr inbounds %struct.nullb, %struct.nullb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %59 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %61 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nullb*, %struct.nullb** %3, align 8
  %64 = getelementptr inbounds %struct.nullb, %struct.nullb* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DISK_NAME_LEN, align 4
  %67 = call i32 @strncpy(i32 %62, i32 %65, i32 %66)
  %68 = load %struct.nullb*, %struct.nullb** %3, align 8
  %69 = getelementptr inbounds %struct.nullb, %struct.nullb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %20
  %75 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %76 = call i32 @blk_revalidate_disk_zones(%struct.gendisk* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %20
  %83 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %84 = call i32 @add_disk(%struct.gendisk* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %79, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.gendisk* @alloc_disk_node(i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @blk_revalidate_disk_zones(%struct.gendisk*) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
