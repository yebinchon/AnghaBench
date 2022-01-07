; ModuleID = '/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailmap.c_read_mailmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to open mailmap at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*, i8**)* @read_mailmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mailmap_file(%struct.string_list* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32*, align 8
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @error_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %32, %26
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @fgets(i8* %28, i32 1024, i32* %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.string_list*, %struct.string_list** %5, align 8
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %35 = load i8**, i8*** %7, align 8
  %36 = call i32 @read_mailmap_line(%struct.string_list* %33, i8* %34, i8** %35)
  br label %27

37:                                               ; preds = %27
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @fclose(i32* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %23, %22, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @read_mailmap_line(%struct.string_list*, i8*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
