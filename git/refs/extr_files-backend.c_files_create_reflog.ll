; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_create_reflog.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_create_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.strbuf = type { i32 }
%struct.files_ref_store = type { i32 }

@REF_STORE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"create_reflog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, i32, %struct.strbuf*)* @files_create_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_create_reflog(%struct.ref_store* %0, i8* %1, i32 %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %12 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %13 = load i32, i32* @REF_STORE_WRITE, align 4
  %14 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %12, i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %14, %struct.files_ref_store** %10, align 8
  %15 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %19 = call i64 @log_ref_setup(%struct.files_ref_store* %15, i8* %16, i32 %17, i32* %11, %struct.strbuf* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i64 @log_ref_setup(%struct.files_ref_store*, i8*, i32, i32*, %struct.strbuf*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
