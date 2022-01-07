; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32* }
%struct.ref_store = type { i32 }
%struct.packed_ref_store = type { i32 }
%struct.snapshot = type { i8*, i8* }
%struct.packed_ref_iterator = type { i8*, i8*, i32, i32, %struct.ref_iterator, i32, %struct.snapshot* }

@REF_STORE_READ = common dso_local global i32 0, align 4
@DO_FOR_EACH_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ref_iterator_begin\00", align 1
@packed_ref_iterator_vtable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_iterator* (%struct.ref_store*, i8*, i32)* @packed_ref_iterator_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_iterator* @packed_ref_iterator_begin(%struct.ref_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_iterator*, align 8
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.packed_ref_store*, align 8
  %9 = alloca %struct.snapshot*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.packed_ref_iterator*, align 8
  %12 = alloca %struct.ref_iterator*, align 8
  %13 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @REF_STORE_READ, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
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
  %24 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %26, %struct.packed_ref_store** %8, align 8
  %27 = load %struct.packed_ref_store*, %struct.packed_ref_store** %8, align 8
  %28 = call %struct.snapshot* @get_snapshot(%struct.packed_ref_store* %27)
  store %struct.snapshot* %28, %struct.snapshot** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @find_reference_location(%struct.snapshot* %37, i8* %38, i32 0)
  store i8* %39, i8** %10, align 8
  br label %44

40:                                               ; preds = %31, %23
  %41 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %42 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %47 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call %struct.ref_iterator* (...) @empty_ref_iterator_begin()
  store %struct.ref_iterator* %51, %struct.ref_iterator** %4, align 8
  br label %95

52:                                               ; preds = %44
  %53 = call %struct.packed_ref_iterator* @xcalloc(i32 1, i32 48)
  store %struct.packed_ref_iterator* %53, %struct.packed_ref_iterator** %11, align 8
  %54 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %55 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %54, i32 0, i32 4
  store %struct.ref_iterator* %55, %struct.ref_iterator** %12, align 8
  %56 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  %57 = call i32 @base_ref_iterator_init(%struct.ref_iterator* %56, i32* @packed_ref_iterator_vtable, i32 1)
  %58 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %59 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %60 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %59, i32 0, i32 6
  store %struct.snapshot* %58, %struct.snapshot** %60, align 8
  %61 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %62 = call i32 @acquire_snapshot(%struct.snapshot* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %65 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.snapshot*, %struct.snapshot** %9, align 8
  %67 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %70 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %72 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %71, i32 0, i32 5
  %73 = call i32 @strbuf_init(i32* %72, i32 0)
  %74 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %75 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %74, i32 0, i32 3
  %76 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %77 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.ref_iterator, %struct.ref_iterator* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %11, align 8
  %81 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %52
  %85 = load i8*, i8** %6, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call %struct.ref_iterator* @prefix_ref_iterator_begin(%struct.ref_iterator* %90, i8* %91, i32 0)
  store %struct.ref_iterator* %92, %struct.ref_iterator** %12, align 8
  br label %93

93:                                               ; preds = %89, %84, %52
  %94 = load %struct.ref_iterator*, %struct.ref_iterator** %12, align 8
  store %struct.ref_iterator* %94, %struct.ref_iterator** %4, align 8
  br label %95

95:                                               ; preds = %93, %50
  %96 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  ret %struct.ref_iterator* %96
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local %struct.snapshot* @get_snapshot(%struct.packed_ref_store*) #1

declare dso_local i8* @find_reference_location(%struct.snapshot*, i8*, i32) #1

declare dso_local %struct.ref_iterator* @empty_ref_iterator_begin(...) #1

declare dso_local %struct.packed_ref_iterator* @xcalloc(i32, i32) #1

declare dso_local i32 @base_ref_iterator_init(%struct.ref_iterator*, i32*, i32) #1

declare dso_local i32 @acquire_snapshot(%struct.snapshot*) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local %struct.ref_iterator* @prefix_ref_iterator_begin(%struct.ref_iterator*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
