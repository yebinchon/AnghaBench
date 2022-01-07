; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_memtrace.c_memtrace_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memtrace_entry = type { i32, i32, i32, %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@memtrace_array_nr = common dso_local global i32 0, align 4
@memtrace_array = common dso_local global %struct.memtrace_entry* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to map trace memory at 0x%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@memtrace_debugfs_dir = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to create debugfs directory for node %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@memtrace_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @memtrace_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memtrace_init_debugfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.memtrace_entry*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %68, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @memtrace_array_nr, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = load %struct.memtrace_entry*, %struct.memtrace_entry** @memtrace_array, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %11, i64 %13
  store %struct.memtrace_entry* %14, %struct.memtrace_entry** %5, align 8
  %15 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %16 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %19 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ioremap(i32 %17, i32 %20)
  %22 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %23 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %25 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %10
  %29 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %30 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %2, align 4
  br label %68

33:                                               ; preds = %10
  %34 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %35 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %38 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snprintf(i32 %36, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %42 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @memtrace_debugfs_dir, align 4
  %45 = call %struct.dentry* @debugfs_create_dir(i32 %43, i32 %44)
  store %struct.dentry* %45, %struct.dentry** %4, align 8
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = icmp ne %struct.dentry* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %33
  %49 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %50 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %1, align 4
  br label %73

53:                                               ; preds = %33
  %54 = load %struct.dentry*, %struct.dentry** %4, align 8
  %55 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %56 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %55, i32 0, i32 3
  store %struct.dentry* %54, %struct.dentry** %56, align 8
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %59 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %57, %struct.memtrace_entry* %58, i32* @memtrace_fops)
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %62 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %61, i32 0, i32 0
  %63 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 256, %struct.dentry* %60, i32* %62)
  %64 = load %struct.dentry*, %struct.dentry** %4, align 8
  %65 = load %struct.memtrace_entry*, %struct.memtrace_entry** %5, align 8
  %66 = getelementptr inbounds %struct.memtrace_entry, %struct.memtrace_entry* %65, i32 0, i32 1
  %67 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 256, %struct.dentry* %64, i32* %66)
  br label %68

68:                                               ; preds = %53, %28
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %6

71:                                               ; preds = %6
  %72 = load i32, i32* %2, align 4
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %71, %48
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.memtrace_entry*, i32*) #1

declare dso_local i32 @debugfs_create_x64(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
