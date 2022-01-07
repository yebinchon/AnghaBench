; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_chroot.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_chroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.fd* }
%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"chroot(\22%s\22)\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_chroot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = trunc i64 %9 to i32
  %14 = call i64 @user_read_string(i32 %12, i8* %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @_EFAULT, align 4
  store i32 %17, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %49

18:                                               ; preds = %1
  %19 = call i32 @STRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %11)
  %20 = call %struct.fd* @open_dir(i8* %11)
  store %struct.fd* %20, %struct.fd** %7, align 8
  %21 = load %struct.fd*, %struct.fd** %7, align 8
  %22 = call i64 @IS_ERR(%struct.fd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.fd*, %struct.fd** %7, align 8
  %26 = call i32 @PTR_ERR(%struct.fd* %25)
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @lock(i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.fd*, %struct.fd** %36, align 8
  %38 = call i32 @fd_close(%struct.fd* %37)
  %39 = load %struct.fd*, %struct.fd** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.fd* %39, %struct.fd** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @unlock(i32* %47)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %27, %24, %16
  %50 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i8*) #2

declare dso_local %struct.fd* @open_dir(i8*) #2

declare dso_local i64 @IS_ERR(%struct.fd*) #2

declare dso_local i32 @PTR_ERR(%struct.fd*) #2

declare dso_local i32 @lock(i32*) #2

declare dso_local i32 @fd_close(%struct.fd*) #2

declare dso_local i32 @unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
