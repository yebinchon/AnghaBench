; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_free_memtype.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c_free_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i64, i64)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.memtype = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@x86_platform = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@memtype_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"x86/PAT: %s:%d freeing invalid memtype [mem %#010Lx-%#010Lx]\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"free_memtype request [mem %#010Lx-%#010Lx]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_memtype(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.memtype*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = call i32 (...) @pat_enabled()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @sanitize_phys(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @sanitize_phys(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_platform, i32 0, i32 0), align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 %19(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %72

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @pat_pagerange_is_ram(i64 %26, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @free_ram_pages_type(i64 %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %72

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = call i32 @spin_lock(i32* @memtype_lock)
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call %struct.memtype* @rbt_memtype_erase(i64 %45, i64 %46)
  store %struct.memtype* %47, %struct.memtype** %8, align 8
  %48 = call i32 @spin_unlock(i32* @memtype_lock)
  %49 = load %struct.memtype*, %struct.memtype** %8, align 8
  %50 = call i64 @IS_ERR(%struct.memtype* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i64 %59, i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %43
  %66 = load %struct.memtype*, %struct.memtype** %8, align 8
  %67 = call i32 @kfree(%struct.memtype* %66)
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %52, %39, %31, %24, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pat_enabled(...) #1

declare dso_local i64 @sanitize_phys(i64) #1

declare dso_local i32 @pat_pagerange_is_ram(i64, i64) #1

declare dso_local i32 @free_ram_pages_type(i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.memtype* @rbt_memtype_erase(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.memtype*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @kfree(%struct.memtype*) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
