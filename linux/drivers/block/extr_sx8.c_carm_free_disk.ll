; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_free_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_free_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { %struct.carm_port* }
%struct.carm_port = type { %struct.gendisk* }
%struct.gendisk = type { i32, i64 }

@GENHD_FL_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carm_host*, i32)* @carm_free_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_free_disk(%struct.carm_host* %0, i32 %1) #0 {
  %3 = alloca %struct.carm_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.carm_port*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %8 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %7, i32 0, i32 0
  %9 = load %struct.carm_port*, %struct.carm_port** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %9, i64 %11
  store %struct.carm_port* %12, %struct.carm_port** %5, align 8
  %13 = load %struct.carm_port*, %struct.carm_port** %5, align 8
  %14 = getelementptr inbounds %struct.carm_port, %struct.carm_port* %13, i32 0, i32 0
  %15 = load %struct.gendisk*, %struct.gendisk** %14, align 8
  store %struct.gendisk* %15, %struct.gendisk** %6, align 8
  %16 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %17 = icmp ne %struct.gendisk* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %21 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GENHD_FL_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %28 = call i32 @del_gendisk(%struct.gendisk* %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %31 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %36 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @blk_cleanup_queue(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %41 = call i32 @put_disk(%struct.gendisk* %40)
  br label %42

42:                                               ; preds = %39, %18
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
