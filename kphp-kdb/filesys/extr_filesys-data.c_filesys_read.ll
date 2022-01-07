; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"filesys_read: before memset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filesys_inode*, i32, i32, i8*)* @filesys_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_read(%struct.filesys_inode* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.filesys_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.filesys_inode* %0, %struct.filesys_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @copy_updates(%struct.filesys_inode* %16, i32 %17, i32 %18, i8* %19, i32* %10)
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %29 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %75

34:                                               ; preds = %25
  %35 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %36 = call i32 @filesys_inode_load(%struct.filesys_inode* %35)
  %37 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %38 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %34
  %42 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %43 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %55 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @memcpy(i8* %53, i32* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %52
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @copy_updates(%struct.filesys_inode* %69, i32 %70, i32 %71, i8* %72, i32* %12)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %32, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @copy_updates(%struct.filesys_inode*, i32, i32, i8*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @filesys_inode_load(%struct.filesys_inode*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
