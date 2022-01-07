; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_dyndev.c_dyn_dev_register.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_dyndev.c_dyn_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.dev_ops** }
%struct.dev_ops = type { i32 }

@MAX_MINOR = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@DYN_DEV_MAJOR = common dso_local global i32 0, align 4
@DEV_CHAR = common dso_local global i32 0, align 4
@dyn_info_char = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dyn_dev_register(%struct.dev_ops* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dev_ops* %0, %struct.dev_ops** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MAX_MINOR, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %4
  %17 = load i32, i32* @_EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %53

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DYN_DEV_MAJOR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @_EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.dev_ops*, %struct.dev_ops** %6, align 8
  %26 = icmp eq %struct.dev_ops* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @_EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DEV_CHAR, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @_EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %29
  %36 = call i32 @lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dyn_info_char, i32 0, i32 0))
  %37 = load %struct.dev_ops**, %struct.dev_ops*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dyn_info_char, i32 0, i32 1), align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dev_ops*, %struct.dev_ops** %37, i64 %39
  %41 = load %struct.dev_ops*, %struct.dev_ops** %40, align 8
  %42 = icmp ne %struct.dev_ops* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 @unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dyn_info_char, i32 0, i32 0))
  %45 = load i32, i32* @_EEXIST, align 4
  store i32 %45, i32* %5, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.dev_ops*, %struct.dev_ops** %6, align 8
  %48 = load %struct.dev_ops**, %struct.dev_ops*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dyn_info_char, i32 0, i32 1), align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dev_ops*, %struct.dev_ops** %48, i64 %50
  store %struct.dev_ops* %47, %struct.dev_ops** %51, align 8
  %52 = call i32 @unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dyn_info_char, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %46, %43, %33, %27, %22, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
