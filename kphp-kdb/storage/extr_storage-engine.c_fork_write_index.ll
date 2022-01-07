; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_fork_write_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_fork_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"process with pid %d already generates index, skipping\0A\00", align 1
@active_gathers = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"active_gathers = %d, skipping(waiting) generating index\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fork: %m\0A\00", align 1
@save_index_process = common dso_local global i32 0, align 4
@volumes = common dso_local global i32 0, align 4
@Volumes = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"created child process pid = %d\0A\00", align 1
@force_write_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fork_write_index() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @child_pid, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @child_pid, align 4
  %9 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %56

10:                                               ; preds = %0
  %11 = load i64, i64* @active_gathers, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* @active_gathers, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %56

17:                                               ; preds = %10
  %18 = call i32 (...) @fork()
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @kprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %55

23:                                               ; preds = %17
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* @save_index_process, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @volumes, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32**, i32*** @Volumes, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @save_index(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %23
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %1, align 4
  store i32 %53, i32* @child_pid, align 4
  br label %54

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %21
  store i64 0, i64* @force_write_index, align 8
  br label %56

56:                                               ; preds = %55, %13, %7
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i64 @save_index(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
