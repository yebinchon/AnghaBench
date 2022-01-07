; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_open.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_index_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.git_pack_file*)* @pack_index_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_index_open(%struct.git_pack_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.git_pack_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store %struct.git_pack_file* %0, %struct.git_pack_file** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %8 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %14 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ugt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @git_buf_init(%struct.TYPE_7__* %6, i64 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %63

26:                                               ; preds = %12
  %27 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %28 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = sub i64 %30, %31
  %33 = call i32 @git_buf_put(%struct.TYPE_7__* %6, i8* %29, i64 %32)
  %34 = call i32 @git_buf_puts(%struct.TYPE_7__* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i64 @git_buf_oom(%struct.TYPE_7__* %6)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i32 @git_buf_dispose(%struct.TYPE_7__* %6)
  store i32 -1, i32* %2, align 4
  br label %63

39:                                               ; preds = %26
  %40 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %41 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %40, i32 0, i32 2
  %42 = call i32 @git_mutex_lock(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 @git_buf_dispose(%struct.TYPE_7__* %6)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %63

47:                                               ; preds = %39
  %48 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %49 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %56 = call i32 @pack_index_check(i32 %54, %struct.git_pack_file* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = call i32 @git_buf_dispose(%struct.TYPE_7__* %6)
  %59 = load %struct.git_pack_file*, %struct.git_pack_file** %3, align 8
  %60 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %59, i32 0, i32 2
  %61 = call i32 @git_mutex_unlock(i32* %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %44, %37, %25, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_buf_init(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @git_buf_put(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @git_buf_oom(%struct.TYPE_7__*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #1

declare dso_local i32 @git_mutex_lock(i32*) #1

declare dso_local i32 @pack_index_check(i32, %struct.git_pack_file*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
