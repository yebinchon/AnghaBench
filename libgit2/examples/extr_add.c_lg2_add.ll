; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_add.c_lg2_add.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_add.c_lg2_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.print_payload = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not open repository index\00", align 1
@VERBOSE = common dso_local global i32 0, align 4
@SKIP = common dso_local global i32 0, align 4
@print_matched_cb = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_add(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.print_payload, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = bitcast %struct.print_payload* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @parse_opts(i32* %10, i32* %11, i32 %15, i8** %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i8**, i8*** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = call i32 @init_array(%struct.TYPE_5__* %9, i32 %20, i8** %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_repository_index(i32** %8, i32* %26)
  %28 = call i32 @check_lg2(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* null)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @VERBOSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SKIP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %3
  store i32* @print_matched_cb, i32** %7, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.print_payload, %struct.print_payload* %12, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds %struct.print_payload, %struct.print_payload* %12, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @UPDATE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @git_index_update_all(i32* %49, %struct.TYPE_5__* %9, i32* %50, %struct.print_payload* %12)
  br label %56

52:                                               ; preds = %39
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @git_index_add_all(i32* %53, %struct.TYPE_5__* %9, i32 0, i32* %54, %struct.print_payload* %12)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @git_index_write(i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @git_index_free(i32* %59)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_opts(i32*, i32*, i32, i8**) #2

declare dso_local i32 @init_array(%struct.TYPE_5__*, i32, i8**) #2

declare dso_local i32 @check_lg2(i32, i8*, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_update_all(i32*, %struct.TYPE_5__*, i32*, %struct.print_payload*) #2

declare dso_local i32 @git_index_add_all(i32*, %struct.TYPE_5__*, i32, i32*, %struct.print_payload*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
