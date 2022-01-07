; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_mkdir.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32, i16, i16 }

@lf_creat = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i16, i16)* @filesys_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_mkdir(i8* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.filesys_directory_node*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @lf_creat, align 4
  %13 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %11, i32 %12)
  store %struct.filesys_directory_node* %13, %struct.filesys_directory_node** %10, align 8
  %14 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %15 = icmp eq %struct.filesys_directory_node* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %39

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %24 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i16, i16* %8, align 2
  %26 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %27 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %26, i32 0, i32 1
  store i16 %25, i16* %27, align 4
  %28 = load i16, i16* %9, align 2
  %29 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %30 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %29, i32 0, i32 2
  store i16 %28, i16* %30, align 2
  %31 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %32 = icmp ne %struct.filesys_directory_node* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %37

34:                                               ; preds = %19
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
