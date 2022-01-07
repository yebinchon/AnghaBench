; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_pack_entry_find.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_pack_entry_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_entry = type { i32, %struct.git_pack_file*, i32 }
%struct.git_pack_file = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"bad object found in packfile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_pack_entry_find(%struct.git_pack_entry* %0, %struct.git_pack_file* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.git_pack_entry*, align 8
  %7 = alloca %struct.git_pack_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.git_pack_entry* %0, %struct.git_pack_entry** %6, align 8
  store %struct.git_pack_file* %1, %struct.git_pack_file** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %15 = call i32 @assert(%struct.git_pack_file* %14)
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %4
  %20 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %21 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %28 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %34 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @git_oid__cmp(i32* %32, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @packfile_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %5, align 4
  br label %79

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %13, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %25

47:                                               ; preds = %25
  br label %48

48:                                               ; preds = %47, %19, %4
  %49 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @pack_entry_find_offset(i32* %10, i32* %11, %struct.git_pack_file* %49, i32* %50, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %5, align 4
  br label %79

57:                                               ; preds = %48
  %58 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %59 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %65 = call i32 @packfile_open(%struct.git_pack_file* %64)
  store i32 %65, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %79

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %72 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.git_pack_file*, %struct.git_pack_file** %7, align 8
  %74 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %75 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %74, i32 0, i32 1
  store %struct.git_pack_file* %73, %struct.git_pack_file** %75, align 8
  %76 = load %struct.git_pack_entry*, %struct.git_pack_entry** %6, align 8
  %77 = getelementptr inbounds %struct.git_pack_entry, %struct.git_pack_entry* %76, i32 0, i32 0
  %78 = call i32 @git_oid_cpy(i32* %77, i32* %11)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %69, %67, %55, %41
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(%struct.git_pack_file*) #1

declare dso_local i64 @git_oid__cmp(i32*, i32*) #1

declare dso_local i32 @packfile_error(i8*) #1

declare dso_local i32 @pack_entry_find_offset(i32*, i32*, %struct.git_pack_file*, i32*, i64) #1

declare dso_local i32 @packfile_open(%struct.git_pack_file*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
