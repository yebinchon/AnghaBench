; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wakeup_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wakeup_source* @wakeup_source_create(i8* %0) #0 {
  %2 = alloca %struct.wakeup_source*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wakeup_source*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wakeup_source* @kzalloc(i32 16, i32 %7)
  store %struct.wakeup_source* %8, %struct.wakeup_source** %4, align 8
  %9 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %10 = icmp ne %struct.wakeup_source* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kstrdup_const(i8* %13, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %38

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %22 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @ida_alloc(i32* @wakeup_ida, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %31 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  store %struct.wakeup_source* %32, %struct.wakeup_source** %2, align 8
  br label %42

33:                                               ; preds = %27
  %34 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %35 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @kfree_const(i8* %36)
  br label %38

38:                                               ; preds = %33, %18
  %39 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %40 = call i32 @kfree(%struct.wakeup_source* %39)
  br label %41

41:                                               ; preds = %38, %11
  store %struct.wakeup_source* null, %struct.wakeup_source** %2, align 8
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  ret %struct.wakeup_source* %43
}

declare dso_local %struct.wakeup_source* @kzalloc(i32, i32) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local i32 @ida_alloc(i32*, i32) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @kfree(%struct.wakeup_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
