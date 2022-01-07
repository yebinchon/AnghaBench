; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i8*, i32, i32, i32, %struct.vio_driver_ops*, %struct.vio_version*, %struct.vio_dev*, i32 }
%struct.vio_dev = type { i32 }
%struct.vio_version = type { i32 }
%struct.vio_driver_ops = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@vio_port_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_driver_init(%struct.vio_driver_state* %0, %struct.vio_dev* %1, i32 %2, %struct.vio_version* %3, i32 %4, %struct.vio_driver_ops* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vio_driver_state*, align 8
  %10 = alloca %struct.vio_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vio_version*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vio_driver_ops*, align 8
  %15 = alloca i8*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %9, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.vio_version* %3, %struct.vio_version** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.vio_driver_ops* %5, %struct.vio_driver_ops** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i32, i32* %11, align 4
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 132, label %17
  ]

17:                                               ; preds = %7, %7, %7, %7, %7
  br label %21

18:                                               ; preds = %7
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %96

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 131
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %55

33:                                               ; preds = %30, %27, %24, %21
  %34 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %35 = icmp ne %struct.vio_driver_ops* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %38 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %43 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %48 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %41, %36, %33
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %96

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.vio_version*, %struct.vio_version** %12, align 8
  %57 = icmp ne %struct.vio_version* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %96

64:                                               ; preds = %58
  %65 = load i8*, i8** %15, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %96

70:                                               ; preds = %64
  %71 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %72 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %71, i32 0, i32 7
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %76 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %79 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %81 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %82 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %81, i32 0, i32 6
  store %struct.vio_dev* %80, %struct.vio_dev** %82, align 8
  %83 = load %struct.vio_version*, %struct.vio_version** %12, align 8
  %84 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %85 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %84, i32 0, i32 5
  store %struct.vio_version* %83, %struct.vio_version** %85, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %88 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %90 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %91 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %90, i32 0, i32 4
  store %struct.vio_driver_ops* %89, %struct.vio_driver_ops** %91, align 8
  %92 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %93 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %92, i32 0, i32 3
  %94 = load i32, i32* @vio_port_timer, align 4
  %95 = call i32 @timer_setup(i32* %93, i32 %94, i32 0)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %70, %67, %61, %51, %18
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
