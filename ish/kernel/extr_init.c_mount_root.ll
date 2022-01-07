; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_init.c_mount_root.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_init.c_mount_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_ops = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_root(%struct.fs_ops* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fs_ops* %0, %struct.fs_ops** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @realpath(i8* %15, i8* %14)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @errno_map()
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.fs_ops*, %struct.fs_ops** %4, align 8
  %22 = call i32 @do_mount(%struct.fs_ops* %21, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %25, %18
  %29 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @errno_map(...) #2

declare dso_local i32 @do_mount(%struct.fs_ops*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
