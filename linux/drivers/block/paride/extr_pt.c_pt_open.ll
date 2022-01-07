; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, i32, i32, i32*, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.pt_unit* }

@pt = common dso_local global %struct.pt_unit* null, align 8
@pt_mutex = common dso_local global i32 0, align 4
@PT_UNITS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PT_MEDIA = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@PT_WRITE_OK = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@PT_REWIND = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PT_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: buffer allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @pt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_unit*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  %11 = and i32 %10, 127
  store i32 %11, i32* %6, align 4
  %12 = load %struct.pt_unit*, %struct.pt_unit** @pt, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %12, i64 %14
  store %struct.pt_unit* %15, %struct.pt_unit** %7, align 8
  %16 = call i32 @mutex_lock(i32* @pt_mutex)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PT_UNITS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %22 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20, %2
  %26 = call i32 @mutex_unlock(i32* @pt_mutex)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %105

29:                                               ; preds = %20
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %33 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %32, i32 0, i32 1
  %34 = call i32 @atomic_dec_and_test(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %99

37:                                               ; preds = %29
  %38 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %39 = call i32 @pt_identify(%struct.pt_unit* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %43 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PT_MEDIA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %99

49:                                               ; preds = %37
  %50 = load i32, i32* @EROFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %53 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PT_WRITE_OK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %49
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FMODE_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %99

66:                                               ; preds = %58, %49
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @iminor(%struct.inode* %67)
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @PT_REWIND, align 4
  %73 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %74 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @PT_BUFSIZE, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32* @kmalloc(i32 %80, i32 %81)
  %83 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %84 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %86 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %77
  %90 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %91 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %99

94:                                               ; preds = %77
  %95 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 1
  store %struct.pt_unit* %95, %struct.pt_unit** %97, align 8
  %98 = call i32 @mutex_unlock(i32* @pt_mutex)
  store i32 0, i32* %3, align 4
  br label %105

99:                                               ; preds = %89, %65, %48, %36
  %100 = load %struct.pt_unit*, %struct.pt_unit** %7, align 8
  %101 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %100, i32 0, i32 1
  %102 = call i32 @atomic_inc(i32* %101)
  %103 = call i32 @mutex_unlock(i32* @pt_mutex)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %94, %25
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @pt_identify(%struct.pt_unit*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
