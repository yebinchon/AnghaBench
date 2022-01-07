; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_remove_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_remove_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @unlink(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @is_missing_file_error(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %45

14:                                               ; preds = %9, %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strrchr(i8* %15, i8 signext 47)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %39, %19
  %30 = load i8*, i8** %4, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %29
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @rmdir(i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  store i8* %37, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %29, label %41

41:                                               ; preds = %39
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free(i8* %42)
  br label %44

44:                                               ; preds = %41, %14
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @is_missing_file_error(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
