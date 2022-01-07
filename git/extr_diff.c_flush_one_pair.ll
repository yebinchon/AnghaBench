; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_flush_one_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_flush_one_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.diff_options = type { i32, i32, i32, i32 }

@DIFF_FORMAT_CHECKDIFF = common dso_local global i32 0, align 4
@DIFF_FORMAT_RAW = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_options*)* @flush_one_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_one_pair(%struct.diff_filepair* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diff_filepair*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %8 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %9 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @DIFF_FORMAT_CHECKDIFF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %17 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %18 = call i32 @diff_flush_checkdiff(%struct.diff_filepair* %16, %struct.diff_options* %17)
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DIFF_FORMAT_RAW, align 4
  %22 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %28 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %29 = call i32 @diff_flush_raw(%struct.diff_filepair* %27, %struct.diff_options* %28)
  br label %60

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DIFF_FORMAT_NAME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %37 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %41 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strip_prefix(i32 %43, i8** %6, i8** %7)
  %45 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %46 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %49 = call i8* @diff_line_prefix(%struct.diff_options* %48)
  %50 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %56 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @write_name_quoted(i8* %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %35, %30
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %15
  ret void
}

declare dso_local i32 @diff_flush_checkdiff(%struct.diff_filepair*, %struct.diff_options*) #1

declare dso_local i32 @diff_flush_raw(%struct.diff_filepair*, %struct.diff_options*) #1

declare dso_local i32 @strip_prefix(i32, i8**, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i32 @write_name_quoted(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
