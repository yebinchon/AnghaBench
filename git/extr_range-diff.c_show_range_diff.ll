; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_show_range_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_show_range_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i32 }
%struct.diff_options = type { %struct.strbuf*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not parse log for '%s'\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIFF_FORMAT_PATCH = common dso_local global i64 0, align 8
@output_prefix_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_range_diff(i8* %0, i8* %1, i32 %2, i32 %3, %struct.diff_options* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_options*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.string_list, align 4
  %13 = alloca %struct.string_list, align 4
  %14 = alloca %struct.diff_options, align 8
  %15 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.diff_options* %4, %struct.diff_options** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = bitcast %struct.string_list* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %17 = bitcast %struct.string_list* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @read_patches(i8* %18, %struct.string_list* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @error(i32 %22, i8* %23)
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @read_patches(i8* %29, %struct.string_list* %13)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @error(i32 %33, i8* %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %28, %25
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %36
  %40 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %41 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %42 = icmp ne %struct.diff_options* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %45 = call i32 @memcpy(%struct.diff_options* %14, %struct.diff_options* %44, i32 32)
  br label %48

46:                                               ; preds = %39
  %47 = call i32 @diff_setup(%struct.diff_options* %14)
  br label %48

48:                                               ; preds = %46, %43
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* @DIFF_FORMAT_PATCH, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @output_prefix_cb, align 4
  %64 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = call i32 @strbuf_addstr(%struct.strbuf* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %14, i32 0, i32 0
  store %struct.strbuf* %15, %struct.strbuf** %66, align 8
  %67 = call i32 @diff_setup_done(%struct.diff_options* %14)
  %68 = call i32 @find_exact_matches(%struct.string_list* %12, %struct.string_list* %13)
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @get_correspondences(%struct.string_list* %12, %struct.string_list* %13, i32 %69)
  %71 = call i32 @output(%struct.string_list* %12, %struct.string_list* %13, %struct.diff_options* %14)
  %72 = call i32 @strbuf_release(%struct.strbuf* %15)
  br label %73

73:                                               ; preds = %55, %36
  %74 = call i32 @string_list_clear(%struct.string_list* %12, i32 1)
  %75 = call i32 @string_list_clear(%struct.string_list* %13, i32 1)
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_patches(i8*, %struct.string_list*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @memcpy(%struct.diff_options*, %struct.diff_options*, i32) #2

declare dso_local i32 @diff_setup(%struct.diff_options*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #2

declare dso_local i32 @find_exact_matches(%struct.string_list*, %struct.string_list*) #2

declare dso_local i32 @get_correspondences(%struct.string_list*, %struct.string_list*, i32) #2

declare dso_local i32 @output(%struct.string_list*, %struct.string_list*, %struct.diff_options*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
