; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_diff_cmd.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_diff_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32 }
%struct.strbuf = type { i8*, i64 }
%struct.diff_options = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.diff_filepair = type { i64, i64 }
%struct.userdiff_driver = type { i8* }

@DIFF_STATUS_MODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"* Unmerged path %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.strbuf*, %struct.diff_options*, %struct.diff_filepair*)* @run_diff_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_diff_cmd(i8* %0, i8* %1, i8* %2, i8* %3, %struct.diff_filespec* %4, %struct.diff_filespec* %5, %struct.strbuf* %6, %struct.diff_options* %7, %struct.diff_filepair* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.diff_filespec*, align 8
  %15 = alloca %struct.diff_filespec*, align 8
  %16 = alloca %struct.strbuf*, align 8
  %17 = alloca %struct.diff_options*, align 8
  %18 = alloca %struct.diff_filepair*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.userdiff_driver*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %14, align 8
  store %struct.diff_filespec* %5, %struct.diff_filespec** %15, align 8
  store %struct.strbuf* %6, %struct.strbuf** %16, align 8
  store %struct.diff_options* %7, %struct.diff_options** %17, align 8
  store %struct.diff_filepair* %8, %struct.diff_filepair** %18, align 8
  store i8* null, i8** %19, align 8
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %24 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %9
  %29 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %30 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %9
  %34 = phi i1 [ false, %9 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %37 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = call %struct.userdiff_driver* @userdiff_find_by_path(i32 %46, i8* %47)
  store %struct.userdiff_driver* %48, %struct.userdiff_driver** %22, align 8
  %49 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %50 = icmp ne %struct.userdiff_driver* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %53 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.userdiff_driver*, %struct.userdiff_driver** %22, align 8
  %58 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %56, %51, %41
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %63 = icmp ne %struct.strbuf* %62, null
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %70 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %71 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  %72 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %73 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @want_color(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %64
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %77, %64
  %82 = phi i1 [ false, %64 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @fill_metainfo(%struct.strbuf* %65, i8* %66, i8* %67, %struct.diff_filespec* %68, %struct.diff_filespec* %69, %struct.diff_options* %70, %struct.diff_filepair* %71, i32* %21, i32 %83)
  %85 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i8* [ %92, %89 ], [ null, %93 ]
  store i8* %95, i8** %19, align 8
  br label %96

96:                                               ; preds = %94, %61
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %104 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %107 = call i32 @run_external_diff(i8* %100, i8* %101, i8* %102, %struct.diff_filespec* %103, %struct.diff_filespec* %104, i8* %105, %struct.diff_options* %106)
  br label %137

108:                                              ; preds = %96
  %109 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %110 = icmp ne %struct.diff_filespec* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %113 = icmp ne %struct.diff_filespec* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i8*, i8** %12, align 8
  br label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** %11, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i8* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %125 = load %struct.diff_filespec*, %struct.diff_filespec** %15, align 8
  %126 = load i8*, i8** %19, align 8
  %127 = load i32, i32* %21, align 4
  %128 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @builtin_diff(i8* %115, i8* %123, %struct.diff_filespec* %124, %struct.diff_filespec* %125, i8* %126, i32 %127, %struct.diff_options* %128, i32 %129)
  br label %137

131:                                              ; preds = %111, %108
  %132 = load %struct.diff_options*, %struct.diff_options** %17, align 8
  %133 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @fprintf(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %99, %131, %122
  ret void
}

declare dso_local %struct.userdiff_driver* @userdiff_find_by_path(i32, i8*) #1

declare dso_local i32 @fill_metainfo(%struct.strbuf*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_options*, %struct.diff_filepair*, i32*, i32) #1

declare dso_local i64 @want_color(i32) #1

declare dso_local i32 @run_external_diff(i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, %struct.diff_options*) #1

declare dso_local i32 @builtin_diff(i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i32, %struct.diff_options*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
