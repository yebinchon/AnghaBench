; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_create_index_opt_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_create_index_opt_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_attribute = type { i64 (i32*, %struct.kobj_attribute*, i8*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cache_index_dir = type { i32, %struct.cache* }
%struct.cache = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cache_index_opt_attrs = common dso_local global %struct.kobj_attribute** null, align 8
@.str = private unnamed_addr constant [51 x i8] c"not creating %s attribute for %pOF(%s) (rc = %zd)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"could not create %s attribute for %pOF(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_index_dir*)* @cacheinfo_create_index_opt_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheinfo_create_index_opt_attrs(%struct.cache_index_dir* %0) #0 {
  %2 = alloca %struct.cache_index_dir*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i64, align 8
  store %struct.cache_index_dir* %0, %struct.cache_index_dir** %2, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.cache_index_dir*, %struct.cache_index_dir** %2, align 8
  %17 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %16, i32 0, i32 1
  %18 = load %struct.cache*, %struct.cache** %17, align 8
  store %struct.cache* %18, %struct.cache** %4, align 8
  %19 = load %struct.cache*, %struct.cache** %4, align 8
  %20 = call i8* @cache_type_string(%struct.cache* %19)
  store i8* %20, i8** %3, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %71, %15
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.kobj_attribute**, %struct.kobj_attribute*** @cache_index_opt_attrs, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.kobj_attribute** %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load %struct.kobj_attribute**, %struct.kobj_attribute*** @cache_index_opt_attrs, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kobj_attribute*, %struct.kobj_attribute** %27, i64 %29
  %31 = load %struct.kobj_attribute*, %struct.kobj_attribute** %30, align 8
  store %struct.kobj_attribute* %31, %struct.kobj_attribute** %7, align 8
  %32 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %33 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %32, i32 0, i32 0
  %34 = load i64 (i32*, %struct.kobj_attribute*, i8*)*, i64 (i32*, %struct.kobj_attribute*, i8*)** %33, align 8
  %35 = load %struct.cache_index_dir*, %struct.cache_index_dir** %2, align 8
  %36 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %35, i32 0, i32 0
  %37 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 %34(i32* %36, %struct.kobj_attribute* %37, i8* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %26
  %43 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %44 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cache*, %struct.cache** %4, align 8
  %48 = getelementptr inbounds %struct.cache, %struct.cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 (i8*, i32, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i8* %50, i64 %51)
  br label %71

53:                                               ; preds = %26
  %54 = load %struct.cache_index_dir*, %struct.cache_index_dir** %2, align 8
  %55 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %54, i32 0, i32 0
  %56 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %57 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %56, i32 0, i32 1
  %58 = call i64 @sysfs_create_file(i32* %55, %struct.TYPE_2__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.kobj_attribute*, %struct.kobj_attribute** %7, align 8
  %62 = getelementptr inbounds %struct.kobj_attribute, %struct.kobj_attribute* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cache*, %struct.cache** %4, align 8
  %66 = getelementptr inbounds %struct.cache, %struct.cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i8*, i32, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i8* %68)
  br label %70

70:                                               ; preds = %60, %53
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %21

74:                                               ; preds = %21
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @kfree(i8* %75)
  br label %77

77:                                               ; preds = %74, %14
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @cache_type_string(%struct.cache*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kobj_attribute**) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i8*, ...) #1

declare dso_local i64 @sysfs_create_file(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
