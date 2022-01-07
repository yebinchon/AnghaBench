; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_hpet.c_hpet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_hpet.c_hpet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpets = type { i32, %struct.hpet_dev*, %struct.hpets* }
%struct.hpet_dev = type { i32, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.hpet_dev* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hpet_mutex = common dso_local global i32 0, align 4
@hpet_lock = common dso_local global i32 0, align 4
@hpets = common dso_local global %struct.hpets* null, align 8
@HPET_OPEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hpet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.hpet_dev*, align 8
  %7 = alloca %struct.hpets*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FMODE_WRITE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %89

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @hpet_mutex)
  %20 = call i32 @spin_lock_irq(i32* @hpet_lock)
  store %struct.hpet_dev* null, %struct.hpet_dev** %6, align 8
  %21 = load %struct.hpets*, %struct.hpets** @hpets, align 8
  store %struct.hpets* %21, %struct.hpets** %7, align 8
  br label %22

22:                                               ; preds = %62, %18
  %23 = load %struct.hpets*, %struct.hpets** %7, align 8
  %24 = icmp ne %struct.hpets* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %27 = icmp ne %struct.hpet_dev* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %66

31:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.hpets*, %struct.hpets** %7, align 8
  %35 = getelementptr inbounds %struct.hpets, %struct.hpets* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load %struct.hpets*, %struct.hpets** %7, align 8
  %40 = getelementptr inbounds %struct.hpets, %struct.hpets* %39, i32 0, i32 1
  %41 = load %struct.hpet_dev*, %struct.hpet_dev** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %41, i64 %43
  %45 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @HPET_OPEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %58

51:                                               ; preds = %38
  %52 = load %struct.hpets*, %struct.hpets** %7, align 8
  %53 = getelementptr inbounds %struct.hpets, %struct.hpets* %52, i32 0, i32 1
  %54 = load %struct.hpet_dev*, %struct.hpet_dev** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %54, i64 %56
  store %struct.hpet_dev* %57, %struct.hpet_dev** %6, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %32

61:                                               ; preds = %51, %32
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.hpets*, %struct.hpets** %7, align 8
  %64 = getelementptr inbounds %struct.hpets, %struct.hpets* %63, i32 0, i32 2
  %65 = load %struct.hpets*, %struct.hpets** %64, align 8
  store %struct.hpets* %65, %struct.hpets** %7, align 8
  br label %22

66:                                               ; preds = %29
  %67 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %68 = icmp ne %struct.hpet_dev* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = call i32 @spin_unlock_irq(i32* @hpet_lock)
  %71 = call i32 @mutex_unlock(i32* @hpet_mutex)
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %89

74:                                               ; preds = %66
  %75 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 1
  store %struct.hpet_dev* %75, %struct.hpet_dev** %77, align 8
  %78 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %79 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @HPET_OPEN, align 4
  %81 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %82 = getelementptr inbounds %struct.hpet_dev, %struct.hpet_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = call i32 @spin_unlock_irq(i32* @hpet_lock)
  %86 = call i32 @mutex_unlock(i32* @hpet_mutex)
  %87 = load %struct.hpet_dev*, %struct.hpet_dev** %6, align 8
  %88 = call i32 @hpet_timer_set_irq(%struct.hpet_dev* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %74, %69, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hpet_timer_set_irq(%struct.hpet_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
