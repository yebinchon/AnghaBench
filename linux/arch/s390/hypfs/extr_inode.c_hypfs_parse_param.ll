; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/hypfs/extr_inode.c_hypfs_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32, i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32 }

@hypfs_fs_parameters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Unknown uid\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Unknown gid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @hypfs_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.hypfs_sb_info*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %11 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %12 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %11, i32 0, i32 0
  %13 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %12, align 8
  store %struct.hypfs_sb_info* %13, %struct.hypfs_sb_info** %6, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %15 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %16 = call i32 @fs_parse(%struct.fs_context* %14, i32* @hypfs_fs_parameters, %struct.fs_parameter* %15, %struct.fs_parse_result* %7)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %53 [
    i32 128, label %23
    i32 129, label %38
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @current_user_ns()
  %25 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @make_kuid(i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @uid_valid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %33 = call i32 @invalf(%struct.fs_context* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %53

38:                                               ; preds = %21
  %39 = call i32 (...) @current_user_ns()
  %40 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @make_kgid(i32 %39, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @gid_valid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %48 = call i32 @invalf(%struct.fs_context* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %38
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %6, align 8
  %52 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %21, %49, %34
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %46, %31, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
