; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_statfs64.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_statfs64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"statfs64(\22%s\22, %d, %#x)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@AT_PWD = common dso_local global i32 0, align 4
@N_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_statfs64(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mount*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = trunc i64 %15 to i32
  %20 = call i64 @user_read_string(i32 %18, i8* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @_EFAULT, align 4
  store i32 %23, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %52

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @STRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @_EINVAL, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %52

33:                                               ; preds = %24
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %11, align 8
  %37 = load i32, i32* @AT_PWD, align 4
  %38 = load i32, i32* @N_SYMLINK_NOFOLLOW, align 4
  %39 = call i32 @path_normalize(i32 %37, i8* %17, i8* %36, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %52

44:                                               ; preds = %33
  %45 = call %struct.mount* @mount_find(i8* %36)
  store %struct.mount* %45, %struct.mount** %13, align 8
  %46 = load %struct.mount*, %struct.mount** %13, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @statfs64_mount(%struct.mount* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.mount*, %struct.mount** %13, align 8
  %50 = call i32 @mount_release(%struct.mount* %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %44, %42, %31, %22
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i8*, i32, i32) #2

declare dso_local i32 @path_normalize(i32, i8*, i8*, i32) #2

declare dso_local %struct.mount* @mount_find(i8*) #2

declare dso_local i32 @statfs64_mount(%struct.mount*, i32) #2

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
