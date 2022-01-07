; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_inode_truncate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_inode_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i32 }
%struct.lev_filesys_ftruncate = type { i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@LEV_FILESYS_FTRUNCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_inode_truncate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.filesys_inode*, align 8
  %7 = alloca %struct.lev_filesys_ftruncate*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.filesys_inode* @get_inode_f(i32 %8, i32 0)
  store %struct.filesys_inode* %9, %struct.filesys_inode** %6, align 8
  %10 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %11 = icmp eq %struct.filesys_inode* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBADF, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32, i32* @LEV_FILESYS_FTRUNCATE, align 4
  %17 = call %struct.lev_filesys_ftruncate* @alloc_log_event(i32 %16, i32 8, i32 0)
  store %struct.lev_filesys_ftruncate* %17, %struct.lev_filesys_ftruncate** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.lev_filesys_ftruncate*, %struct.lev_filesys_ftruncate** %7, align 8
  %20 = getelementptr inbounds %struct.lev_filesys_ftruncate, %struct.lev_filesys_ftruncate* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.lev_filesys_ftruncate*, %struct.lev_filesys_ftruncate** %7, align 8
  %23 = getelementptr inbounds %struct.lev_filesys_ftruncate, %struct.lev_filesys_ftruncate* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @filesys_ftruncate(%struct.filesys_inode* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.filesys_inode* @get_inode_f(i32, i32) #1

declare dso_local %struct.lev_filesys_ftruncate* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @filesys_ftruncate(%struct.filesys_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
