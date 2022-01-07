; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_chown.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i16, i16 }

@lf_find = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16, i16)* @filesys_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_chown(i8* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.filesys_directory_node*, align 8
  store i8* %0, i8** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @lf_find, align 4
  %11 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %9, i32 %10)
  store %struct.filesys_directory_node* %11, %struct.filesys_directory_node** %8, align 8
  %12 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  %13 = icmp eq %struct.filesys_directory_node* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = call zeroext i16 (...) @geteuid()
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = call zeroext i16 (...) @geteuid()
  %23 = zext i16 %22 to i32
  %24 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  %25 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %21, %17
  %33 = load i16, i16* %6, align 2
  %34 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  %35 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %34, i32 0, i32 0
  store i16 %33, i16* %35, align 2
  %36 = load i16, i16* %7, align 2
  %37 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  %38 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %37, i32 0, i32 1
  store i16 %36, i16* %38, align 2
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %29, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

declare dso_local zeroext i16 @geteuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
