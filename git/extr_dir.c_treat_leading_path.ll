; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_treat_leading_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_treat_leading_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.dir_struct = type { i32 }
%struct.index_state = type { i32 }
%struct.pathspec = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIR_SHOW_OTHER_DIRECTORIES = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@path_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.index_state*, i8*, i32, %struct.pathspec*)* @treat_leading_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_leading_path(%struct.dir_struct* %0, %struct.index_state* %1, i8* %2, i32 %3, %struct.pathspec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_struct*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pathspec*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %7, align 8
  store %struct.index_state* %1, %struct.index_state** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.pathspec* %4, %struct.pathspec** %11, align 8
  %17 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %14, align 4
  %18 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %19 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 4
  br label %21

21:                                               ; preds = %35, %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br label %33

33:                                               ; preds = %24, %21
  %34 = phi i1 [ false, %21 ], [ %32, %24 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %10, align 4
  br label %21

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %124

42:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* @DIR_SHOW_OTHER_DIRECTORIES, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %46 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %117
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %53, i64 %59
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8*, i8** %15, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i8* @memchr(i8* %61, i8 signext 47, i32 %70)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %49
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %13, align 4
  br label %83

76:                                               ; preds = %49
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %76, %74
  %84 = call i32 @strbuf_setlen(%struct.strbuf* %12, i32 0)
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @strbuf_add(%struct.strbuf* %12, i8* %85, i32 %86)
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @is_directory(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %118

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pathspec*, %struct.pathspec** %11, align 8
  %99 = call i64 @simplify_away(i32 %95, i32 %97, %struct.pathspec* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %118

102:                                              ; preds = %93
  %103 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %104 = load %struct.index_state*, %struct.index_state** %8, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.pathspec*, %struct.pathspec** %11, align 8
  %107 = load i32, i32* @DT_DIR, align 4
  %108 = call i64 @treat_one_path(%struct.dir_struct* %103, i32* null, %struct.index_state* %104, %struct.strbuf* %12, i32 %105, %struct.pathspec* %106, i32 %107, i32* null)
  %109 = load i64, i64* @path_none, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %118

112:                                              ; preds = %102
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %14, align 4
  br label %118

117:                                              ; preds = %112
  br label %49

118:                                              ; preds = %116, %111, %101, %92
  %119 = call i32 @strbuf_release(%struct.strbuf* %12)
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.dir_struct*, %struct.dir_struct** %7, align 8
  %122 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %118, %41
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @is_directory(i32) #2

declare dso_local i64 @simplify_away(i32, i32, %struct.pathspec*) #2

declare dso_local i64 @treat_one_path(%struct.dir_struct*, i32*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*, i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
