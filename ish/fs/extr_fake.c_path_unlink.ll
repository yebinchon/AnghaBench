; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_path_unlink.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_path_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"path_unlink(%s): nonexistent path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i8*)* @path_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_unlink(%struct.mount* %0, i8* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.mount*, %struct.mount** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @path_get_inode(%struct.mount* %6, i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.mount*, %struct.mount** %3, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @bind_path(i32 %18, i32 1, i8* %19)
  %21 = load %struct.mount*, %struct.mount** %3, align 8
  %22 = load %struct.mount*, %struct.mount** %3, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @db_exec_reset(%struct.mount* %21, i32 %25)
  %27 = load %struct.mount*, %struct.mount** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @inode_is_orphaned(%struct.mount* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = load %struct.mount*, %struct.mount** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @try_cleanup_inode(%struct.mount* %32, i64 %33)
  br label %35

35:                                               ; preds = %31, %14
  ret void
}

declare dso_local i64 @path_get_inode(%struct.mount*, i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @bind_path(i32, i32, i8*) #1

declare dso_local i32 @db_exec_reset(%struct.mount*, i32) #1

declare dso_local i64 @inode_is_orphaned(%struct.mount*, i64) #1

declare dso_local i32 @try_cleanup_inode(%struct.mount*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
