; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_window_init_dbgdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_window_init_dbgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i32*, %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"w%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@info_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hvwc\00", align 1
@hvwc_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vas_window_init_dbgdir(%struct.vas_window* %0) #0 {
  %2 = alloca %struct.vas_window*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.vas_window* %0, %struct.vas_window** %2, align 8
  %5 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %6 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %77

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kzalloc(i32 16, i32 %13)
  %15 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %16 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %18 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %77

22:                                               ; preds = %12
  %23 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %24 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %27 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snprintf(i32* %25, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %31 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %34 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.dentry* @debugfs_create_dir(i32* %32, i32 %37)
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = call i64 @IS_ERR(%struct.dentry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %70

43:                                               ; preds = %22
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %46 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %45, i32 0, i32 2
  store %struct.dentry* %44, %struct.dentry** %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %49 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %47, %struct.vas_window* %48, i32* @info_fops)
  store %struct.dentry* %49, %struct.dentry** %3, align 8
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = call i64 @IS_ERR(%struct.dentry* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %63

54:                                               ; preds = %43
  %55 = load %struct.dentry*, %struct.dentry** %4, align 8
  %56 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %57 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %55, %struct.vas_window* %56, i32* @hvwc_fops)
  store %struct.dentry* %57, %struct.dentry** %3, align 8
  %58 = load %struct.dentry*, %struct.dentry** %3, align 8
  %59 = call i64 @IS_ERR(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %54
  br label %77

63:                                               ; preds = %61, %53
  %64 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %65 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %64, i32 0, i32 2
  %66 = load %struct.dentry*, %struct.dentry** %65, align 8
  %67 = call i32 @debugfs_remove_recursive(%struct.dentry* %66)
  %68 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %69 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %68, i32 0, i32 2
  store %struct.dentry* null, %struct.dentry** %69, align 8
  br label %70

70:                                               ; preds = %63, %42
  %71 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %72 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.vas_window*, %struct.vas_window** %2, align 8
  %76 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %62, %21, %11
  ret void
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.vas_window*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
