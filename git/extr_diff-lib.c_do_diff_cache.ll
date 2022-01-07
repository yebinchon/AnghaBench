; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_do_diff_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_do_diff_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.diff_options = type { i32, i32 }
%struct.rev_info = type { %struct.diff_options, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_diff_cache(%struct.object_id* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca %struct.rev_info, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %6 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %7 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @repo_init_revisions(i32 %8, %struct.rev_info* %5, i32* null)
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 1
  %11 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = call i32 @copy_pathspec(i32* %10, i32* %12)
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %15 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %16 = bitcast %struct.diff_options* %14 to i8*
  %17 = bitcast %struct.diff_options* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = load %struct.object_id*, %struct.object_id** %3, align 8
  %19 = call i64 @diff_cache(%struct.rev_info* %5, %struct.object_id* %18, i32* null, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @exit(i32 128) #4
  unreachable

23:                                               ; preds = %2
  ret i32 0
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @copy_pathspec(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @diff_cache(%struct.rev_info*, %struct.object_id*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
