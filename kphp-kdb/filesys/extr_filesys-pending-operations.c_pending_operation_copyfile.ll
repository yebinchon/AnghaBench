; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_copyfile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.static_pending_operation = type { i32 }

@pot_symlink = common dso_local global i32 0, align 4
@pot_mkdir = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"full_tmp_filename = %s\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"fail to open file '%s', flags: O_CREAT | O_TRUNC | O_WRONLY | O_EXCL. %m\0A\00", align 1
@pot_rename = common dso_local global i32 0, align 4
@po_olddir_length = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operation_copyfile(i32 %0, i32* %1, i8* %2, i8* %3, i32 %4, %struct.stat* %5, %struct.static_pending_operation* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat*, align 8
  %15 = alloca %struct.static_pending_operation*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.stat* %5, %struct.stat** %14, align 8
  store %struct.static_pending_operation* %6, %struct.static_pending_operation** %15, align 8
  store i64 %7, i64* %16, align 8
  %22 = load %struct.stat*, %struct.stat** %14, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISLNK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i32, i32* @pot_symlink, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i8*, i8** %12, align 8
  store i8* %29, i8** %18, align 8
  br label %87

30:                                               ; preds = %8
  %31 = load %struct.stat*, %struct.stat** %14, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @pot_mkdir, align 4
  store i32 %37, i32* %17, align 4
  store i8* null, i8** %18, align 8
  br label %86

38:                                               ; preds = %30
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %19, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %20, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @compute_temporary_filename(i32 %43, i32* %44, i8* %45, i8* %42)
  %47 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %42)
  %48 = load i32, i32* @O_CREAT, align 4
  %49 = load i32, i32* @O_TRUNC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @O_WRONLY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @O_EXCL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @open(i8* %42, i32 %54, i32 432)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = call i32 @kprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %60 = call i32 @exit(i32 1) #4
  unreachable

61:                                               ; preds = %38
  %62 = load i32, i32* %21, align 4
  %63 = icmp sge i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @write(i32 %67, i8* %68, i32 %69)
  %71 = icmp eq i32 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @close(i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* @pot_rename, align 4
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* @po_olddir_length, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %42, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %18, align 8
  %85 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %61, %36
  br label %87

87:                                               ; preds = %86, %27
  %88 = load %struct.static_pending_operation*, %struct.static_pending_operation** %15, align 8
  %89 = icmp ne %struct.static_pending_operation* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.static_pending_operation*, %struct.static_pending_operation** %15, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.stat*, %struct.stat** %14, align 8
  %96 = call i32 @pending_operation_fill(%struct.static_pending_operation* %91, i32 %92, i8* %93, i8* %94, %struct.stat* %95)
  br label %110

97:                                               ; preds = %87
  %98 = load i64, i64* %16, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @dyn_release(i64 %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %17, align 4
  %105 = load i8*, i8** %18, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.stat*, %struct.stat** %14, align 8
  %108 = call i32 @pending_operation_create(i32 %104, i8* %105, i8* %106, %struct.stat* %107)
  %109 = call i32 @pending_operation_push(i32 %108)
  br label %110

110:                                              ; preds = %103, %90
  ret void
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @compute_temporary_filename(i32, i32*, i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pending_operation_fill(%struct.static_pending_operation*, i32, i8*, i8*, %struct.stat*) #1

declare dso_local i32 @dyn_release(i64) #1

declare dso_local i32 @pending_operation_push(i32) #1

declare dso_local i32 @pending_operation_create(i32, i8*, i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
