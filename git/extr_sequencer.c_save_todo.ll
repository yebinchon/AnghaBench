; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_save_todo.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_save_todo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.todo_list = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.replay_opts = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"could not lock '%s'\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to finalize '%s'\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.todo_list*, %struct.replay_opts*)* @save_todo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_todo(%struct.todo_list* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.todo_list*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca %struct.lock_file, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.todo_list* %0, %struct.todo_list** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %14 = bitcast %struct.lock_file* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %16 = call i8* @get_todo_path(%struct.replay_opts* %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %18 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %21 = call i64 @is_rebase_i(%struct.replay_opts* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @hold_lock_file_for_update(%struct.lock_file* %6, i8* %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @error_errno(i32 %32, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %113

35:                                               ; preds = %26
  %36 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_item_line_offset(%struct.todo_list* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %41 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %48 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = call i64 @write_in_full(i32 %39, i64 %46, i64 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %35
  %57 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @error_errno(i32 %57, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %113

60:                                               ; preds = %35
  %61 = call i64 @commit_lock_file(%struct.lock_file* %6)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @error(i32 %64, i8* %65)
  store i32 %66, i32* %3, align 4
  br label %113

67:                                               ; preds = %60
  %68 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %69 = call i64 @is_rebase_i(%struct.replay_opts* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  %75 = call i8* (...) @rebase_path_done()
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* @O_CREAT, align 4
  %78 = load i32, i32* @O_WRONLY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @O_APPEND, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @open(i8* %76, i32 %81, i32 438)
  store i32 %82, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %113

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i64 @get_item_line(%struct.todo_list* %88, i32 %90)
  %92 = load %struct.todo_list*, %struct.todo_list** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i64 @get_item_line_length(%struct.todo_list* %92, i32 %94)
  %96 = call i64 @write_in_full(i32 %87, i64 %91, i64 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @error_errno(i32 %99, i8* %100)
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %86
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @close(i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @error_errno(i32 %107, i8* %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %3, align 4
  br label %113

112:                                              ; preds = %71, %67
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %110, %85, %63, %56, %31
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @get_todo_path(%struct.replay_opts*) #2

declare dso_local i64 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @get_item_line_offset(%struct.todo_list*, i32) #2

declare dso_local i64 @write_in_full(i32, i64, i64) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i8* @rebase_path_done(...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @get_item_line(%struct.todo_list*, i32) #2

declare dso_local i64 @get_item_line_length(%struct.todo_list*, i32) #2

declare dso_local i64 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
