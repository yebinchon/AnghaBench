; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_instance_init_dbgdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-debug.c_vas_instance_init_dbgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_instance = type { i32, %struct.dentry*, i32* }
%struct.dentry = type { i32 }

@vas_debugfs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"v%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vas_instance_init_dbgdir(%struct.vas_instance* %0) #0 {
  %2 = alloca %struct.vas_instance*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.vas_instance* %0, %struct.vas_instance** %2, align 8
  %4 = call i32 (...) @vas_init_dbgdir()
  %5 = load i32, i32* @vas_debugfs, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kzalloc(i32 16, i32 %9)
  %11 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  %13 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %14 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  br label %48

18:                                               ; preds = %8
  %19 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %20 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %23 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i32* %21, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %27 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @vas_debugfs, align 4
  %30 = call %struct.dentry* @debugfs_create_dir(i32* %28, i32 %29)
  store %struct.dentry* %30, %struct.dentry** %3, align 8
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = call i64 @IS_ERR(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %39

35:                                               ; preds = %18
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  %37 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %38 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %37, i32 0, i32 1
  store %struct.dentry* %36, %struct.dentry** %38, align 8
  br label %48

39:                                               ; preds = %34
  %40 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %41 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %45 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.vas_instance*, %struct.vas_instance** %2, align 8
  %47 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %46, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %47, align 8
  br label %48

48:                                               ; preds = %39, %35, %17, %7
  ret void
}

declare dso_local i32 @vas_init_dbgdir(...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
