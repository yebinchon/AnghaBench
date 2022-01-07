; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_memory_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_memory_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memdev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_2__* }

@devlist = common dso_local global %struct.memdev* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @memory_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.memdev*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.memdev*, %struct.memdev** @devlist, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.memdev* %11)
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.memdev*, %struct.memdev** @devlist, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.memdev, %struct.memdev* %18, i64 %20
  store %struct.memdev* %21, %struct.memdev** %7, align 8
  %22 = load %struct.memdev*, %struct.memdev** %7, align 8
  %23 = getelementptr inbounds %struct.memdev, %struct.memdev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %17
  %30 = load %struct.memdev*, %struct.memdev** %7, align 8
  %31 = getelementptr inbounds %struct.memdev, %struct.memdev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.memdev*, %struct.memdev** %7, align 8
  %36 = getelementptr inbounds %struct.memdev, %struct.memdev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.memdev*, %struct.memdev** %7, align 8
  %43 = getelementptr inbounds %struct.memdev, %struct.memdev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.inode*, %struct.file*)**
  %47 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %46, align 8
  %48 = icmp ne i32 (%struct.inode*, %struct.file*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %29
  %50 = load %struct.memdev*, %struct.memdev** %7, align 8
  %51 = getelementptr inbounds %struct.memdev, %struct.memdev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.inode*, %struct.file*)**
  %55 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = call i32 %55(%struct.inode* %56, %struct.file* %57)
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %49, %26, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.memdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
