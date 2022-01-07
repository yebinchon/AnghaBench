; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_pages.c_init_thp_state.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_pages.c_init_thp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_madvise_huge = common dso_local global i32 0, align 4
@opt_abort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"<jemalloc>: no MADV_HUGEPAGE support\0A\00", align 1
@init_thp_state.sys_state_madvise = internal constant [24 x i8] c"always [madvise] never\0A\00", align 16
@init_thp_state.sys_state_always = internal constant [24 x i8] c"[always] madvise never\0A\00", align 16
@init_thp_state.sys_state_never = internal constant [24 x i8] c"always madvise [never]\0A\00", align 16
@.str.1 = private unnamed_addr constant [44 x i8] c"/sys/kernel/mm/transparent_hugepage/enabled\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@thp_mode_default = common dso_local global i32 0, align 4
@init_system_thp_mode = common dso_local global i32 0, align 4
@thp_mode_always = common dso_local global i32 0, align 4
@thp_mode_never = common dso_local global i32 0, align 4
@thp_mode_not_supported = common dso_local global i32 0, align 4
@opt_thp = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@SYS_close = common dso_local global i32 0, align 4
@SYS_open = common dso_local global i32 0, align 4
@SYS_openat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_thp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_thp_state() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @have_madvise_huge, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @metadata_thp_enabled()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64, i64* @opt_abort, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @malloc_write(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %9, %6
  br label %56

16:                                               ; preds = %0
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %56

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = bitcast [24 x i8]* %1 to i8**
  %25 = call i64 @malloc_read_fd(i32 %23, i8** %24, i32 24)
  store i64 %25, i64* %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %56

31:                                               ; preds = %22
  %32 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_madvise, i64 0, i64 0), i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @thp_mode_default, align 4
  store i32 %37, i32* @init_system_thp_mode, align 4
  br label %55

38:                                               ; preds = %31
  %39 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_always, i64 0, i64 0), i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @thp_mode_always, align 4
  store i32 %44, i32* @init_system_thp_mode, align 4
  br label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @init_thp_state.sys_state_never, i64 0, i64 0), i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @thp_mode_never, align 4
  store i32 %51, i32* @init_system_thp_mode, align 4
  br label %53

52:                                               ; preds = %45
  br label %56

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %58

56:                                               ; preds = %52, %30, %21, %15
  %57 = load i32, i32* @thp_mode_not_supported, align 4
  store i32 %57, i32* @init_system_thp_mode, align 4
  store i32 %57, i32* @opt_thp, align 4
  br label %58

58:                                               ; preds = %56, %55
  ret void
}

declare dso_local i64 @metadata_thp_enabled(...) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @malloc_read_fd(i32, i8**, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
