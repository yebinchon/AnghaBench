; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i8*, i32 }
%struct.diff_options = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.strbuf = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*)* @run_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_diff(%struct.diff_filepair* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %13 = call i8* (...) @external_diff()
  store i8* %13, i8** %5, align 8
  %14 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %15 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %14, i32 0, i32 1
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  store %struct.diff_filespec* %16, %struct.diff_filespec** %7, align 8
  %17 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %18 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %17, i32 0, i32 0
  %19 = load %struct.diff_filespec*, %struct.diff_filespec** %18, align 8
  store %struct.diff_filespec* %19, %struct.diff_filespec** %8, align 8
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %21 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %25 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %31 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ null, %33 ]
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %9, align 8
  store i8* %36, i8** %11, align 8
  %37 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %38 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @strip_prefix(i64 %44, i8** %9, i8** %10)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  store i8* null, i8** %5, align 8
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %55 = call i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %62 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %63 = call i32 @run_diff_cmd(i8* %58, i8* %59, i8* null, i8* %60, %struct.diff_filespec* null, %struct.diff_filespec* null, %struct.strbuf* null, %struct.diff_options* %61, %struct.diff_filepair* %62)
  br label %143

64:                                               ; preds = %53
  %65 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %66 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %67 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @diff_fill_oid_info(%struct.diff_filespec* %65, i32 %70)
  %72 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %73 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %74 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @diff_fill_oid_info(%struct.diff_filespec* %72, i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %131, label %81

81:                                               ; preds = %64
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %83 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %131

85:                                               ; preds = %81
  %86 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %87 = call i64 @DIFF_FILE_VALID(%struct.diff_filespec* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = load i32, i32* @S_IFMT, align 4
  %91 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %92 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %90, %93
  %95 = load i32, i32* @S_IFMT, align 4
  %96 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %97 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %94, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %89
  %102 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %103 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call %struct.diff_filespec* @alloc_filespec(i8* %104)
  store %struct.diff_filespec* %105, %struct.diff_filespec** %12, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %110 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %111 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %112 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %113 = call i32 @run_diff_cmd(i8* null, i8* %106, i8* %107, i8* %108, %struct.diff_filespec* %109, %struct.diff_filespec* %110, %struct.strbuf* %6, %struct.diff_options* %111, %struct.diff_filepair* %112)
  %114 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %115 = call i32 @free(%struct.diff_filespec* %114)
  %116 = call i32 @strbuf_release(%struct.strbuf* %6)
  %117 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %118 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call %struct.diff_filespec* @alloc_filespec(i8* %119)
  store %struct.diff_filespec* %120, %struct.diff_filespec** %12, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %125 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %126 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %127 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %128 = call i32 @run_diff_cmd(i8* null, i8* %121, i8* %122, i8* %123, %struct.diff_filespec* %124, %struct.diff_filespec* %125, %struct.strbuf* %6, %struct.diff_options* %126, %struct.diff_filepair* %127)
  %129 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %130 = call i32 @free(%struct.diff_filespec* %129)
  br label %141

131:                                              ; preds = %89, %85, %81, %64
  %132 = load i8*, i8** %5, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %137 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %138 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %139 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %140 = call i32 @run_diff_cmd(i8* %132, i8* %133, i8* %134, i8* %135, %struct.diff_filespec* %136, %struct.diff_filespec* %137, %struct.strbuf* %6, %struct.diff_options* %138, %struct.diff_filepair* %139)
  br label %141

141:                                              ; preds = %131, %101
  %142 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %143

143:                                              ; preds = %141, %57
  ret void
}

declare dso_local i8* @external_diff(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strip_prefix(i64, i8**, i8**) #1

declare dso_local i64 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local i32 @run_diff_cmd(i8*, i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.strbuf*, %struct.diff_options*, %struct.diff_filepair*) #1

declare dso_local i32 @diff_fill_oid_info(%struct.diff_filespec*, i32) #1

declare dso_local i64 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local %struct.diff_filespec* @alloc_filespec(i8*) #1

declare dso_local i32 @free(%struct.diff_filespec*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
