; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_readdir.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.dir_entry = type { i32, i32 }
%struct.dirent = type { i32, i32 }

@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_readdir(%struct.fd* %0, %struct.dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca %struct.dirent*, align 8
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.dir_entry* %1, %struct.dir_entry** %5, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = call i32 @realfs_opendir(%struct.fd* %7)
  store i64 0, i64* @errno, align 8
  %9 = load %struct.fd*, %struct.fd** %4, align 8
  %10 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dirent* @readdir(i32 %11)
  store %struct.dirent* %12, %struct.dirent** %6, align 8
  %13 = load %struct.dirent*, %struct.dirent** %6, align 8
  %14 = icmp eq %struct.dirent* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @errno_map()
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.dirent*, %struct.dirent** %6, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %26 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %28 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dirent*, %struct.dirent** %6, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %29, i32 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %21, %20, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @realfs_opendir(%struct.fd*) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
