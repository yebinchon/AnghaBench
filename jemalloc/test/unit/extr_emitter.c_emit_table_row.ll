; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_table_row.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_table_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i8*, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@emitter_justify_left = common dso_local global i32 0, align 4
@emitter_type_title = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ABC title\00", align 1
@emitter_justify_right = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"DEF title\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GHI\00", align 1
@emitter_type_int = common dso_local global i8* null, align 8
@emitter_type_bool = common dso_local global i8* null, align 8
@emitter_type_string = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"a string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ghi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_table_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_table_row(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @emitter_begin(i32* %7)
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %10 = load i32, i32* @emitter_justify_left, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i8* inttoptr (i64 10 to i8*), i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  %13 = load i8*, i8** @emitter_type_title, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %18 = bitcast %struct.TYPE_6__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 6
  %20 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 7
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 8
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %25 = load i32, i32* @emitter_justify_right, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i8* inttoptr (i64 15 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %28 = load i8*, i8** @emitter_type_title, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  %33 = bitcast %struct.TYPE_6__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 8, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  %35 = bitcast %struct.TYPE_5__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 4, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  store i8* null, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 8
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %40 = load i32, i32* @emitter_justify_right, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* inttoptr (i64 5 to i8*), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %43 = load i8*, i8** @emitter_type_title, align 8
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i8* null, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  %48 = bitcast %struct.TYPE_6__* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 8, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %50 = bitcast %struct.TYPE_5__* %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %50, i8 0, i64 4, i1 false)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  store i8* null, i8** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  %54 = call i32 @emitter_row_init(i32* %3)
  %55 = call i32 @emitter_col_init(%struct.TYPE_7__* %4, i32* %3)
  %56 = call i32 @emitter_col_init(%struct.TYPE_7__* %5, i32* %3)
  %57 = call i32 @emitter_col_init(%struct.TYPE_7__* %6, i32* %3)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @emitter_table_row(i32* %58, i32* %3)
  %60 = load i8*, i8** @emitter_type_int, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** @emitter_type_bool, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** @emitter_type_int, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 123, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 456, i32* %68, align 8
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @emitter_table_row(i32* %69, i32* %3)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 789, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 1011, i32* %73, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @emitter_table_row(i32* %74, i32* %3)
  %76 = load i8*, i8** @emitter_type_string, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i32 0, i32* %79, align 4
  %80 = load i8*, i8** @emitter_type_title, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %82, align 8
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @emitter_table_row(i32* %83, i32* %3)
  %85 = load i32*, i32** %2, align 8
  %86 = call i32 @emitter_end(i32* %85)
  ret void
}

declare dso_local i32 @emitter_begin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @emitter_row_init(i32*) #1

declare dso_local i32 @emitter_col_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @emitter_table_row(i32*, i32*) #1

declare dso_local i32 @emitter_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
