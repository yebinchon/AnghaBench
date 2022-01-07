; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_register_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_register_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@fw_dump = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fadump_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Un-register firmware-assisted dump\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @fadump_register_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_register_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 3), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 2), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %66

20:                                               ; preds = %14
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtoint(i8* %21, i32 0, i32* %11)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %20
  %28 = call i32 @mutex_lock(i32* @fadump_mutex)
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %50 [
    i32 0, label %30
    i32 1, label %40
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 0), align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %54

34:                                               ; preds = %30
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 1), align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %37, align 8
  %39 = call i32 %38(%struct.TYPE_6__* @fw_dump)
  br label %53

40:                                               ; preds = %27
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 0), align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw_dump, i32 0, i32 1), align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %45, align 8
  %47 = call i32 %46(%struct.TYPE_6__* @fw_dump)
  br label %48

48:                                               ; preds = %43, %40
  %49 = call i32 (...) @register_fadump()
  store i32 %49, i32* %10, align 4
  br label %53

50:                                               ; preds = %27
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %48, %34
  br label %54

54:                                               ; preds = %53, %33
  %55 = call i32 @mutex_unlock(i32* @fadump_mutex)
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  br label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %9, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i64 [ %60, %58 ], [ %62, %61 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %24, %17
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @register_fadump(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
