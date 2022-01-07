; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ppdev.c_pp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.pp_struct* }
%struct.pp_struct = type { i32*, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PARPORT_MAX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE1284_MODE_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_struct*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PARPORT_MAX, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pp_struct* @kmalloc(i32 40, i32 %17)
  store %struct.pp_struct* %18, %struct.pp_struct** %7, align 8
  %19 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %20 = icmp ne %struct.pp_struct* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %16
  %25 = load i32, i32* @IEEE1284_MODE_COMPAT, align 4
  %26 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %27 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %30 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @init_phase(i32 %32)
  %34 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %35 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %38 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %40 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %42 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %41, i32 0, i32 2
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %45 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %44, i32 0, i32 1
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %48 = getelementptr inbounds %struct.pp_struct, %struct.pp_struct* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.pp_struct*, %struct.pp_struct** %7, align 8
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  store %struct.pp_struct* %49, %struct.pp_struct** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %24, %21, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.pp_struct* @kmalloc(i32, i32) #1

declare dso_local i32 @init_phase(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
