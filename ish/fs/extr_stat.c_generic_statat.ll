; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_stat.c_generic_statat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_stat.c_generic_statat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.statbuf = type { i32 }
%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, %struct.statbuf*, i32)* }

@MAX_PATH = common dso_local global i32 0, align 4
@N_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@N_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_statat(%struct.fd* %0, i8* %1, %struct.statbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.statbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mount*, align 8
  store %struct.fd* %0, %struct.fd** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.statbuf* %2, %struct.statbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.fd*, %struct.fd** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @N_SYMLINK_FOLLOW, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = call i32 @path_normalize(%struct.fd* %19, i8* %20, i8* %18, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %50

34:                                               ; preds = %27
  %35 = call %struct.mount* @find_mount_and_trim_path(i8* %18)
  store %struct.mount* %35, %struct.mount** %14, align 8
  %36 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %37 = call i32 @memset(%struct.statbuf* %36, i32 0, i32 4)
  %38 = load %struct.mount*, %struct.mount** %14, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, %struct.statbuf*, i32)** %41, align 8
  %43 = load %struct.mount*, %struct.mount** %14, align 8
  %44 = load %struct.statbuf*, %struct.statbuf** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 %42(%struct.mount* %43, i8* %18, %struct.statbuf* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.mount*, %struct.mount** %14, align 8
  %48 = call i32 @mount_release(%struct.mount* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %50

50:                                               ; preds = %34, %32
  %51 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_normalize(%struct.fd*, i8*, i8*, i32) #2

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #2

declare dso_local i32 @memset(%struct.statbuf*, i32, i32) #2

declare dso_local i32 @mount_release(%struct.mount*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
