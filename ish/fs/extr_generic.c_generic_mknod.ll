; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_mknod.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, i32, i32)* }

@_EINVAL = common dso_local global i32 0, align 4
@_EPERM = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@AT_PWD = common dso_local global i32 0, align 4
@N_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@N_PARENT_DIR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_mknod(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @_EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %76

22:                                               ; preds = %16
  %23 = call i32 (...) @superuser()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @S_ISBLK(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @S_ISCHR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @_EPERM, align 4
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %29, %22
  %36 = load i32, i32* @MAX_PATH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %8, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %9, align 8
  %40 = load i32, i32* @AT_PWD, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  %43 = load i32, i32* @N_PARENT_DIR_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @path_normalize(i32 %40, i8* %41, i8* %39, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %74

50:                                               ; preds = %35
  %51 = call %struct.mount* @find_mount_and_trim_path(i8* %39)
  store %struct.mount* %51, %struct.mount** %12, align 8
  %52 = load %struct.mount*, %struct.mount** %12, align 8
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.mount*, i8*, i32, i32)*, i32 (%struct.mount*, i8*, i32, i32)** %55, align 8
  %57 = icmp eq i32 (%struct.mount*, i8*, i32, i32)* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @_EPERM, align 4
  store i32 %59, i32* %10, align 4
  br label %70

60:                                               ; preds = %50
  %61 = load %struct.mount*, %struct.mount** %12, align 8
  %62 = getelementptr inbounds %struct.mount, %struct.mount* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.mount*, i8*, i32, i32)*, i32 (%struct.mount*, i8*, i32, i32)** %64, align 8
  %66 = load %struct.mount*, %struct.mount** %12, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %65(%struct.mount* %66, i8* %39, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %60, %58
  %71 = load %struct.mount*, %struct.mount** %12, align 8
  %72 = call i32 @mount_release(%struct.mount* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %48
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  br label %76

76:                                               ; preds = %74, %33, %20
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @path_normalize(i32, i8*, i8*, i32) #1

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #1

declare dso_local i32 @mount_release(%struct.mount*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
