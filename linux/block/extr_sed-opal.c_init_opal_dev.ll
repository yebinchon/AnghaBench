; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_init_opal_dev.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_init_opal_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Opal is not supported on this device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.opal_dev* @init_opal_dev(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.opal_dev*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.opal_dev* @kmalloc(i32 24, i32 %7)
  store %struct.opal_dev* %8, %struct.opal_dev** %6, align 8
  %9 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %10 = icmp ne %struct.opal_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.opal_dev* null, %struct.opal_dev** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %14 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %17 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %16, i32 0, i32 2
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %21 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %24 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %26 = call i64 @check_opal_support(%struct.opal_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  %31 = call i32 @kfree(%struct.opal_dev* %30)
  store %struct.opal_dev* null, %struct.opal_dev** %3, align 8
  br label %34

32:                                               ; preds = %12
  %33 = load %struct.opal_dev*, %struct.opal_dev** %6, align 8
  store %struct.opal_dev* %33, %struct.opal_dev** %3, align 8
  br label %34

34:                                               ; preds = %32, %28, %11
  %35 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  ret %struct.opal_dev* %35
}

declare dso_local %struct.opal_dev* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @check_opal_support(%struct.opal_dev*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kfree(%struct.opal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
