; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_register_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_register_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"Root becomes the owner of all s390dbf files in sysfs\0A\00", align 1
@initialized = common dso_local global i32 0, align 4
@debug_mutex = common dso_local global i32 0, align 4
@debug_level_view = common dso_local global i32 0, align 4
@debug_flush_view = common dso_local global i32 0, align 4
@debug_pages_view = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Registering debug feature %s failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @debug_register_mode(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load i64, i64* %14, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %7
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @initialized, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = call i32 @mutex_lock(i32* @debug_mutex)
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32* @debug_info_create(i8* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  br label %46

39:                                               ; preds = %23
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @debug_register_view(i32* %40, i32* @debug_level_view)
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @debug_register_view(i32* %42, i32* @debug_flush_view)
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @debug_register_view(i32* %44, i32* @debug_pages_view)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32*, i32** %15, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = call i32 @mutex_unlock(i32* @debug_mutex)
  %54 = load i32*, i32** %15, align 8
  ret i32* %54
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @debug_info_create(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @debug_register_view(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
