; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_merge.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_merge.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"--no-commit\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.TYPE_4__*, i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i8** %0, %struct.TYPE_4__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.args_info, align 4
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = bitcast %struct.args_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (...) @print_usage()
  br label %16

16:                                               ; preds = %14, %4
  %17 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %56, %16
  %19 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load i8**, i8*** %8, align 8
  %25 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @opts_add_refish(%struct.TYPE_4__* %36, i8* %37)
  br label %55

39:                                               ; preds = %23
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load i8**, i8*** %5, align 8
  %48 = call i64 @match_str_arg(i8** %47, %struct.args_info* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %56

51:                                               ; preds = %46
  %52 = call i32 (...) @print_usage()
  br label %53

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %50
  %57 = getelementptr inbounds %struct.args_info, %struct.args_info* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %18

60:                                               ; preds = %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @print_usage(...) #2

declare dso_local i32 @opts_add_refish(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @match_str_arg(i8**, %struct.args_info*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
