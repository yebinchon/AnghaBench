; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_change_attrs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_filesys_xfs_change_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_filesys_xfs_change_attrs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32, i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"name = %s\0A\00", align 1
@pot_copy_attrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lev_filesys_xfs_change_attrs*)* @filesys_xfs_change_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_xfs_change_attrs(%struct.lev_filesys_xfs_change_attrs* %0) #0 {
  %2 = alloca %struct.lev_filesys_xfs_change_attrs*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stat, align 4
  store %struct.lev_filesys_xfs_change_attrs* %0, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %11 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %19 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %22 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i8* %9, i32 %20, i32 %23)
  %25 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %26 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %9, i64 %28
  store i8 0, i8* %29, align 1
  %30 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9)
  %31 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %32 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %36 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %40 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %44 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %2, align 8
  %48 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @pot_copy_attrs, align 4
  %52 = call i32 @pending_operation_create(i32 %51, i32* null, i8* %9, %struct.stat* %5)
  %53 = call i32 @pending_operation_push(i32 %52)
  %54 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*) #2

declare dso_local i32 @pending_operation_push(i32) #2

declare dso_local i32 @pending_operation_create(i32, i32*, i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
