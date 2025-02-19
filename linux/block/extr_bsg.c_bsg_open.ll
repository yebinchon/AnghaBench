; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_open.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.bsg_device* }
%struct.bsg_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bsg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bsg_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = call %struct.bsg_device* @bsg_get_device(%struct.inode* %7, %struct.file* %8)
  store %struct.bsg_device* %9, %struct.bsg_device** %6, align 8
  %10 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %11 = call i64 @IS_ERR(%struct.bsg_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.bsg_device* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.bsg_device*, %struct.bsg_device** %6, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  store %struct.bsg_device* %17, %struct.bsg_device** %19, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.bsg_device* @bsg_get_device(%struct.inode*, %struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.bsg_device*) #1

declare dso_local i32 @PTR_ERR(%struct.bsg_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
