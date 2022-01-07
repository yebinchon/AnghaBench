; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_linkat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_linkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, i8*)* }

@MAX_PATH = common dso_local global i32 0, align 4
@N_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@N_PARENT_DIR_WRITE = common dso_local global i32 0, align 4
@_EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_linkat(%struct.fd* %0, i8* %1, %struct.fd* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.mount*, align 8
  %16 = alloca %struct.mount*, align 8
  store %struct.fd* %0, %struct.fd** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.fd* %2, %struct.fd** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.fd*, %struct.fd** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  %24 = call i32 @path_normalize(%struct.fd* %21, i8* %22, i8* %20, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %65

29:                                               ; preds = %4
  %30 = load i32, i32* @MAX_PATH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %33 = load %struct.fd*, %struct.fd** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  %36 = load i32, i32* @N_PARENT_DIR_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @path_normalize(%struct.fd* %33, i8* %34, i8* %32, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %65

43:                                               ; preds = %29
  %44 = call %struct.mount* @find_mount_and_trim_path(i8* %20)
  store %struct.mount* %44, %struct.mount** %15, align 8
  %45 = call %struct.mount* @find_mount_and_trim_path(i8* %32)
  store %struct.mount* %45, %struct.mount** %16, align 8
  %46 = load %struct.mount*, %struct.mount** %15, align 8
  %47 = load %struct.mount*, %struct.mount** %16, align 8
  %48 = icmp ne %struct.mount* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @_EXDEV, align 4
  store i32 %50, i32* %12, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load %struct.mount*, %struct.mount** %15, align 8
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.mount*, i8*, i8*)*, i32 (%struct.mount*, i8*, i8*)** %55, align 8
  %57 = load %struct.mount*, %struct.mount** %15, align 8
  %58 = call i32 %56(%struct.mount* %57, i8* %20, i8* %32)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %51, %49
  %60 = load %struct.mount*, %struct.mount** %15, align 8
  %61 = call i32 @mount_release(%struct.mount* %60)
  %62 = load %struct.mount*, %struct.mount** %16, align 8
  %63 = call i32 @mount_release(%struct.mount* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %41, %27
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_normalize(%struct.fd*, i8*, i8*, i32) #2

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #2

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
