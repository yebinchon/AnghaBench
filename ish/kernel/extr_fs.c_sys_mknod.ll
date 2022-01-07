; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_mknod.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mknod(\22%s\22, %#x, %#x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_mknod(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = trunc i64 %12 to i32
  %17 = call i64 @user_read_string(i32 %15, i8* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @_EFAULT, align 4
  store i32 %20, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @STRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %22, i32 %23)
  %25 = call i32 @apply_umask(i32* %6)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @generic_mknod(i8* %14, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %21, %19
  %30 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i8*, i32, i32) #2

declare dso_local i32 @apply_umask(i32*) #2

declare dso_local i32 @generic_mknod(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
