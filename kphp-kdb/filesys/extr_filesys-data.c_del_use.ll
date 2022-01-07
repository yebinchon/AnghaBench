; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_del_use.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_del_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { %struct.filesys_inode*, %struct.filesys_inode* }

@lru_head = common dso_local global %struct.filesys_inode* null, align 8
@lru_tail = common dso_local global %struct.filesys_inode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filesys_inode*)* @del_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_use(%struct.filesys_inode* %0) #0 {
  %2 = alloca %struct.filesys_inode*, align 8
  store %struct.filesys_inode* %0, %struct.filesys_inode** %2, align 8
  %3 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %4 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %3, i32 0, i32 1
  %5 = load %struct.filesys_inode*, %struct.filesys_inode** %4, align 8
  %6 = icmp eq %struct.filesys_inode* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_head, align 8
  %9 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %10 = icmp eq %struct.filesys_inode* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %14 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %13, i32 0, i32 0
  %15 = load %struct.filesys_inode*, %struct.filesys_inode** %14, align 8
  %16 = icmp eq %struct.filesys_inode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  store %struct.filesys_inode* null, %struct.filesys_inode** @lru_tail, align 8
  store %struct.filesys_inode* null, %struct.filesys_inode** @lru_head, align 8
  br label %24

18:                                               ; preds = %7
  %19 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_head, align 8
  %20 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %19, i32 0, i32 0
  %21 = load %struct.filesys_inode*, %struct.filesys_inode** %20, align 8
  store %struct.filesys_inode* %21, %struct.filesys_inode** @lru_head, align 8
  %22 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_head, align 8
  %23 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %22, i32 0, i32 1
  store %struct.filesys_inode* null, %struct.filesys_inode** %23, align 8
  br label %24

24:                                               ; preds = %18, %17
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %27 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %26, i32 0, i32 0
  %28 = load %struct.filesys_inode*, %struct.filesys_inode** %27, align 8
  %29 = icmp eq %struct.filesys_inode* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_tail, align 8
  %32 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %33 = icmp eq %struct.filesys_inode* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_tail, align 8
  %37 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %36, i32 0, i32 1
  %38 = load %struct.filesys_inode*, %struct.filesys_inode** %37, align 8
  store %struct.filesys_inode* %38, %struct.filesys_inode** @lru_tail, align 8
  %39 = load %struct.filesys_inode*, %struct.filesys_inode** @lru_tail, align 8
  %40 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %39, i32 0, i32 0
  store %struct.filesys_inode* null, %struct.filesys_inode** %40, align 8
  br label %56

41:                                               ; preds = %25
  %42 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %43 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %42, i32 0, i32 0
  %44 = load %struct.filesys_inode*, %struct.filesys_inode** %43, align 8
  %45 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %46 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %45, i32 0, i32 1
  %47 = load %struct.filesys_inode*, %struct.filesys_inode** %46, align 8
  %48 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %47, i32 0, i32 0
  store %struct.filesys_inode* %44, %struct.filesys_inode** %48, align 8
  %49 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %50 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %49, i32 0, i32 1
  %51 = load %struct.filesys_inode*, %struct.filesys_inode** %50, align 8
  %52 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %53 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %52, i32 0, i32 0
  %54 = load %struct.filesys_inode*, %struct.filesys_inode** %53, align 8
  %55 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %54, i32 0, i32 1
  store %struct.filesys_inode* %51, %struct.filesys_inode** %55, align 8
  br label %56

56:                                               ; preds = %41, %30
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %59 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %58, i32 0, i32 0
  store %struct.filesys_inode* null, %struct.filesys_inode** %59, align 8
  %60 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %61 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %60, i32 0, i32 1
  store %struct.filesys_inode* null, %struct.filesys_inode** %61, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
