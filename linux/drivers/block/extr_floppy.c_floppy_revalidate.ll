; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }
%struct.gendisk = type { i64 }

@FD_DISK_CHANGED_BIT = common dso_local global i32 0, align 4
@UDRS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_VERIFY_BIT = common dso_local global i32 0, align 4
@fake_change = common dso_local global i32 0, align 4
@usage_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VFS: revalidate called on non-open device.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@buffer_drive = common dso_local global i32 0, align 4
@buffer_track = common dso_local global i32 0, align 4
@opened_bdev = common dso_local global i32* null, align 8
@FD_RAW_NEED_DISK = common dso_local global i32 0, align 4
@floppy_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @floppy_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floppy_revalidate(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @FD_DISK_CHANGED_BIT, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @FD_VERIFY_BIT, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @test_bit(i32 %23, i32* @fake_change)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @drive_no_geom(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %26, %22, %16, %1
  %31 = call i64 @atomic_read(i32* @usage_count)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %127

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @lock_fdc(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %127

46:                                               ; preds = %39
  %47 = load i32, i32* @FD_DISK_CHANGED_BIT, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i64 @test_bit(i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @FD_VERIFY_BIT, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ true, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @test_bit(i32 %64, i32* @fake_change)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = call i64 @drive_no_geom(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 (...) @process_fd_request()
  store i32 0, i32* %2, align 4
  br label %127

73:                                               ; preds = %67, %63, %58
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @buffer_drive, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store i32 -1, i32* @buffer_track, align 4
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @clear_bit(i32 %83, i32* @fake_change)
  %85 = load i32, i32* @FD_DISK_CHANGED_BIT, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %91, %82
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @drive_no_geom(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32*, i32** @opened_bdev, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @__floppy_read_block_0(i32 %105, i32 %106)
  store i32 %107, i32* %6, align 4
  br label %116

108:                                              ; preds = %96
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %113 = call i32 @poll_drive(i32 0, i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = call i32 (...) @process_fd_request()
  br label %116

116:                                              ; preds = %114, %100
  br label %117

117:                                              ; preds = %116, %26
  %118 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %119 = load i32*, i32** @floppy_sizes, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @UDRS, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @set_capacity(%struct.gendisk* %118, i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %117, %71, %44, %36
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @drive_no_geom(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @lock_fdc(i32) #1

declare dso_local i32 @process_fd_request(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__floppy_read_block_0(i32, i32) #1

declare dso_local i32 @poll_drive(i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
