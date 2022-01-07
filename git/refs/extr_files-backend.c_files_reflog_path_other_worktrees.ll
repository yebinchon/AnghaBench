; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_path_other_worktrees.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_path_other_worktrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_ref_store = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"refname %s is not a other-worktree ref\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s/worktrees/%.*s/logs/%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/logs/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.strbuf*, i8*)* @files_reflog_path_other_worktrees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @files_reflog_path_other_worktrees(%struct.files_ref_store* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.files_ref_store*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.files_ref_store* %0, %struct.files_ref_store** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @parse_worktree_ref(i8* %10, i8** %8, i32* %9, i8** %7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %21 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %22 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i8* %25, i8* %26)
  br label %35

28:                                               ; preds = %16
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %31 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %28, %19
  ret void
}

declare dso_local i64 @parse_worktree_ref(i8*, i8**, i32*, i8**) #1

declare dso_local i32 @BUG(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
