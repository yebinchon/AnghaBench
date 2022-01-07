; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_verify_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_verify_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@protect_hfs = common dso_local global i64 0, align 8
@protect_ntfs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verify_path(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @has_dos_drive_prefix(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

11:                                               ; preds = %2
  br label %22

12:                                               ; No predecessors!
  br label %13

13:                                               ; preds = %82, %12
  %14 = load i8, i8* %6, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %86

17:                                               ; preds = %13
  %18 = load i8, i8* %6, align 1
  %19 = call i64 @is_dir_sep(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i64, i64* @protect_hfs, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @is_hfs_dotgit(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %86

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @S_ISLNK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @is_hfs_dotgitmodules(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %86

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %30
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i64, i64* @protect_ntfs, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @is_ntfs_dotgit(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %86

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @S_ISLNK(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @is_ntfs_dotgitmodules(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %86

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %49
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  %63 = load i8, i8* %61, align 1
  store i8 %63, i8* %6, align 1
  %64 = load i8, i8* %6, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @verify_dotfile(i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67, %60
  %73 = load i8, i8* %6, align 1
  %74 = call i64 @is_dir_sep(i8 signext %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %6, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72, %67
  store i32 0, i32* %3, align 4
  br label %86

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %17
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8, i8* %83, align 1
  store i8 %85, i8* %6, align 1
  br label %13

86:                                               ; preds = %80, %57, %48, %38, %29, %16, %10
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @has_dos_drive_prefix(i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i64 @is_hfs_dotgit(i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @is_hfs_dotgitmodules(i8*) #1

declare dso_local i64 @is_ntfs_dotgit(i8*) #1

declare dso_local i64 @is_ntfs_dotgitmodules(i8*) #1

declare dso_local i32 @verify_dotfile(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
