; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_lock.c_fcntl_setlk.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_lock.c_fcntl_setlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.inode_data* }
%struct.inode_data = type { i32, i32 }
%struct.flock_ = type { i64 }
%struct.file_lock = type { i32 }

@F_RDLCK_ = common dso_local global i64 0, align 8
@F_WRLCK_ = common dso_local global i64 0, align 8
@F_UNLCK_ = common dso_local global i64 0, align 8
@_EINVAL = common dso_local global i32 0, align 4
@O_RDONLY_ = common dso_local global i32 0, align 4
@O_RDWR_ = common dso_local global i32 0, align 4
@_EBADF = common dso_local global i32 0, align 4
@O_WRONLY_ = common dso_local global i32 0, align 4
@_EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcntl_setlk(%struct.fd* %0, %struct.flock_* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca %struct.flock_*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode_data*, align 8
  %9 = alloca %struct.file_lock, align 4
  %10 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %5, align 8
  store %struct.flock_* %1, %struct.flock_** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.flock_*, %struct.flock_** %6, align 8
  %12 = getelementptr inbounds %struct.flock_, %struct.flock_* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @F_RDLCK_, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.flock_*, %struct.flock_** %6, align 8
  %18 = getelementptr inbounds %struct.flock_, %struct.flock_* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @F_WRLCK_, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.flock_*, %struct.flock_** %6, align 8
  %24 = getelementptr inbounds %struct.flock_, %struct.flock_* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @F_UNLCK_, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @_EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %22, %16, %3
  %31 = load %struct.flock_*, %struct.flock_** %6, align 8
  %32 = getelementptr inbounds %struct.flock_, %struct.flock_* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @F_RDLCK_, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.fd*, %struct.fd** %5, align 8
  %38 = call i32 @fd_getflags(%struct.fd* %37)
  %39 = load i32, i32* @O_RDONLY_, align 4
  %40 = load i32, i32* @O_RDWR_, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @_EBADF, align 4
  store i32 %45, i32* %4, align 4
  br label %101

46:                                               ; preds = %36, %30
  %47 = load %struct.flock_*, %struct.flock_** %6, align 8
  %48 = getelementptr inbounds %struct.flock_, %struct.flock_* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @F_WRLCK_, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.fd*, %struct.fd** %5, align 8
  %54 = call i32 @fd_getflags(%struct.fd* %53)
  %55 = load i32, i32* @O_WRONLY_, align 4
  %56 = load i32, i32* @O_RDWR_, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @_EBADF, align 4
  store i32 %61, i32* %4, align 4
  br label %101

62:                                               ; preds = %52, %46
  %63 = load %struct.fd*, %struct.fd** %5, align 8
  %64 = getelementptr inbounds %struct.fd, %struct.fd* %63, i32 0, i32 0
  %65 = load %struct.inode_data*, %struct.inode_data** %64, align 8
  store %struct.inode_data* %65, %struct.inode_data** %8, align 8
  %66 = load %struct.inode_data*, %struct.inode_data** %8, align 8
  %67 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %66, i32 0, i32 0
  %68 = call i32 @lock(i32* %67)
  %69 = load %struct.fd*, %struct.fd** %5, align 8
  %70 = load %struct.flock_*, %struct.flock_** %6, align 8
  %71 = call i32 @file_lock_from_flock(%struct.fd* %69, %struct.flock_* %70, %struct.file_lock* %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %96

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %94, %75
  %77 = load %struct.inode_data*, %struct.inode_data** %8, align 8
  %78 = call i32 @file_lock_acquire(%struct.inode_data* %77, %struct.file_lock* %9)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @_EAGAIN, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %95

85:                                               ; preds = %81
  %86 = load %struct.inode_data*, %struct.inode_data** %8, align 8
  %87 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %86, i32 0, i32 1
  %88 = load %struct.inode_data*, %struct.inode_data** %8, align 8
  %89 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %88, i32 0, i32 0
  %90 = call i32 @wait_for(i32* %87, i32* %89, i32* null)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %85
  br label %76

95:                                               ; preds = %93, %84, %76
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.inode_data*, %struct.inode_data** %8, align 8
  %98 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %97, i32 0, i32 0
  %99 = call i32 @unlock(i32* %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %60, %44, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @fd_getflags(%struct.fd*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @file_lock_from_flock(%struct.fd*, %struct.flock_*, %struct.file_lock*) #1

declare dso_local i32 @file_lock_acquire(%struct.inode_data*, %struct.file_lock*) #1

declare dso_local i32 @wait_for(i32*, i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
