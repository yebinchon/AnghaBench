; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_unlinkat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_unlinkat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*)* }

@MAX_PATH = common dso_local global i32 0, align 4
@N_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_unlinkat(%struct.fd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mount*, align 8
  store %struct.fd* %0, %struct.fd** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.fd*, %struct.fd** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  %18 = call i32 @path_normalize(%struct.fd* %15, i8* %16, i8* %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %35

23:                                               ; preds = %2
  %24 = call %struct.mount* @find_mount_and_trim_path(i8* %14)
  store %struct.mount* %24, %struct.mount** %10, align 8
  %25 = load %struct.mount*, %struct.mount** %10, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mount*, i8*)*, i32 (%struct.mount*, i8*)** %28, align 8
  %30 = load %struct.mount*, %struct.mount** %10, align 8
  %31 = call i32 %29(%struct.mount* %30, i8* %14)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mount*, %struct.mount** %10, align 8
  %33 = call i32 @mount_release(%struct.mount* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
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
