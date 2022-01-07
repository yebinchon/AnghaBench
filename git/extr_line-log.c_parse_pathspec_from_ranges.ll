; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_parse_pathspec_from_ranges.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_parse_pathspec_from_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.pathspec = type { i32 }
%struct.line_log_data = type { i32, %struct.line_log_data* }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pathspec*, %struct.line_log_data*)* @parse_pathspec_from_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_pathspec_from_ranges(%struct.pathspec* %0, %struct.line_log_data* %1) #0 {
  %3 = alloca %struct.pathspec*, align 8
  %4 = alloca %struct.line_log_data*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca %struct.argv_array, align 4
  %7 = alloca i8**, align 8
  store %struct.pathspec* %0, %struct.pathspec** %3, align 8
  store %struct.line_log_data* %1, %struct.line_log_data** %4, align 8
  %8 = bitcast %struct.argv_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  store %struct.line_log_data* %9, %struct.line_log_data** %5, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %12 = icmp ne %struct.line_log_data* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %15 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @argv_array_push(%struct.argv_array* %6, i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  %20 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %19, i32 0, i32 1
  %21 = load %struct.line_log_data*, %struct.line_log_data** %20, align 8
  store %struct.line_log_data* %21, %struct.line_log_data** %5, align 8
  br label %10

22:                                               ; preds = %10
  %23 = call i8** @argv_array_detach(%struct.argv_array* %6)
  store i8** %23, i8*** %7, align 8
  %24 = load %struct.pathspec*, %struct.pathspec** %3, align 8
  %25 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = call i32 @parse_pathspec(%struct.pathspec* %24, i32 0, i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %26)
  %28 = load i8**, i8*** %7, align 8
  %29 = call i32 @free(i8** %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32) #2

declare dso_local i8** @argv_array_detach(%struct.argv_array*) #2

declare dso_local i32 @parse_pathspec(%struct.pathspec*, i32, i32, i8*, i8**) #2

declare dso_local i32 @free(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
