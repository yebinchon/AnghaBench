; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_jffs2.c_add_dir.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_jffs2.c_add_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_raw_inode = type { i32, i32, i32, i32, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@erasesize = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_INODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @add_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dir(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_raw_inode, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @S_IFDIR, align 4
  %9 = call i32 @IFTODT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @add_dirent(i8* %7, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @rbytes()
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 112
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @erasesize, align 4
  %17 = call i32 @pad(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = call i32 (...) @prep_eraseblock()
  %20 = call i32 @memset(%struct.jffs2_raw_inode* %5, i32 0, i32 112)
  %21 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %22 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 16
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @JFFS2_NODETYPE_INODE, align 4
  %24 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 15
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 0
  store i32 112, i32* %25, align 8
  %26 = call i8* @crc32(i32 0, %struct.jffs2_raw_inode* %5, i32 0)
  %27 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 14
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @S_IFDIR, align 4
  %31 = or i32 %30, 493
  %32 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 12
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 13
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 10
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 11
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = call i8* @crc32(i32 0, %struct.jffs2_raw_inode* %5, i32 104)
  %43 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 5
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %5, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = bitcast %struct.jffs2_raw_inode* %5 to i8*
  %46 = call i32 @add_data(i8* %45, i32 112)
  %47 = call i32 @pad(i32 4)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @add_dirent(i8*, i32, i32) #1

declare dso_local i32 @IFTODT(i32) #1

declare dso_local i32 @rbytes(...) #1

declare dso_local i32 @pad(i32) #1

declare dso_local i32 @prep_eraseblock(...) #1

declare dso_local i32 @memset(%struct.jffs2_raw_inode*, i32, i32) #1

declare dso_local i8* @crc32(i32, %struct.jffs2_raw_inode*, i32) #1

declare dso_local i32 @add_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
