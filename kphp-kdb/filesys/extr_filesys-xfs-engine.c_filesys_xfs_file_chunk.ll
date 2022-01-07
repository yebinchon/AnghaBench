; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_file_chunk.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_file_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32* }
%struct.lev_filesys_xfs_file_chunk = type { i32, i32, i32* }

@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"%d chunk of %d chunks readed (%s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_filesys_xfs_file_chunk*)* @filesys_xfs_file_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_xfs_file_chunk(%struct.lev_filesys_xfs_file_chunk* %0) #0 {
  %2 = alloca %struct.lev_filesys_xfs_file_chunk*, align 8
  %3 = alloca i32, align 4
  store %struct.lev_filesys_xfs_file_chunk* %0, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %4 = load %struct.lev_filesys_xfs_file_chunk*, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %5 = getelementptr inbounds %struct.lev_filesys_xfs_file_chunk, %struct.lev_filesys_xfs_file_chunk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.lev_filesys_xfs_file_chunk*, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %12 = getelementptr inbounds %struct.lev_filesys_xfs_file_chunk, %struct.lev_filesys_xfs_file_chunk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 4
  %15 = icmp slt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.lev_filesys_xfs_file_chunk*, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %19 = getelementptr inbounds %struct.lev_filesys_xfs_file_chunk, %struct.lev_filesys_xfs_file_chunk* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load %struct.lev_filesys_xfs_file_chunk*, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %23 = getelementptr inbounds %struct.lev_filesys_xfs_file_chunk, %struct.lev_filesys_xfs_file_chunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 65536
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i1 [ true, %1 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 4), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 2), align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load %struct.lev_filesys_xfs_file_chunk*, %struct.lev_filesys_xfs_file_chunk** %2, align 8
  %39 = getelementptr inbounds %struct.lev_filesys_xfs_file_chunk, %struct.lev_filesys_xfs_file_chunk* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @memcpy(i32* %37, i32* %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 2), align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 2), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 3), align 8
  %53 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 1), align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %31
  %58 = call i32 (...) @process_file()
  br label %59

59:                                               ; preds = %57, %31
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @process_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
