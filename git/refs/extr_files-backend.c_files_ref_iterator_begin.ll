; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.files_ref_iterator = type { i32, %struct.ref_iterator*, %struct.ref_iterator }

@REF_STORE_READ = common dso_local global i32 0, align 4
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ref_iterator_begin\00", align 1
@files_ref_iterator_vtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_iterator* (%struct.ref_store*, i8*, i32)* @files_ref_iterator_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_iterator* @files_ref_iterator_begin(%struct.ref_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.files_ref_store*, align 8
  %8 = alloca %struct.ref_iterator*, align 8
  %9 = alloca %struct.ref_iterator*, align 8
  %10 = alloca %struct.ref_iterator*, align 8
  %11 = alloca %struct.files_ref_iterator*, align 8
  %12 = alloca %struct.ref_iterator*, align 8
  %13 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @REF_STORE_READ, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @REF_STORE_ODB, align 4
  %21 = load i32, i32* %13, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %26, %struct.files_ref_store** %7, align 8
  %27 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %28 = call i32 @get_loose_ref_cache(%struct.files_ref_store* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct.ref_iterator* @cache_ref_iterator_begin(i32 %28, i8* %29, i32 1)
  store %struct.ref_iterator* %30, %struct.ref_iterator** %8, align 8
  %31 = load %struct.files_ref_store*, %struct.files_ref_store** %7, align 8
  %32 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @DO_FOR_EACH_INCLUDE_BROKEN, align 4
  %36 = call %struct.ref_iterator* @refs_ref_iterator_begin(i32 %33, i8* %34, i32 0, i32 %35)
  store %struct.ref_iterator* %36, %struct.ref_iterator** %9, align 8
  %37 = load %struct.ref_iterator*, %struct.ref_iterator** %8, align 8
  %38 = load %struct.ref_iterator*, %struct.ref_iterator** %9, align 8
  %39 = call %struct.ref_iterator* @overlay_ref_iterator_begin(%struct.ref_iterator* %37, %struct.ref_iterator* %38)
  store %struct.ref_iterator* %39, %struct.ref_iterator** %10, align 8
  %40 = call %struct.files_ref_iterator* @xcalloc(i32 1, i32 24)
  store %struct.files_ref_iterator* %40, %struct.files_ref_iterator** %11, align 8
  %41 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %11, align 8
  %42 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %41, i32 0, i32 2
  store %struct.ref_iterator* %42, %struct.ref_iterator** %12, align 8
  %43 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  %44 = load %struct.ref_iterator*, %struct.ref_iterator** %10, align 8
  %45 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @base_ref_iterator_init(%struct.ref_iterator* %43, i32* @files_ref_iterator_vtable, i32 %46)
  %48 = load %struct.ref_iterator*, %struct.ref_iterator** %10, align 8
  %49 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %11, align 8
  %50 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %49, i32 0, i32 1
  store %struct.ref_iterator* %48, %struct.ref_iterator** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.files_ref_iterator*, %struct.files_ref_iterator** %11, align 8
  %53 = getelementptr inbounds %struct.files_ref_iterator, %struct.files_ref_iterator* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  ret %struct.ref_iterator* %54
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local %struct.ref_iterator* @cache_ref_iterator_begin(i32, i8*, i32) #1

declare dso_local i32 @get_loose_ref_cache(%struct.files_ref_store*) #1

declare dso_local %struct.ref_iterator* @refs_ref_iterator_begin(i32, i8*, i32, i32) #1

declare dso_local %struct.ref_iterator* @overlay_ref_iterator_begin(%struct.ref_iterator*, %struct.ref_iterator*) #1

declare dso_local %struct.files_ref_iterator* @xcalloc(i32, i32) #1

declare dso_local i32 @base_ref_iterator_init(%struct.ref_iterator*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
