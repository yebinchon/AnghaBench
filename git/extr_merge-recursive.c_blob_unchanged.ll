; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_blob_unchanged.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_blob_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.index_state* }
%struct.index_state = type { i32 }
%struct.diff_filespec = type { i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, i32, i8*)* @blob_unchanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_unchanged(%struct.merge_options* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.index_state*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %8, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  %18 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %19 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.index_state*, %struct.index_state** %21, align 8
  store %struct.index_state* %22, %struct.index_state** %15, align 8
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %24 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %27 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %97

31:                                               ; preds = %5
  %32 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %33 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %32, i32 0, i32 1
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %35 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %34, i32 0, i32 1
  %36 = call i64 @oid_eq(i32* %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %97

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %97

43:                                               ; preds = %39
  %44 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %45 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %46 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %45, i32 0, i32 1
  %47 = call i64 @read_oid_strbuf(%struct.merge_options* %44, i32* %46, %struct.strbuf* %12)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 1
  %53 = call i64 @read_oid_strbuf(%struct.merge_options* %50, i32* %52, %struct.strbuf* %13)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43
  br label %93

56:                                               ; preds = %49
  %57 = load %struct.index_state*, %struct.index_state** %15, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @renormalize_buffer(%struct.index_state* %57, i8* %58, i32 %60, i64 %62, %struct.strbuf* %12)
  %64 = load %struct.index_state*, %struct.index_state** %15, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @renormalize_buffer(%struct.index_state* %64, i8* %65, i32 %67, i64 %69, %struct.strbuf* %13)
  %71 = or i32 %63, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memcmp(i32 %81, i32 %83, i64 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %79, %73
  %90 = phi i1 [ false, %73 ], [ %88, %79 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %89, %56
  br label %93

93:                                               ; preds = %92, %55
  %94 = call i32 @strbuf_release(%struct.strbuf* %12)
  %95 = call i32 @strbuf_release(%struct.strbuf* %13)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %42, %38, %30
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @oid_eq(i32*, i32*) #2

declare dso_local i64 @read_oid_strbuf(%struct.merge_options*, i32*, %struct.strbuf*) #2

declare dso_local i32 @renormalize_buffer(%struct.index_state*, i8*, i32, i64, %struct.strbuf*) #2

declare dso_local i32 @memcmp(i32, i32, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
