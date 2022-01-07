; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypfs_dbfs_file = type { i32, i32, i32 }

@dbfs_dir = common dso_local global i32 0, align 4
@dbfs_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hypfs_dbfs_create_file(%struct.hypfs_dbfs_file* %0) #0 {
  %2 = alloca %struct.hypfs_dbfs_file*, align 8
  store %struct.hypfs_dbfs_file* %0, %struct.hypfs_dbfs_file** %2, align 8
  %3 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %2, align 8
  %4 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @dbfs_dir, align 4
  %7 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %2, align 8
  %8 = call i32 @debugfs_create_file(i32 %5, i32 256, i32 %6, %struct.hypfs_dbfs_file* %7, i32* @dbfs_ops)
  %9 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %2, align 8
  %10 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %2, align 8
  %12 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %11, i32 0, i32 0
  %13 = call i32 @mutex_init(i32* %12)
  ret void
}

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.hypfs_dbfs_file*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
