; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.charlcd_priv = type { i32, i32 }

@the_charlcd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@charlcd_available = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @charlcd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charlcd_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.charlcd_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @the_charlcd, align 4
  %9 = call %struct.charlcd_priv* @charlcd_to_priv(i32 %8)
  store %struct.charlcd_priv* %9, %struct.charlcd_priv** %6, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = call i32 @atomic_dec_and_test(i32* @charlcd_available)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %40

15:                                               ; preds = %2
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FMODE_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.charlcd_priv*, %struct.charlcd_priv** %6, align 8
  %27 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.charlcd_priv*, %struct.charlcd_priv** %6, align 8
  %32 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %31, i32 0, i32 1
  %33 = call i32 @charlcd_clear_display(i32* %32)
  %34 = load %struct.charlcd_priv*, %struct.charlcd_priv** %6, align 8
  %35 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = call i32 @nonseekable_open(%struct.inode* %37, %struct.file* %38)
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %24, %14
  %41 = call i32 @atomic_inc(i32* @charlcd_available)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @charlcd_clear_display(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
