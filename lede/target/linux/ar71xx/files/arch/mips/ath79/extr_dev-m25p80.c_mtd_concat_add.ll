; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_dev-m25p80.c_mtd_concat_add.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_dev-m25p80.c_mtd_concat_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@mtd_concat_add.registered = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"spi0.0\00", align 1
@concat_devs = common dso_local global %struct.mtd_info** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"spi0.1\00", align 1
@mtd_concat_work = common dso_local global i32 0, align 4
@mtd_concat_add_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @mtd_concat_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtd_concat_add(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %3 = load i32, i32* @mtd_concat_add.registered, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %43

6:                                                ; preds = %1
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @strcmp(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %14 = load %struct.mtd_info**, %struct.mtd_info*** @concat_devs, align 8
  %15 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %14, i64 0
  store %struct.mtd_info* %13, %struct.mtd_info** %15, align 8
  br label %28

16:                                               ; preds = %6
  %17 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %24 = load %struct.mtd_info**, %struct.mtd_info*** @concat_devs, align 8
  %25 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %24, i64 1
  store %struct.mtd_info* %23, %struct.mtd_info** %25, align 8
  br label %27

26:                                               ; preds = %16
  br label %43

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.mtd_info**, %struct.mtd_info*** @concat_devs, align 8
  %30 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %29, i64 0
  %31 = load %struct.mtd_info*, %struct.mtd_info** %30, align 8
  %32 = icmp ne %struct.mtd_info* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.mtd_info**, %struct.mtd_info*** @concat_devs, align 8
  %35 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %34, i64 1
  %36 = load %struct.mtd_info*, %struct.mtd_info** %35, align 8
  %37 = icmp ne %struct.mtd_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %28
  br label %43

39:                                               ; preds = %33
  store i32 1, i32* @mtd_concat_add.registered, align 4
  %40 = load i32, i32* @mtd_concat_add_work, align 4
  %41 = call i32 @INIT_WORK(i32* @mtd_concat_work, i32 %40)
  %42 = call i32 @schedule_work(i32* @mtd_concat_work)
  br label %43

43:                                               ; preds = %39, %38, %26, %5
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
