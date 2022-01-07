; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_scan_rerere_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_scan_rerere_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_dir = type { i32*, i32 }
%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"rr-cache/%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"postimage\00", align 1
@RR_HAS_POSTIMAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"preimage\00", align 1
@RR_HAS_PREIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rerere_dir*)* @scan_rerere_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_rerere_dir(%struct.rerere_dir* %0) #0 {
  %2 = alloca %struct.rerere_dir*, align 8
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rerere_dir* %0, %struct.rerere_dir** %2, align 8
  %6 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  %7 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @hash_to_hex(i32 %8)
  %10 = call i32 @git_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32* @opendir(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %59, %15
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.dirent* @readdir(i32* %17)
  store %struct.dirent* %18, %struct.dirent** %3, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load %struct.dirent*, %struct.dirent** %3, align 8
  %22 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_rr_file(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @fit_variant(%struct.rerere_dir* %27, i32 %28)
  %30 = load i32, i32* @RR_HAS_POSTIMAGE, align 4
  %31 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  %32 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %30
  store i32 %38, i32* %36, align 4
  br label %59

39:                                               ; preds = %20
  %40 = load %struct.dirent*, %struct.dirent** %3, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @is_rr_file(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @fit_variant(%struct.rerere_dir* %46, i32 %47)
  %49 = load i32, i32* @RR_HAS_PREIMAGE, align 4
  %50 = load %struct.rerere_dir*, %struct.rerere_dir** %2, align 8
  %51 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %49
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45, %39
  br label %59

59:                                               ; preds = %58, %26
  br label %16

60:                                               ; preds = %16
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @closedir(i32* %61)
  br label %63

63:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @git_path(i8*, i32) #1

declare dso_local i32 @hash_to_hex(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @is_rr_file(i32, i8*, i32*) #1

declare dso_local i32 @fit_variant(%struct.rerere_dir*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
