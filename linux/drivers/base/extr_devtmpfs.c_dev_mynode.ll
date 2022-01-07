; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_mynode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devtmpfs.c_dev_mynode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.inode = type { i32* }
%struct.kstat = type { i64, i32 }

@thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.inode*, %struct.kstat*)* @dev_mynode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_mynode(%struct.device* %0, %struct.inode* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.kstat*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %6, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @thread
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i64 @is_blockdev(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.kstat*, %struct.kstat** %7, align 8
  %19 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @S_ISBLK(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %43

24:                                               ; preds = %17
  br label %33

25:                                               ; preds = %13
  %26 = load %struct.kstat*, %struct.kstat** %7, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISCHR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %43

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.kstat*, %struct.kstat** %7, align 8
  %35 = getelementptr inbounds %struct.kstat, %struct.kstat* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %43

42:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %31, %23, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @is_blockdev(%struct.device*) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
