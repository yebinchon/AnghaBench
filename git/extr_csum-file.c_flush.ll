; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_flush.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: sha1 file read error\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: sha1 file truncated\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"sha1 file '%s' validation error\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"sha1 file '%s' write error. Out of diskspace\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sha1 file '%s' write error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, i8*, i32)* @flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush(%struct.hashfile* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %11 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 0, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %19 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @read_in_full(i64 %20, i8* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %28 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @die_errno(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %37 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @memcmp(i8* %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %48 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  br label %52

52:                                               ; preds = %51, %14, %3
  br label %53

53:                                               ; preds = %94, %84, %52
  %54 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %55 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @xwrite(i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %65 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %69 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %72 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @display_throughput(i32 %70, i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8* %78, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %62
  br label %53

85:                                               ; preds = %62
  ret void

86:                                               ; preds = %53
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %91 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %96 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @die_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %53
}

declare dso_local i32 @read_in_full(i64, i8*, i32) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @xwrite(i32, i8*, i32) #1

declare dso_local i32 @display_throughput(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
