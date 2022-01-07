; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }

@N_DRIVE = common dso_local global i32 0, align 4
@floppy_type = common dso_local global i32 0, align 4
@disks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (i32, i32*, i8*)* @floppy_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @floppy_find(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 3
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 128
  %15 = ashr i32 %14, 5
  %16 = or i32 %11, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @N_DRIVE, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @floppy_available(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %3
  store %struct.kobject* null, %struct.kobject** %4, align 8
  br label %42

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = and i32 %28, 31
  %30 = load i32, i32* @floppy_type, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store %struct.kobject* null, %struct.kobject** %4, align 8
  br label %42

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** @disks, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.kobject* @get_disk_and_module(i32 %40)
  store %struct.kobject* %41, %struct.kobject** %4, align 8
  br label %42

42:                                               ; preds = %34, %33, %24
  %43 = load %struct.kobject*, %struct.kobject** %4, align 8
  ret %struct.kobject* %43
}

declare dso_local i32 @floppy_available(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.kobject* @get_disk_and_module(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
