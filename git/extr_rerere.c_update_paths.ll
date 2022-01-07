; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_update_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_update_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }
%struct.string_list = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Staged '%s' using previous resolution.\00", align 1
@COMMIT_LOCK = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to write new index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.string_list*)* @update_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_paths(%struct.repository* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.lock_file, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list_item*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %8 = bitcast %struct.lock_file* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.repository*, %struct.repository** %3, align 8
  %10 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %11 = call i32 @repo_hold_locked_index(%struct.repository* %9, %struct.lock_file* %5, i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.string_list*, %struct.string_list** %4, align 8
  %15 = getelementptr inbounds %struct.string_list, %struct.string_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = load %struct.string_list*, %struct.string_list** %4, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 1
  %21 = load %struct.string_list_item*, %struct.string_list_item** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %21, i64 %23
  store %struct.string_list_item* %24, %struct.string_list_item** %7, align 8
  %25 = load %struct.repository*, %struct.repository** %3, align 8
  %26 = getelementptr inbounds %struct.repository, %struct.repository* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %29 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @add_file_to_index(i32 %27, i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = call i32 @exit(i32 128) #4
  unreachable

35:                                               ; preds = %18
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf_ln(i32 %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.repository*, %struct.repository** %3, align 8
  %47 = getelementptr inbounds %struct.repository, %struct.repository* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @COMMIT_LOCK, align 4
  %50 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %51 = or i32 %49, %50
  %52 = call i64 @write_locked_index(i32 %48, %struct.lock_file* %5, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = call i32 @die(i32 %55)
  br label %57

57:                                               ; preds = %54, %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i64 @add_file_to_index(i32, i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @fprintf_ln(i32, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

declare dso_local i32 @die(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
