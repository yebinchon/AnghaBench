; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.spufs_sb_info*, %struct.spufs_fs_context* }
%struct.spufs_sb_info = type { i32 }
%struct.spufs_fs_context = type { i32, i32, i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32 }

@spufs_fs_parameters = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Unknown uid\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Unknown gid\00", align 1
@S_IALLUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @spufs_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.spufs_fs_context*, align 8
  %7 = alloca %struct.spufs_sb_info*, align 8
  %8 = alloca %struct.fs_parse_result, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %12 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %13 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %12, i32 0, i32 1
  %14 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %13, align 8
  store %struct.spufs_fs_context* %14, %struct.spufs_fs_context** %6, align 8
  %15 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %15, i32 0, i32 0
  %17 = load %struct.spufs_sb_info*, %struct.spufs_sb_info** %16, align 8
  store %struct.spufs_sb_info* %17, %struct.spufs_sb_info** %7, align 8
  %18 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %19 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %20 = call i32 @fs_parse(%struct.fs_context* %18, i32* @spufs_fs_parameters, %struct.fs_parameter* %19, %struct.fs_parse_result* %8)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %67 [
    i32 128, label %27
    i32 130, label %42
    i32 129, label %57
    i32 131, label %64
  ]

27:                                               ; preds = %25
  %28 = call i32 (...) @current_user_ns()
  %29 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @make_kuid(i32 %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @uid_valid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %37 = call i32 @invalf(%struct.fs_context* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %41 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %67

42:                                               ; preds = %25
  %43 = call i32 (...) @current_user_ns()
  %44 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @make_kgid(i32 %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @gid_valid(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %52 = call i32 @invalf(%struct.fs_context* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %56 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %67

57:                                               ; preds = %25
  %58 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @S_IALLUGO, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.spufs_fs_context*, %struct.spufs_fs_context** %6, align 8
  %63 = getelementptr inbounds %struct.spufs_fs_context, %struct.spufs_fs_context* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %25
  %65 = load %struct.spufs_sb_info*, %struct.spufs_sb_info** %7, align 8
  %66 = getelementptr inbounds %struct.spufs_sb_info, %struct.spufs_sb_info* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %25, %64, %57, %53, %38
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %50, %35, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
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
