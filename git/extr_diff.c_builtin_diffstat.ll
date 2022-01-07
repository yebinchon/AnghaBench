; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_builtin_diffstat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_builtin_diffstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32, i32, i32, i32 }
%struct.diffstat_t = type { i32 }
%struct.diff_options = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.diff_filepair = type { i64, i64 }
%struct.diffstat_file = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@DIFF_STATUS_MODIFIED = common dso_local global i64 0, align 8
@DIFF_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to read files to diff\00", align 1
@discard_hunk_line = common dso_local global i32 0, align 4
@diffstat_consume = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to generate diffstat for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diffstat_t*, %struct.diff_options*, %struct.diff_filepair*)* @builtin_diffstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @builtin_diffstat(i8* %0, i8* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, %struct.diffstat_t* %4, %struct.diff_options* %5, %struct.diff_filepair* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.diff_filespec*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diffstat_t*, align 8
  %13 = alloca %struct.diff_options*, align 8
  %14 = alloca %struct.diff_filepair*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.diffstat_file*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %10, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %11, align 8
  store %struct.diffstat_t* %4, %struct.diffstat_t** %12, align 8
  store %struct.diff_options* %5, %struct.diff_options** %13, align 8
  store %struct.diff_filepair* %6, %struct.diff_filepair** %14, align 8
  store i32 0, i32* %19, align 4
  %22 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %23 = call i32 @DIFF_PAIR_UNMERGED(%struct.diff_filepair* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %7
  %26 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %27 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DIFF_STATUS_MODIFIED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %33 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %19, align 4
  br label %37

37:                                               ; preds = %36, %31, %25
  br label %38

38:                                               ; preds = %37, %7
  %39 = load %struct.diffstat_t*, %struct.diffstat_t** %12, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call %struct.diffstat_file* @diffstat_add(%struct.diffstat_t* %39, i8* %40, i8* %41)
  store %struct.diffstat_file* %42, %struct.diffstat_file** %17, align 8
  %43 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %44 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DIFF_STATUS_UNKNOWN, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %50 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %52 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %38
  %57 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %58 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %59 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @get_compact_summary(%struct.diff_filepair* %57, i32 %60)
  %62 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %63 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %38
  %65 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %66 = icmp ne %struct.diff_filespec* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %69 = icmp ne %struct.diff_filespec* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %72 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %210

73:                                               ; preds = %67
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %75 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %74, i32 0, i32 3
  %76 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %77 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %76, i32 0, i32 3
  %78 = call i32 @oideq(i32* %75, i32* %77)
  store i32 %78, i32* %18, align 4
  %79 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %80 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %83 = call i64 @diff_filespec_is_binary(i32 %81, %struct.diff_filespec* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %73
  %86 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %87 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %90 = call i64 @diff_filespec_is_binary(i32 %88, %struct.diff_filespec* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %85, %73
  %93 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %94 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %99 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %98, i32 0, i32 3
  store i8* null, i8** %99, align 8
  %100 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %101 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %100, i32 0, i32 4
  store i8* null, i8** %101, align 8
  br label %117

102:                                              ; preds = %92
  %103 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %104 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %107 = call i8* @diff_filespec_size(i32 %105, %struct.diff_filespec* %106)
  %108 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %109 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %111 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %114 = call i8* @diff_filespec_size(i32 %112, %struct.diff_filespec* %113)
  %115 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %116 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %102, %97
  br label %205

118:                                              ; preds = %85
  %119 = load i32, i32* %19, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %118
  %122 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %123 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %126 = call i32 @diff_populate_filespec(i32 %124, %struct.diff_filespec* %125, i32 0)
  %127 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %128 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %131 = call i32 @diff_populate_filespec(i32 %129, %struct.diff_filespec* %130, i32 0)
  %132 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %133 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %136 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @count_lines(i32 %134, i32 %137)
  %139 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %140 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %142 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %145 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @count_lines(i32 %143, i32 %146)
  %148 = load %struct.diffstat_file*, %struct.diffstat_file** %17, align 8
  %149 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  br label %204

150:                                              ; preds = %118
  %151 = load i32, i32* %18, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %203, label %153

153:                                              ; preds = %150
  %154 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %155 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %158 = call i64 @fill_mmfile(i32 %156, i32* %15, %struct.diff_filespec* %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %162 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %165 = call i64 @fill_mmfile(i32 %163, i32* %16, %struct.diff_filespec* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160, %153
  %168 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %160
  %170 = call i32 @memset(%struct.TYPE_8__* %20, i32 0, i32 20)
  %171 = call i32 @memset(%struct.TYPE_8__* %21, i32 0, i32 20)
  %172 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %173 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i32 %174, i32* %175, align 4
  %176 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %177 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  %180 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %181 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %182, i32* %183, align 4
  %184 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %185 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 %186, i32* %187, align 4
  %188 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  %189 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %190, i32* %191, align 4
  %192 = load i32, i32* @discard_hunk_line, align 4
  %193 = load i32, i32* @diffstat_consume, align 4
  %194 = load %struct.diffstat_t*, %struct.diffstat_t** %12, align 8
  %195 = call i64 @xdi_diff_outf(i32* %15, i32* %16, i32 %192, i32 %193, %struct.diffstat_t* %194, %struct.TYPE_8__* %20, %struct.TYPE_8__* %21)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %169
  %198 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %199 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %197, %169
  br label %203

203:                                              ; preds = %202, %150
  br label %204

204:                                              ; preds = %203, %121
  br label %205

205:                                              ; preds = %204, %117
  %206 = load %struct.diff_filespec*, %struct.diff_filespec** %10, align 8
  %207 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %206)
  %208 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %209 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %208)
  br label %210

210:                                              ; preds = %205, %70
  ret void
}

declare dso_local i32 @DIFF_PAIR_UNMERGED(%struct.diff_filepair*) #1

declare dso_local %struct.diffstat_file* @diffstat_add(%struct.diffstat_t*, i8*, i8*) #1

declare dso_local i32 @get_compact_summary(%struct.diff_filepair*, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i64 @diff_filespec_is_binary(i32, %struct.diff_filespec*) #1

declare dso_local i8* @diff_filespec_size(i32, %struct.diff_filespec*) #1

declare dso_local i32 @diff_populate_filespec(i32, %struct.diff_filespec*, i32) #1

declare dso_local i8* @count_lines(i32, i32) #1

declare dso_local i64 @fill_mmfile(i32, i32*, %struct.diff_filespec*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @xdi_diff_outf(i32*, i32*, i32, i32, %struct.diffstat_t*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @diff_free_filespec_data(%struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
