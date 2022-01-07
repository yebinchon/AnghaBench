; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_create_index_dir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_create_index_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.cache_dir = type { %struct.cache_index_dir*, i32 }
%struct.cache_index_dir = type { %struct.cache_index_dir*, i32, %struct.cache* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cache_index_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"index%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32, %struct.cache_dir*)* @cacheinfo_create_index_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheinfo_create_index_dir(%struct.cache* %0, i32 %1, %struct.cache_dir* %2) #0 {
  %4 = alloca %struct.cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_dir*, align 8
  %7 = alloca %struct.cache_index_dir*, align 8
  %8 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cache_dir* %2, %struct.cache_dir** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.cache_index_dir* @kzalloc(i32 24, i32 %9)
  store %struct.cache_index_dir* %10, %struct.cache_index_dir** %7, align 8
  %11 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %12 = icmp ne %struct.cache_index_dir* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.cache*, %struct.cache** %4, align 8
  %16 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %17 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %16, i32 0, i32 2
  store %struct.cache* %15, %struct.cache** %17, align 8
  %18 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %19 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %18, i32 0, i32 1
  %20 = load %struct.cache_dir*, %struct.cache_dir** %6, align 8
  %21 = getelementptr inbounds %struct.cache_dir, %struct.cache_dir* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @kobject_init_and_add(i32* %19, i32* @cache_index_type, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %29 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %28, i32 0, i32 1
  %30 = call i32 @kobject_put(i32* %29)
  br label %42

31:                                               ; preds = %14
  %32 = load %struct.cache_dir*, %struct.cache_dir** %6, align 8
  %33 = getelementptr inbounds %struct.cache_dir, %struct.cache_dir* %32, i32 0, i32 0
  %34 = load %struct.cache_index_dir*, %struct.cache_index_dir** %33, align 8
  %35 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %36 = getelementptr inbounds %struct.cache_index_dir, %struct.cache_index_dir* %35, i32 0, i32 0
  store %struct.cache_index_dir* %34, %struct.cache_index_dir** %36, align 8
  %37 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %38 = load %struct.cache_dir*, %struct.cache_dir** %6, align 8
  %39 = getelementptr inbounds %struct.cache_dir, %struct.cache_dir* %38, i32 0, i32 0
  store %struct.cache_index_dir* %37, %struct.cache_index_dir** %39, align 8
  %40 = load %struct.cache_index_dir*, %struct.cache_index_dir** %7, align 8
  %41 = call i32 @cacheinfo_create_index_opt_attrs(%struct.cache_index_dir* %40)
  br label %42

42:                                               ; preds = %31, %27, %13
  ret void
}

declare dso_local %struct.cache_index_dir* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @cacheinfo_create_index_opt_attrs(%struct.cache_index_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
