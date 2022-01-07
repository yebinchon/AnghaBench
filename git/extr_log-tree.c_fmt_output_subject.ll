; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_subject.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_fmt_output_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i8*, i32, i64 }

@FORMAT_PATCH_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"v%d-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%04d-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt_output_subject(%struct.strbuf* %0, i8* %1, %struct.rev_info* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.rev_info* %2, %struct.rev_info** %6, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FORMAT_PATCH_NAME_MAX, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 0, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %33 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %3
  %39 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @strbuf_setlen(%struct.strbuf* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @strbuf_addstr(%struct.strbuf* %53, i8* %54)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
