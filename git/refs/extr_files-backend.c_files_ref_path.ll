; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_path.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_ref_store = type { i32, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"main-worktree/\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ref %s is not a main pseudoref\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unknown ref type %d of ref %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_ref_store*, %struct.strbuf*, i8*)* @files_ref_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @files_ref_path(%struct.files_ref_store* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.files_ref_store*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  store %struct.files_ref_store* %0, %struct.files_ref_store** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @ref_type(i8* %7)
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %9
    i32 132, label %16
    i32 130, label %24
    i32 131, label %24
  ]

9:                                                ; preds = %3, %3
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %12 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14)
  br label %36

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @skip_prefix(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %3, %3, %23
  %25 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %26 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %27 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strbuf_addf(%struct.strbuf* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29)
  br label %36

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @ref_type(i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %24, %9
  ret void
}

declare dso_local i32 @ref_type(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @BUG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
