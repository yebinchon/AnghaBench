; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_single_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_single_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.seq_file = type opaque
%struct.kref = type { i32 }
%struct.seq_file.0 = type opaque

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32 (%struct.seq_file*, i8*)*, i8*, %struct.kref*, void (%struct.kref*)*)* @drbd_single_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* %1, i8* %2, %struct.kref* %3, void (%struct.kref*)* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kref*, align 8
  %10 = alloca void (%struct.kref*)*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 (%struct.seq_file*, i8*)* %1, i32 (%struct.seq_file*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.kref* %3, %struct.kref** %9, align 8
  store void (%struct.kref*)* %4, void (%struct.kref*)** %10, align 8
  %13 = load i32, i32* @ESTALE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %11, align 8
  %21 = load %struct.dentry*, %struct.dentry** %11, align 8
  %22 = call i32 @d_inode(%struct.dentry* %21)
  %23 = call i32 @inode_lock(i32 %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i64 @simple_positive(%struct.TYPE_4__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.kref*, %struct.kref** %9, align 8
  %32 = call i64 @kref_get_unless_zero(%struct.kref* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %30, %5
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = call i32 @d_inode(%struct.dentry* %36)
  %38 = call i32 @inode_unlock(i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %7, align 8
  %44 = bitcast i32 (%struct.seq_file*, i8*)* %43 to i32 (%struct.seq_file.0*, i8*)*
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @single_open(%struct.file* %42, i32 (%struct.seq_file.0*, i8*)* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.kref*, %struct.kref** %9, align 8
  %51 = load void (%struct.kref*)*, void (%struct.kref*)** %10, align 8
  %52 = call i32 @kref_put(%struct.kref* %50, void (%struct.kref*)* %51)
  br label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @simple_positive(%struct.TYPE_4__*) #1

declare dso_local i64 @kref_get_unless_zero(%struct.kref*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @single_open(%struct.file*, i32 (%struct.seq_file.0*, i8*)*, i8*) #1

declare dso_local i32 @kref_put(%struct.kref*, void (%struct.kref*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
