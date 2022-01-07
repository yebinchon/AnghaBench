; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_flush_raw.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_flush_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.diff_options = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c":%06o %06o %s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%c%03d%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@DIFF_STATUS_COPIED = common dso_local global i64 0, align 8
@DIFF_STATUS_RENAMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*)* @diff_flush_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_flush_raw(%struct.diff_filepair* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %11 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 9, i32 0
  store i32 %17, i32* %6, align 4
  %18 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %22 = call i8* @diff_line_prefix(%struct.diff_options* %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %25 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %2
  %31 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %35 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %40 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %45 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %49 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @diff_aligned_abbrev(i32* %47, i32 %50)
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %43, i8* %51)
  %53 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %57 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %61 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @diff_aligned_abbrev(i32* %59, i32 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %30, %2
  %66 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %67 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %72 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %75 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %78 = call i32 @similarity_index(%struct.diff_filepair* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %65
  %82 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %83 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %86 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %70
  %91 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %92 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @DIFF_STATUS_COPIED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %99 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @DIFF_STATUS_RENAMED, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %131

104:                                              ; preds = %97, %90
  %105 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %106 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %7, align 8
  %110 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %111 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %8, align 8
  %115 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %116 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strip_prefix(i32 %117, i8** %7, i8** %8)
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %121 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @write_name_quoted(i8* %119, i32 %122, i32 %123)
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %127 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @write_name_quoted(i8* %125, i32 %128, i32 %129)
  br label %162

131:                                              ; preds = %97
  %132 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %133 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %140 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  br label %150

144:                                              ; preds = %131
  %145 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %146 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  br label %150

150:                                              ; preds = %144, %138
  %151 = phi i8* [ %143, %138 ], [ %149, %144 ]
  store i8* %151, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %152 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %153 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strip_prefix(i32 %154, i8** %9, i8** %10)
  %156 = load i8*, i8** %9, align 8
  %157 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %158 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @write_name_quoted(i8* %156, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %150, %104
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i8* @diff_aligned_abbrev(i32*, i32) #1

declare dso_local i32 @similarity_index(%struct.diff_filepair*) #1

declare dso_local i32 @strip_prefix(i32, i8**, i8**) #1

declare dso_local i32 @write_name_quoted(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
