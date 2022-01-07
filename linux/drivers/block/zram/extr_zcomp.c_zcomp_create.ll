; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcomp = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zcomp* @zcomp_create(i8* %0) #0 {
  %2 = alloca %struct.zcomp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.zcomp*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @zcomp_available_algorithm(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.zcomp* @ERR_PTR(i32 %11)
  store %struct.zcomp* %12, %struct.zcomp** %2, align 8
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.zcomp* @kzalloc(i32 8, i32 %14)
  store %struct.zcomp* %15, %struct.zcomp** %4, align 8
  %16 = load %struct.zcomp*, %struct.zcomp** %4, align 8
  %17 = icmp ne %struct.zcomp* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.zcomp* @ERR_PTR(i32 %20)
  store %struct.zcomp* %21, %struct.zcomp** %2, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.zcomp*, %struct.zcomp** %4, align 8
  %25 = getelementptr inbounds %struct.zcomp, %struct.zcomp* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.zcomp*, %struct.zcomp** %4, align 8
  %27 = call i32 @zcomp_init(%struct.zcomp* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.zcomp*, %struct.zcomp** %4, align 8
  %32 = call i32 @kfree(%struct.zcomp* %31)
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.zcomp* @ERR_PTR(i32 %33)
  store %struct.zcomp* %34, %struct.zcomp** %2, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load %struct.zcomp*, %struct.zcomp** %4, align 8
  store %struct.zcomp* %36, %struct.zcomp** %2, align 8
  br label %37

37:                                               ; preds = %35, %30, %18, %9
  %38 = load %struct.zcomp*, %struct.zcomp** %2, align 8
  ret %struct.zcomp* %38
}

declare dso_local i32 @zcomp_available_algorithm(i8*) #1

declare dso_local %struct.zcomp* @ERR_PTR(i32) #1

declare dso_local %struct.zcomp* @kzalloc(i32, i32) #1

declare dso_local i32 @zcomp_init(%struct.zcomp*) #1

declare dso_local i32 @kfree(%struct.zcomp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
