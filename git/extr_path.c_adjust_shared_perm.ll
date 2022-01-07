; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_adjust_shared_perm.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_adjust_shared_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORCE_DIR_SET_GID = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_shared_perm(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @get_shared_repository()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @get_st_mode_bits(i8* %10, i32* %4)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %47

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @calc_shared_perm(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 292
  %23 = ashr i32 %22, 2
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @FORCE_DIR_SET_GID, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %14
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %30, %31
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @S_IFMT, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i64 @chmod(i8* %38, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -2, i32* %2, align 4
  br label %47

46:                                               ; preds = %37, %29
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %13, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @get_shared_repository(...) #1

declare dso_local i64 @get_st_mode_bits(i8*, i32*) #1

declare dso_local i32 @calc_shared_perm(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
