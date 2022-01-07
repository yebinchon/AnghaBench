; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_del_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_mtrr.c_mtrr_del_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64*, i64*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@num_var_ranges = common dso_local global i32 0, align 4
@mtrr_mutex = common dso_local global i32 0, align 4
@mtrr_if = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"no MTRR for %lx000,%lx000 found\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"register: %d too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MTRR %d not used\0A\00", align 1
@mtrr_usage_table = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"reg: %d has count=0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtrr_del_page(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = call i32 (...) @mtrr_enabled()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %104

21:                                               ; preds = %3
  %22 = load i32, i32* @num_var_ranges, align 4
  store i32 %22, i32* %9, align 4
  %23 = call i32 (...) @get_online_cpus()
  %24 = call i32 @mutex_lock(i32* @mtrr_mutex)
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i64*, i64*, i32*)*, i32 (i32, i64*, i64*, i32*)** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %35(i32 %36, i64* %11, i64* %12, i32* %10)
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %28

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  br label %100

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %100

66:                                               ; preds = %59
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtrr_if, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (i32, i64*, i64*, i32*)*, i32 (i32, i64*, i64*, i32*)** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 %69(i32 %70, i64* %11, i64* %12, i32* %10)
  %72 = load i64, i64* %12, align 8
  %73 = icmp ult i64 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %100

77:                                               ; preds = %66
  %78 = load i32*, i32** @mtrr_usage_table, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %100

87:                                               ; preds = %77
  %88 = load i32*, i32** @mtrr_usage_table, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @set_mtrr_cpuslocked(i32 %96, i32 0, i32 0, i32 0)
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %84, %74, %63, %54
  %101 = call i32 @mutex_unlock(i32* @mtrr_mutex)
  %102 = call i32 (...) @put_online_cpus()
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %18
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @mtrr_enabled(...) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @set_mtrr_cpuslocked(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
