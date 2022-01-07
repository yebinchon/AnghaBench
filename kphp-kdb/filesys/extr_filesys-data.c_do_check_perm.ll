; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_check_perm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32, i16, i64 }

@EACCES = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_check_perm(%struct.filesys_directory_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filesys_directory_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.filesys_directory_node* %0, %struct.filesys_directory_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call zeroext i16 (...) @geteuid()
  store i16 %8, i16* %6, align 2
  %9 = load i16, i16* %6, align 2
  %10 = icmp ne i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %14 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %17 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 4
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %32

24:                                               ; preds = %12
  %25 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %26 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i64 (...) @getegid()
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 0
  br label %32

32:                                               ; preds = %24, %23
  %33 = phi i32 [ 6, %23 ], [ %31, %24 ]
  %34 = ashr i32 %15, %33
  %35 = and i32 %34, 7
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @EACCES, align 4
  store i32 %42, i32* @errno, align 4
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %41, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local zeroext i16 @geteuid(...) #1

declare dso_local i64 @getegid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
