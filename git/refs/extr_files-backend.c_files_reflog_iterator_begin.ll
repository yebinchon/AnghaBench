; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_reflog_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32, i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"reflog_iterator_begin\00", align 1
@reflog_iterator_select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_iterator* (%struct.ref_store*)* @files_reflog_iterator_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_iterator* @files_reflog_iterator_begin(%struct.ref_store* %0) #0 {
  %2 = alloca %struct.ref_iterator*, align 8
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca %struct.files_ref_store*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  %5 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %6 = load i32, i32* @REF_STORE_READ, align 4
  %7 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %7, %struct.files_ref_store** %4, align 8
  %8 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %9 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %12 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %18 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %19 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ref_iterator* @reflog_iterator_begin(%struct.ref_store* %17, i32 %20)
  store %struct.ref_iterator* %21, %struct.ref_iterator** %2, align 8
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %24 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %25 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ref_iterator* @reflog_iterator_begin(%struct.ref_store* %23, i32 %26)
  %28 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %29 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %30 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ref_iterator* @reflog_iterator_begin(%struct.ref_store* %28, i32 %31)
  %33 = load i32, i32* @reflog_iterator_select, align 4
  %34 = load %struct.files_ref_store*, %struct.files_ref_store** %4, align 8
  %35 = call %struct.ref_iterator* @merge_ref_iterator_begin(i32 0, %struct.ref_iterator* %27, %struct.ref_iterator* %32, i32 %33, %struct.files_ref_store* %34)
  store %struct.ref_iterator* %35, %struct.ref_iterator** %2, align 8
  br label %36

36:                                               ; preds = %22, %16
  %37 = load %struct.ref_iterator*, %struct.ref_iterator** %2, align 8
  ret %struct.ref_iterator* %37
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.ref_iterator* @reflog_iterator_begin(%struct.ref_store*, i32) #1

declare dso_local %struct.ref_iterator* @merge_ref_iterator_begin(i32, %struct.ref_iterator*, %struct.ref_iterator*, i32, %struct.files_ref_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
