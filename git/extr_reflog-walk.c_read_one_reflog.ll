; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_read_one_reflog.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_read_one_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.complete_reflogs = type { i32, %struct.reflog_info*, i32 }
%struct.reflog_info = type { i32, i8*, i32, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i32, i32, i8*, i8*)* @read_one_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_reflog(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.complete_reflogs*, align 8
  %16 = alloca %struct.reflog_info*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.object_id* %1, %struct.object_id** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = bitcast i8* %17 to %struct.complete_reflogs*
  store %struct.complete_reflogs* %18, %struct.complete_reflogs** %15, align 8
  %19 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %20 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %19, i32 0, i32 1
  %21 = load %struct.reflog_info*, %struct.reflog_info** %20, align 8
  %22 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %23 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %27 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ALLOC_GROW(%struct.reflog_info* %21, i32 %25, i32 %28)
  %30 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %31 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %30, i32 0, i32 1
  %32 = load %struct.reflog_info*, %struct.reflog_info** %31, align 8
  %33 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %34 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %32, i64 %36
  store %struct.reflog_info* %37, %struct.reflog_info** %16, align 8
  %38 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %39 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %38, i32 0, i32 5
  %40 = load %struct.object_id*, %struct.object_id** %8, align 8
  %41 = call i32 @oidcpy(i32* %39, %struct.object_id* %40)
  %42 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %43 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %42, i32 0, i32 4
  %44 = load %struct.object_id*, %struct.object_id** %9, align 8
  %45 = call i32 @oidcpy(i32* %43, %struct.object_id* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @xstrdup(i8* %46)
  %48 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %49 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %52 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %55 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i8* @xstrdup(i8* %56)
  %58 = load %struct.reflog_info*, %struct.reflog_info** %16, align 8
  %59 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.complete_reflogs*, %struct.complete_reflogs** %15, align 8
  %61 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  ret i32 0
}

declare dso_local i32 @ALLOC_GROW(%struct.reflog_info*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
