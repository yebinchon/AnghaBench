; ModuleID = '/home/carl/AnghaBench/git/extr_tmp-objdir.c_read_dir_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_tmp-objdir.c_read_dir_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.dirent = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i8*)* @read_dir_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dir_paths(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @opendir(i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %32, %13
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %7, align 8
  %17 = icmp ne %struct.dirent* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.dirent*, %struct.dirent** %7, align 8
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 46
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.string_list*, %struct.string_list** %4, align 8
  %28 = load %struct.dirent*, %struct.dirent** %7, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @string_list_append(%struct.string_list* %27, i8* %30)
  br label %32

32:                                               ; preds = %26, %18
  br label %14

33:                                               ; preds = %14
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @closedir(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
