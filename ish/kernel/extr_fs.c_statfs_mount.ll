; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_statfs_mount.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_statfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.statfsbuf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statfs_ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @statfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statfs_mount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.statfsbuf, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.statfs_, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.statfsbuf* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 44, i1 false)
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call i32 @mount_statfs(%struct.mount* %10, %struct.statfsbuf* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 2
  %24 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 3
  %27 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %26, align 4
  %29 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 4
  %30 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 5
  %33 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 6
  %36 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %35, align 4
  %38 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 7
  %39 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 8
  %42 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 9
  %45 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.statfs_, %struct.statfs_* %8, i32 0, i32 10
  %48 = getelementptr inbounds %struct.statfsbuf, %struct.statfsbuf* %6, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @user_put(i32 %50, %struct.statfs_* byval(%struct.statfs_) align 8 %8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %16
  %54 = load i32, i32* @_EFAULT, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mount_statfs(%struct.mount*, %struct.statfsbuf*) #2

declare dso_local i64 @user_put(i32, %struct.statfs_* byval(%struct.statfs_) align 8) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
