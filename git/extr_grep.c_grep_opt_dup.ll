; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_opt_dup.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_opt_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.grep_pat*, %struct.grep_pat** }
%struct.grep_pat = type { i64, i32, i32, i32, i32, i32, %struct.grep_pat* }

@GREP_PATTERN_HEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.grep_opt* @grep_opt_dup(%struct.grep_opt* %0) #0 {
  %2 = alloca %struct.grep_opt*, align 8
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_opt*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %2, align 8
  %5 = call %struct.grep_opt* @xmalloc(i32 16)
  store %struct.grep_opt* %5, %struct.grep_opt** %4, align 8
  %6 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %7 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %8 = bitcast %struct.grep_opt* %6 to i8*
  %9 = bitcast %struct.grep_opt* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %11 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %10, i32 0, i32 0
  store %struct.grep_pat* null, %struct.grep_pat** %11, align 8
  %12 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %13 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %12, i32 0, i32 0
  %14 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %15 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %14, i32 0, i32 1
  store %struct.grep_pat** %13, %struct.grep_pat*** %15, align 8
  %16 = load %struct.grep_opt*, %struct.grep_opt** %2, align 8
  %17 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %16, i32 0, i32 0
  %18 = load %struct.grep_pat*, %struct.grep_pat** %17, align 8
  store %struct.grep_pat* %18, %struct.grep_pat** %3, align 8
  br label %19

19:                                               ; preds = %56, %1
  %20 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %21 = icmp ne %struct.grep_pat* %20, null
  br i1 %21, label %22, label %60

22:                                               ; preds = %19
  %23 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %24 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GREP_PATTERN_HEAD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %30 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %31 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %34 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @append_header_grep_pattern(%struct.grep_opt* %29, i32 %32, i32 %35)
  br label %55

37:                                               ; preds = %22
  %38 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %39 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %40 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %43 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %46 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %49 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %52 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @append_grep_pat(%struct.grep_opt* %38, i32 %41, i32 %44, i32 %47, i32 %50, i64 %53)
  br label %55

55:                                               ; preds = %37, %28
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %58 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %57, i32 0, i32 6
  %59 = load %struct.grep_pat*, %struct.grep_pat** %58, align 8
  store %struct.grep_pat* %59, %struct.grep_pat** %3, align 8
  br label %19

60:                                               ; preds = %19
  %61 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  ret %struct.grep_opt* %61
}

declare dso_local %struct.grep_opt* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @append_header_grep_pattern(%struct.grep_opt*, i32, i32) #1

declare dso_local i32 @append_grep_pat(%struct.grep_opt*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
