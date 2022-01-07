; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_add_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_add_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@aoe_debugfs_dir = common dso_local global i32* null, align 8
@aoe_debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*)* @aoedisk_add_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoedisk_add_debugfs(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoedev*, align 8
  %3 = alloca i8*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %2, align 8
  %4 = load i32*, i32** @aoe_debugfs_dir, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %9 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 47)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %7
  %17 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %18 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %25

22:                                               ; preds = %7
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i8*, i8** %3, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = load i32*, i32** @aoe_debugfs_dir, align 8
  %34 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %35 = call i32 @debugfs_create_file(i8* %32, i32 292, i32* %33, %struct.aoedev* %34, i32* @aoe_debugfs_fops)
  %36 = load %struct.aoedev*, %struct.aoedev** %2, align 8
  %37 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %25, %6
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, %struct.aoedev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
