; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_accessat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_generic.c_generic_accessat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.mount = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mount*, i8*, %struct.statbuf*, i32)* }
%struct.statbuf = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@N_SYMLINK_FOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_accessat(%struct.fd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.statbuf, align 4
  store %struct.fd* %0, %struct.fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.fd*, %struct.fd** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @N_SYMLINK_FOLLOW, align 4
  %21 = call i32 @path_normalize(%struct.fd* %18, i8* %19, i8* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

26:                                               ; preds = %3
  %27 = call %struct.mount* @find_mount_and_trim_path(i8* %17)
  store %struct.mount* %27, %struct.mount** %12, align 8
  %28 = bitcast %struct.statbuf* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = load %struct.mount*, %struct.mount** %12, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mount*, i8*, %struct.statbuf*, i32)*, i32 (%struct.mount*, i8*, %struct.statbuf*, i32)** %32, align 8
  %34 = load %struct.mount*, %struct.mount** %12, align 8
  %35 = call i32 %33(%struct.mount* %34, i8* %17, %struct.statbuf* %13, i32 1)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.mount*, %struct.mount** %12, align 8
  %37 = call i32 @mount_release(%struct.mount* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @access_check(%struct.statbuf* %13, i32 %43)
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %40, %24
  %46 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_normalize(%struct.fd*, i8*, i8*, i32) #2

declare dso_local %struct.mount* @find_mount_and_trim_path(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mount_release(%struct.mount*) #2

declare dso_local i32 @access_check(%struct.statbuf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
