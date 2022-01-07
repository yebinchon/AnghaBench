; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_process_all_files.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_process_all_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.line_log_data = type { i32, i32, %struct.line_log_data*, i32 }
%struct.diff_ranges = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.line_log_data**, %struct.rev_info*, %struct.diff_queue_struct*, %struct.line_log_data*)* @process_all_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_all_files(%struct.line_log_data** %0, %struct.rev_info* %1, %struct.diff_queue_struct* %2, %struct.line_log_data* %3) #0 {
  %5 = alloca %struct.line_log_data**, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.diff_queue_struct*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.diff_ranges*, align 8
  %12 = alloca %struct.diff_filepair*, align 8
  %13 = alloca %struct.line_log_data*, align 8
  store %struct.line_log_data** %0, %struct.line_log_data*** %5, align 8
  store %struct.rev_info* %1, %struct.rev_info** %6, align 8
  store %struct.diff_queue_struct* %2, %struct.diff_queue_struct** %7, align 8
  store %struct.line_log_data* %3, %struct.line_log_data** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %15 = call %struct.line_log_data* @line_log_data_copy(%struct.line_log_data* %14)
  %16 = load %struct.line_log_data**, %struct.line_log_data*** %5, align 8
  store %struct.line_log_data* %15, %struct.line_log_data** %16, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %81, %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %7, align 8
  %20 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  store %struct.diff_ranges* null, %struct.diff_ranges** %11, align 8
  %24 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %7, align 8
  %25 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %24, i32 0, i32 1
  %26 = load %struct.diff_filepair**, %struct.diff_filepair*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %26, i64 %28
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %29, align 8
  store %struct.diff_filepair* %30, %struct.diff_filepair** %12, align 8
  %31 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %33 = load %struct.line_log_data**, %struct.line_log_data*** %5, align 8
  %34 = load %struct.line_log_data*, %struct.line_log_data** %33, align 8
  %35 = call i64 @process_diff_filepair(%struct.rev_info* %31, %struct.diff_filepair* %32, %struct.line_log_data* %34, %struct.diff_ranges** %11)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %23
  %38 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  store %struct.line_log_data* %38, %struct.line_log_data** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %57, %37
  %42 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %43 = icmp ne %struct.line_log_data* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %46 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.diff_filepair*, %struct.diff_filepair** %12, align 8
  %49 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @strcmp(i32 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %44, %41
  %56 = phi i1 [ false, %41 ], [ %54, %44 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %59 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %58, i32 0, i32 2
  %60 = load %struct.line_log_data*, %struct.line_log_data** %59, align 8
  store %struct.line_log_data* %60, %struct.line_log_data** %13, align 8
  br label %41

61:                                               ; preds = %55
  %62 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %63 = call i32 @assert(%struct.line_log_data* %62)
  %64 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %7, align 8
  %65 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %64, i32 0, i32 1
  %66 = load %struct.diff_filepair**, %struct.diff_filepair*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %66, i64 %68
  %70 = load %struct.diff_filepair*, %struct.diff_filepair** %69, align 8
  %71 = call i32 @diff_filepair_dup(%struct.diff_filepair* %70)
  %72 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %73 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.line_log_data*, %struct.line_log_data** %13, align 8
  %75 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %74, i32 0, i32 0
  %76 = load %struct.diff_ranges*, %struct.diff_ranges** %11, align 8
  %77 = call i32 @memcpy(i32* %75, %struct.diff_ranges* %76, i32 4)
  br label %78

78:                                               ; preds = %61, %23
  %79 = load %struct.diff_ranges*, %struct.diff_ranges** %11, align 8
  %80 = call i32 @free(%struct.diff_ranges* %79)
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local %struct.line_log_data* @line_log_data_copy(%struct.line_log_data*) #1

declare dso_local i64 @process_diff_filepair(%struct.rev_info*, %struct.diff_filepair*, %struct.line_log_data*, %struct.diff_ranges**) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @assert(%struct.line_log_data*) #1

declare dso_local i32 @diff_filepair_dup(%struct.diff_filepair*) #1

declare dso_local i32 @memcpy(i32*, %struct.diff_ranges*, i32) #1

declare dso_local i32 @free(%struct.diff_ranges*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
