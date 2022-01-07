; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_chdir.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fd = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"chdir(\22%s\22)\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_chdir(i32 %0) #0 {
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
  br label %33

18:                                               ; preds = %1
  %19 = call i32 @STRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
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
  br label %33

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fd*, %struct.fd** %7, align 8
  %32 = call i32 @fs_chdir(i32 %30, %struct.fd* %31)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %33

33:                                               ; preds = %27, %24, %16
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @user_read_string(i32, i8*, i32) #2

declare dso_local i32 @STRACE(i8*, i8*) #2

declare dso_local %struct.fd* @open_dir(i8*) #2

declare dso_local i64 @IS_ERR(%struct.fd*) #2

declare dso_local i32 @PTR_ERR(%struct.fd*) #2

declare dso_local i32 @fs_chdir(i32, %struct.fd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
