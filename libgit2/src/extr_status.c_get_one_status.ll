; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_status.c_get_one_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_status.c_get_one_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status_file_info = type { i32, i32, i32, i8*, i32 }

@WM_CASEFOLD = common dso_local global i32 0, align 4
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @get_one_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_status(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.status_file_info*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.status_file_info*
  store %struct.status_file_info* %11, %struct.status_file_info** %8, align 8
  %12 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %13 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %18 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %20 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WM_CASEFOLD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 (i8*, i8*)* @git__strcasecmp, i32 (i8*, i8*)* @git__strcmp
  store i32 (i8*, i8*)* %26, i32 (i8*, i8*)** %9, align 8
  %27 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %28 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %49, label %31

31:                                               ; preds = %3
  %32 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %33 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %34 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 %32(i8* %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %41 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %45 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @wildmatch(i8* %42, i8* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39, %3
  %50 = load %struct.status_file_info*, %struct.status_file_info** %8, align 8
  %51 = getelementptr inbounds %struct.status_file_info, %struct.status_file_info* %50, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %39, %31
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @git__strcasecmp(i8*, i8*) #1

declare dso_local i32 @git__strcmp(i8*, i8*) #1

declare dso_local i64 @wildmatch(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
