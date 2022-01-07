; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_filter_diffs_for_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_filter_diffs_for_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.line_log_data = type { i32, %struct.line_log_data* }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_log_data*, i32)* @filter_diffs_for_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_diffs_for_paths(%struct.line_log_data* %0, i32 %1) #0 {
  %3 = alloca %struct.line_log_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.diff_queue_struct, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  store %struct.line_log_data* %0, %struct.line_log_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %6)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %67, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 0), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %10
  %15 = load %struct.diff_filepair**, %struct.diff_filepair*** getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 1), align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %15, i64 %17
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  store %struct.diff_filepair* %19, %struct.diff_filepair** %7, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %8, align 8
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %21 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @DIFF_FILE_VALID(%struct.TYPE_2__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %30 = call i32 @diff_q(%struct.diff_queue_struct* %6, %struct.diff_filepair* %29)
  br label %34

31:                                               ; preds = %25
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %33 = call i32 @diff_free_filepair(%struct.diff_filepair* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %67

35:                                               ; preds = %14
  %36 = load %struct.line_log_data*, %struct.line_log_data** %3, align 8
  store %struct.line_log_data* %36, %struct.line_log_data** %8, align 8
  br label %37

37:                                               ; preds = %53, %35
  %38 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %39 = icmp ne %struct.line_log_data* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %42 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %45 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcmp(i32 %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %57

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %55 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %54, i32 0, i32 1
  %56 = load %struct.line_log_data*, %struct.line_log_data** %55, align 8
  store %struct.line_log_data* %56, %struct.line_log_data** %8, align 8
  br label %37

57:                                               ; preds = %51, %37
  %58 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %59 = icmp ne %struct.line_log_data* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %62 = call i32 @diff_q(%struct.diff_queue_struct* %6, %struct.diff_filepair* %61)
  br label %66

63:                                               ; preds = %57
  %64 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %65 = call i32 @diff_free_filepair(%struct.diff_filepair* %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.diff_filepair**, %struct.diff_filepair*** getelementptr inbounds (%struct.diff_queue_struct, %struct.diff_queue_struct* @diff_queued_diff, i32 0, i32 1), align 8
  %72 = call i32 @free(%struct.diff_filepair** %71)
  %73 = bitcast %struct.diff_queue_struct* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.diff_queue_struct* @diff_queued_diff to i8*), i8* align 8 %73, i64 16, i1 false)
  ret void
}

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

declare dso_local i32 @DIFF_FILE_VALID(%struct.TYPE_2__*) #1

declare dso_local i32 @diff_q(%struct.diff_queue_struct*, %struct.diff_filepair*) #1

declare dso_local i32 @diff_free_filepair(%struct.diff_filepair*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @free(%struct.diff_filepair**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
